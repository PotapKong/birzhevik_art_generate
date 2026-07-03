param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$Brand,

    [Parameter(Position = 1)]
    [ValidateSet("default", "mono", "color", "dark", "light")]
    [string]$Variant = "default"
)

$ErrorActionPreference = "Stop"

$skillDir = Split-Path -Parent $PSScriptRoot
$cacheDir = Join-Path $skillDir "_cache\company-logos"
$remoteBase = "https://raw.githubusercontent.com/glincker/thesvg/main/public/icons"
$treeApi = "https://api.github.com/repos/glincker/thesvg/git/trees/main?recursive=1"
$brandListCache = Join-Path $cacheDir ".brand-list.txt"
$ttlHours = 24

New-Item -ItemType Directory -Force -Path $cacheDir | Out-Null

function Normalize-Brand([string]$value) {
    $n = $value.Trim().ToLowerInvariant()
    $n = $n -replace "[\s_]+", "-"
    $n = $n -replace "\.", ""
    $n = $n -replace "[^a-z0-9-]", ""
    $n = $n -replace "-+", "-"
    return $n.Trim("-")
}

function Try-Download([string]$slug, [string]$variant) {
    $target = Join-Path $cacheDir "$slug-$variant.svg"
    if ((Test-Path -LiteralPath $target) -and ((Get-Item -LiteralPath $target).Length -gt 100)) {
        return $target
    }

    $tmp = "$target.tmp"
    $url = "$remoteBase/$slug/$variant.svg"
    try {
        Invoke-WebRequest -Uri $url -OutFile $tmp -UseBasicParsing -Headers @{ "User-Agent" = "birzhevik-art-generator" } | Out-Null
        if ((Test-Path -LiteralPath $tmp) -and ((Get-Item -LiteralPath $tmp).Length -gt 100)) {
            Move-Item -LiteralPath $tmp -Destination $target -Force
            return $target
        }
    }
    catch {
        # Missing variants are normal in thesvg; caller decides whether to fall back.
    }
    finally {
        if (Test-Path -LiteralPath $tmp) {
            Remove-Item -LiteralPath $tmp -Force
        }
    }

    return $null
}

function Refresh-BrandListIfNeeded {
    $refresh = $true
    if (Test-Path -LiteralPath $brandListCache) {
        $age = (Get-Date) - (Get-Item -LiteralPath $brandListCache).LastWriteTime
        $refresh = $age.TotalHours -gt $ttlHours
    }

    if (-not $refresh -and (Get-Item -LiteralPath $brandListCache).Length -gt 0) {
        return
    }

    Write-Error "[find-company-logo] refreshing brand list from glincker/thesvg..." -ErrorAction Continue
    $json = Invoke-RestMethod -Uri $treeApi -Headers @{ "User-Agent" = "birzhevik-art-generator" }
    $brands = New-Object System.Collections.Generic.HashSet[string]
    foreach ($item in $json.tree) {
        if ($item.path -match "^public/icons/([^/]+)/") {
            [void]$brands.Add($Matches[1])
        }
    }

    $brands | Sort-Object | Set-Content -LiteralPath $brandListCache -Encoding UTF8
}

$aliases = @{
    "telegram" = "telegram"
    "youtube" = "youtube"
    "moex" = "moex"
    "moscow-exchange" = "moex"
    "tradingview" = "tradingview"
    "tinkoff" = "tinkoff"
    "t-bank" = "tinkoff"
    "sber" = "sberbank"
    "sberbank" = "sberbank"
    "vk" = "vk"
    "x" = "x-formerly-twitter"
    "twitter" = "twitter"
}

$norm = Normalize-Brand $Brand
if ([string]::IsNullOrWhiteSpace($norm)) {
    Write-Error "usage: find-company-logo.ps1 <brand-name> [default|mono|color|dark|light]"
    exit 2
}

$candidateSlugs = New-Object System.Collections.Generic.List[string]
if ($aliases.ContainsKey($norm)) {
    $candidateSlugs.Add($aliases[$norm])
}
$candidateSlugs.Add($norm)

foreach ($slug in $candidateSlugs | Select-Object -Unique) {
    $hit = Try-Download $slug $Variant
    if ($hit) {
        Resolve-Path -LiteralPath $hit | Select-Object -ExpandProperty Path
        exit 0
    }

    if ($Variant -ne "default") {
        $fallback = Try-Download $slug "default"
        if ($fallback) {
            Write-Error "[find-company-logo] '$Variant' variant missing for '$slug'; using default.svg" -ErrorAction Continue
            Resolve-Path -LiteralPath $fallback | Select-Object -ExpandProperty Path
            exit 0
        }
    }
}

Refresh-BrandListIfNeeded
$brands = Get-Content -LiteralPath $brandListCache | Where-Object { $_ }

$matched = @()
if ($brands -contains $norm) {
    $matched = @($norm)
}
elseif ($norm.Length -ge 4) {
    $matched = $brands |
        Where-Object { $_ -like "$norm*" -or $_ -like "*-$norm" -or $_ -like "*$norm*" } |
        Sort-Object @{ Expression = { [math]::Abs($_.Length - $norm.Length) } }, Length |
        Select-Object -First 5
}

foreach ($slug in $matched) {
    $hit = Try-Download $slug $Variant
    if ($hit) {
        Resolve-Path -LiteralPath $hit | Select-Object -ExpandProperty Path
        exit 0
    }

    if ($Variant -ne "default") {
        $fallback = Try-Download $slug "default"
        if ($fallback) {
            Write-Error "[find-company-logo] '$Variant' variant missing for '$slug'; using default.svg" -ErrorAction Continue
            Resolve-Path -LiteralPath $fallback | Select-Object -ExpandProperty Path
            exit 0
        }
    }
}

Write-Error "[find-company-logo] no SVG logo found for '$Brand' (normalized: '$norm'). Candidates: $($matched -join ', ')"
exit 1

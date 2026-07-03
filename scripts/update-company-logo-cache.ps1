param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$Brands
)

$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$finder = Join-Path $scriptDir "find-company-logo.ps1"
$skillDir = Split-Path -Parent $scriptDir
$cacheDir = Join-Path $skillDir "_cache\company-logos"

if (-not (Test-Path -LiteralPath $finder)) {
    Write-Error "find-company-logo.ps1 not found: $finder"
    exit 2
}

if (-not $Brands -or $Brands.Count -eq 0) {
    if (-not (Test-Path -LiteralPath $cacheDir)) {
        Write-Error "cache is empty; pass brand names, for example: update-company-logo-cache.ps1 telegram youtube moex"
        exit 1
    }

    $Brands = Get-ChildItem -LiteralPath $cacheDir -Filter "*.svg" |
        ForEach-Object { $_.BaseName -replace "-(default|mono|color|dark|light)$", "" } |
        Sort-Object -Unique
}

$ok = 0
$fail = 0
foreach ($brand in $Brands) {
    foreach ($variant in @("default", "mono")) {
        try {
            $path = & $finder $brand $variant 2>$null
            if ($LASTEXITCODE -eq 0 -and $path) {
                Write-Host "ok: $brand/$variant -> $path"
                $ok += 1
            }
            else {
                $fail += 1
            }
        }
        catch {
            $fail += 1
        }
    }
}

Write-Host "done: ok=$ok fail=$fail cache=$cacheDir"

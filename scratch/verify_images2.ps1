$html = Get-Content -Path "C:\Users\vh142\.gemini\antigravity\scratch\maxi-calhas\index.html" -Raw
$images = Select-String -InputObject $html -Pattern 'images/[a-zA-Z0-9_\-]+\.(png|jpg|jpeg|svg|webp)' -AllMatches
foreach ($m in $images.Matches) {
    $rel = $m.Value
    $full = "C:\Users\vh142\.gemini\antigravity\scratch\maxi-calhas\" + $rel.Replace('/', '\')
    $test = Test-Path $full
    Write-Host "$rel -> $test"
}

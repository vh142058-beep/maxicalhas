$html = [System.IO.File]::ReadAllText('C:\Users\vh142\.gemini\antigravity\scratch\maxi-calhas\index.html')
$regex = [regex]'(?:src|href)="\./images/([^"]+)"'
$matches = $regex.Matches($html)
foreach ($m in $matches) {
    $filename = $m.Groups[1].Value
    $fullPath = "C:\Users\vh142\.gemini\antigravity\scratch\maxi-calhas\images\$filename"
    $exists = Test-Path $fullPath
    Write-Host "$filename -> Exists: $exists"
}

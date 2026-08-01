$path = "C:\Users\vh142\.gemini\antigravity\scratch\maxi-calhas\index.html"
$content = [System.IO.File]::ReadAllText($path)
$newContent = $content.Replace('src="images/', 'src="./images/')
[System.IO.File]::WriteAllText($path, $newContent, [System.Text.Encoding]::UTF8)
Write-Host "Replaced image src attributes successfully!"

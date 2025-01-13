$link = "https://github.com/PandaLofyfc/Lofycli/releases/latest/download/lofycli.exe"

$outfile = "$env:TEMP\lofycli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"

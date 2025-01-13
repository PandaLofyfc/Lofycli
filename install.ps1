$link = "https://github.com/PandaLofyfc/Lofycli/releases/latest/download/LofycliCli.exe"

$outfile = "$env:TEMP\LofycliCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"

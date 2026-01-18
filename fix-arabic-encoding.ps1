
# Fix Arabic text encoding corruption across all affected files
$files = @(
    "services.html",
    "subsidiaries.html", 
    "portfolio.html",
    "investments.html",
    "igm-usa.html",
    "igm-canada.html",
    "global-branches.html",
    "project-809-w41st.html",
    "project-burrard-street.html",
    "project-fairview-foster.html",
    "project-lee-industrial.html",
    "project-no3-road.html",
    "project-rochester-madore.html"
)

$basePath = "C:\Users\20183105\.gemini\antigravity\scratch\IGM_Landing_Page"
$target = "???????"
$replacement = "العربية"

foreach ($file in $files) {
    $filePath = Join-Path $basePath $file
    if (Test-Path $filePath) {
        $content = Get-Content $filePath -Raw -Encoding UTF8
        $newContent = $content -replace [regex]::Escape($target), $replacement
        Set-Content $filePath -Value $newContent -Encoding UTF8 -NoNewline
        Write-Host "Fixed: $file"
    } else {
        Write-Host "Skipped (not found): $file"
    }
}

Write-Host "`nAll files processed successfully!"

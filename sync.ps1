Set-Location "C:\Users\natha\AgenticOS"

git add .

$status = git status --porcelain
if ($status) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
    git commit -m "auto-sync: $timestamp"
    git push origin main
}

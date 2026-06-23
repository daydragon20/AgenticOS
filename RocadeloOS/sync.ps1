$RocadeloPath = "C:\Users\natha\Documents\RocadeloOS"
Set-Location $RocadeloPath
mcp-local-rag --db-path "$RocadeloPath\memory\rag-db" ingest "$RocadeloPath\wiki" 2>$null
git add .
$status = git status --porcelain
if ($status) { $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"; git commit -m "auto-sync: $timestamp"; git push origin main }
```

$AgenticPath = "C:\Users\natha\Downloads\AgenticOS-main\AgenticOS-main"
Set-Location $AgenticPath

# Re-index wiki in RAG database (zodat nieuwe wiki-bestanden doorzoekbaar zijn)
mcp-local-rag --db-path "$AgenticPath\memory\rag-db" ingest "$AgenticPath\wiki" 2>$null

git add .

$status = git status --porcelain
if ($status) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
    git commit -m "auto-sync: $timestamp"
    git push origin main
}

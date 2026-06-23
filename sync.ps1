# AgenticOS bidirectionele auto-sync (clone-agnostisch: synct de map waar dit script staat)
# Houdt lokale map <-> Obsidian <-> GitHub altijd gelijk. Veilig: bij conflict GEEN data-verlies.
$ErrorActionPreference = "Continue"
$Repo = $PSScriptRoot
if (-not $Repo) { $Repo = Split-Path -Parent $MyInvocation.MyCommand.Path }
Set-Location $Repo
$log = Join-Path $Repo "sync.log"
function Log($m) { "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')  $m" | Add-Content -Path $log }

# 1) Eerst binnenhalen wat andere devices/clones pushten
git pull --rebase --autostash origin main 2>&1 | Out-Null
if ($LASTEXITCODE -ne 0) {
    git rebase --abort 2>$null
    Log "CONFLICT bij pull/rebase - push overgeslagen, niets verloren. Los handmatig op."
    exit 1
}

# 2) RAG herindexeren zodat je modellen de nieuwste wiki doorzoeken (indien geinstalleerd)
if (Get-Command mcp-local-rag -ErrorAction SilentlyContinue) {
    mcp-local-rag --db-path "$Repo\memory\rag-db" ingest "$Repo\wiki" 2>$null
    if (Test-Path "$Repo\RocadeloOS\wiki") { mcp-local-rag --db-path "$Repo\memory\rag-db" ingest "$Repo\RocadeloOS\wiki" 2>$null }
}

# 3) Lokale wijzigingen wegschrijven naar GitHub
git add -A
if (git status --porcelain) {
    git commit -q -m ("auto-sync: " + (Get-Date -Format "yyyy-MM-dd HH:mm")) 2>&1 | Out-Null
    git push origin main 2>&1 | Out-Null
    if ($LASTEXITCODE -eq 0) { Log "auto-sync push OK" } else { Log "push mislukt (auth/conflict)" }
} else {
    Log "geen wijzigingen"
}

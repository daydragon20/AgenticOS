# Toegang voor AI's tot de privé-vault (zonder je persoonlijke login)

Doel: de repo staat **privé**, maar AI's/automations kunnen hem tóch **lezen** via een aparte, **intrekbare, read-only** sleutel. Je deelt nooit je accountwachtwoord; je deelt een sleutel die je elk moment kunt killen.

## Optie A — Fine-grained token (makkelijkst, werkt overal)
Een token dat handelt namens je account, maar **beperkt**: alleen deze repo, alleen lezen.

1. Ga naar **https://github.com/settings/tokens?type=beta** → **Generate new token (fine-grained)**.
2. **Resource owner:** daydragon20 · **Repository access:** *Only select repositories* → `agenticOS`.
3. **Permissions → Repository → Contents: Read-only** (+ Metadata: Read-only, staat automatisch aan).
4. **Expiration:** bv. 90 dagen.
5. Generate → kopieer de `github_pat_…`-sleutel **één keer**.
6. Zet hem in `.env` als `GITHUB_READ_TOKEN=` (NOOIT committen — `.env` staat in `.gitignore`).

**Een AI/tool/automation leest de repo dan zo:**

- **Klonen met token (één regel):**
  ```
  git clone https://x-access-token:GITHUB_READ_TOKEN@github.com/daydragon20/agenticOS.git
  ```
- **Eén bestand via de API:**
  ```
  curl -H "Authorization: Bearer GITHUB_READ_TOKEN" \
       -H "Accept: application/vnd.github.raw" \
       https://api.github.com/repos/daydragon20/agenticOS/contents/RocadeloOS/wiki/rocadelo-overzicht.md
  ```
- **GitHub MCP-server** (Claude Desktop/Code, n8n GitHub-node, …): plak het token in de config van die tool. Dan kan die AI de privé-repo lezen zonder jouw login.

## Optie B — Deploy key (puurst "niet mijn account")
Een **read-only SSH-sleutel die aan de repo hangt**, niet aan jouw identiteit. Geef de private key aan de tool.

1. Genereer een sleutelpaar:  `ssh-keygen -t ed25519 -f rocadelo-deploy -N ""`
2. GitHub → repo **Settings → Deploy keys → Add deploy key** → plak de inhoud van `rocadelo-deploy.pub` → laat *Allow write access* **uit**.
3. Geef het private bestand `rocadelo-deploy` aan de AI/tool (in z'n secret store, niet in de repo).
4. Klonen:  `GIT_SSH_COMMAND="ssh -i rocadelo-deploy" git clone git@github.com:daydragon20/agenticOS.git`

## Regels (belangrijk)
- **Read-only + alleen deze repo + vervaldatum.** Least privilege.
- **Nooit een token/sleutel committen** of in de chat plakken — alleen in `.env` / de secret-store van de tool.
- **Intrekbaar:** token weg via *Revoke*, deploy key weg via *Delete*. Bij twijfel: rollen.
- Een token geeft toegang tot de **hele** privé-repo (persoonlijk + business). Wil je business apart afschermen, gebruik dan een aparte privé-repo voor RocadeloOS met een eigen token.
- **Lokaal** (Claude Code/Desktop op deze pc) heb je geen token nodig — die lezen de map rechtstreeks. Het token is voor AI's/automations die via GitHub binnenkomen.

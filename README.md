# QuorumX Ω: Autonomous Raft KV Fabric
Designed and developed by **NIKHIL CHARY SRIRAMOJU**

- `index.html`: live demo (Raft sim, Groq assistant, CNN heatmap, agent, chaos suite, RBAC tenants, Merkle audit)
- `docker-compose.yml`, `Dockerfile`, `prometheus/`, `proto/`, `docs/`: deployment scaffold for the real Go backend (next phase)
- `.github/workflows/pages.yml`: auto-deploys to GitHub Pages

## Deploy
1. Create repo `quorumx` on GitHub, upload all files (including `.github`), push to `main`.
2. Settings > Pages > Source: **GitHub Actions**. Wait for the green check in Actions.
3. Open `https://<username>.github.io/quorumx/`.
4. Get a free key at console.groq.com, paste it into the assistant. It is stored only in your browser.

# Architecture
```
 Client/WASM SDK --gRPC/QUIC+mTLS--> [Raft n1..n5] --WAL/LSM+AES-256--> disk
                                        |  /metrics, OTel
   Groq Ops Assistant <--MCP tools--> Agent loop <-- CNN (heatmap) <-- Prometheus
                                        |-- RAG (Qdrant: incidents, post-mortems)
```
Agent loop: observe, CNN classify, RAG retrieve, Groq plan, validate (quorum-safe), act via MCP.

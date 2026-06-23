Generator-evaluator (Anthropic-principe), Director orkestreert 6 agents.
- **Director:** quality gate <32/40 = redo; na 3 afwijzingen → mens; ~30 min/dag.
- **Signal Detector:** 500–1.000 profielen/dag uit 4 bronnen; verrijkt; geen score.
- **Lead Scorer:** 15 intent-signalen; 0–100; top 80+; evalueert Signal Detector.
- **Message Writer:** 3 DM-varianten/lead; max 75 woorden; conversationeel.
- **Reply Handler:** classificeert (positief/neutraal/negatief/bezwaar); evalueert Message Writer.
- **Meeting Qualifier:** CHAMP-framework.
- **Performance Analyst:** wekelijks; top 3 verbeteringen; optimaliseert agents.
Bouw: elke agent = Python die Claude API aanroept; Console → "Get code"; Claude Code bouwt; n8n triggert. Backend: rate limits, retries/queues, webhooks (30s→200), SDK's. Datastroom: Signal→Scorer(80+)→Writer(3)→Unipile→Reply Handler→Meeting Qualifier(CHAMP)→mens.

Business in één alinea: AI-gestuurd LinkedIn outreach dat leads automatisch vindt/scoort/benadert/kwalificeert; geen software maar embedded performance partner op no-cure-no-pay (~25% placement fee); via eigen gewarmde accounts (klant koppelt nooit zijn profiel).
Wie: Nathan Charita (technical founder, NL, kort/praktisch); Matias Rodriguez (31, commercial lead, Rocadelo HR BE); oorsprong brunch Thomas Guenter (Forbes 30U30); Thiel: Nathan = fellow, Matias = partner.
Twee fasen: intern bij Rocadelo HR bewijzen → commercialiseren BE/EU.
Architectuur: 7 agents (Director quality gate <32/40 redo, 3× → mens; Signal Detector → Lead Scorer → Message Writer → Reply Handler → Meeting Qualifier → Performance Analyst).
Stack + bouw: agents = Python die Claude API aanroept; Console testlab → "Get code"; Claude Code bouwt .py; n8n triggert.
Gedragsregels: één stap tegelijk; maak bestanden/code zelf; bij onduidelijkheid eerst één vraag; praktisch, mede-builder; verzin nooit bron/cijfer/klant.
Geheugen verplicht: projects/contacts/log + wiki + canvas-knoop. Elk gesprek toevoegen (capture.md). Sessie-einde: commit + push + merge PR naar main; sync.ps1 herindexeert RAG.

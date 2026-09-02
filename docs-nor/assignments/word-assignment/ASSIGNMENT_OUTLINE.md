# Oppgaveoversikt

## IT-infrastrukturdesign og implementering

Denne oppgaven dekker designet og implementeringen av en komplett IT-infrastrukturløsning, inkorporering av bedriftssystemer, Active Directory, sikkerhetskontroller og driftsstyring.

---

## 1. NETTVERKSDESIGN

### 1.1 Nettverksinfrastruktur
- Overordnet nettverksarkitektur
- Nettverkstopologi (LAN/WAN)
- Segmenteringsstrategi
- Adresseringsplan (IP-planlegging)

### 1.2 Designprinsippper
- Skalerbarhhet og redundans
- Ytelseskrav
- Tilgjengelighet og failover
- Vekstplanlegging

### 1.3 Tilkobling
- WAN-tilkobling
- Internett-tilkobling
- Fjerntilgangslløsninger
- Sikkerhetstilkopling

---

## 2. HARDWARE

### 2.1 Serverhardware
- Prosessorspesifikasjoner
- Minekrav
- Lagringskonfigurasjon
- Kraft og kjøling

### 2.2 Klienthardware
- Skrivebordsspesifikasjoner
- Bærbarkrav
- Perifer
- Formfaktorer

### 2.3 Nettverkshardware
- Rutere og svitsjer
- Brannmurer
- Lastbalanserer
- Nettverksapparater

---

## 3. ORGANISASJONSENHETER (OUs)

### 3.1 Active Directory-struktur
- Skog- og domenesdesign
- OU-hierarki
- OU-navnekonvensjoner
- Delegering av administrasjon

### 3.2 OU-organisasjon
- Bedriftsenhets-OUer
- Geografiske OUer
- Funksjonsbaserte OUer
- Administrasjonspolicys

### 3.3 Arv og applikasjon
- GroupPolicy-arv
- Filtrering og omfang
- Unntaksbehandling
- OU-nivå policys

---

## 4. GRUPPER

### 4.1 Gruppestrategi
- Gruppetyper (sikkerhet, distribusjon)
- Gruppescope (lokal, global, universal)
- Gruppenavn konvensjoner
- Gruppeeierskap

### 4.2 Gruppestyring
- Gruppe opprettelsesprosess
- Medlemskapsadministrasjon
- Delegering av gruppestyring
- Tilgangskontroll via grupper

### 4.3 GroupPolicy-applikasjon
- GroupPolicy-objekter (GPOer)
- Gruppemedlemsskap for policy-målretting
- Filtrering av gruppepolicy
- Feilsøking av gruppemedlemsskap

---

## 5. BRUKERE OG KONTOER

### 5.1 Brukerkontodesign
- Kontonavn konvensjoner
- Kontotyper (bruker, tjeneste, datamaskiner)
- Kontolivssyklus
- Kontomallietter

### 5.2 Brukerstyring
- Kontoopprettelse og provisjonering
- Kontougenskaper og attributter
- Kontoen-opphør
- Brukerprofilstyring

### 5.3 Kontodelegering
- Delegert kontostyring
- Delegert passordtilbakestilling
- Amministratva roller
- Rollebasert tilgang

---

## 6. LAGRING

### 6.1 Lagringsarkitektur
- Filserverdesign
- Lagringskapasitetsplanlegging
- Lagringsredundans (RAID)
- Sikkerhetskopieringslagring

### 6.2 Fildeling og tilgang
- Deling opprettelse og styring
- NTFS-tillatelser
- Delingstillatelser
- Tilgangskontrollister (ACLer)

### 6.3 Datavern
- Sikkerhetstrategi
- Gjenoppretting fra katastrofe
- Dataoppbevaring
- Arkivretningslinjer

---

## 7. RETNINGSLINJER

### 7.1 Passordretningslinjer
- Passordkompleksitetskrav
- Passordlengdekrav
- Passordhistorikk
- Passordutløp
- Kontoal låsing retningslinjer

### 7.2 Sikkerhetsretningslinjer
- Kontoretningslinjer
- Lokale sikkerhetsretningslinjer
- GroupPolicy-sikkerhetsinstrumentinger
- Revisjonsretningslinjer
- Hardening retningslinjer

### 7.3 Overholdelsesretningslinjer
- Krav til lovgivning
- Datavernretningslinjer
- Tilgangskontrollretningslinjer
- Endringsstyringsretningslinjer

---

## 8. SIKKERHET

### 8.1 Fysisk sikkerhet
- Datatsenterkontroll
- Serverromikkerhet
- Enhetssikkerhet
- Miljøovervåking
- Aktivasporingering

### 8.2 Programvaresikkerhet
- Antivirus og anti-malware
- Windows Defender-konfigurasjon
- Endepunktsbeskyttelse
- Oppdateringsstyring
- Applikasjonssikkerhet

### 8.3 Webbsikkerhet
- HTTPS og SSL/TLS
- Webbapplikasjonsbrannmurer
- Sikre webprotokoller
- Webtilgangspolicys
- Nettlesersikkerhet

---

## 9. LØSNING

### 9.1 Infrastrukturløsningsoversikt
- Løsningsarkitektur
- Komponentintegrasjon
- Tjenesteavhengigheter
- Skaleringsstrategi

### 9.2 Sikkerhetsintegrering
- Sikkerhetslag
- Defense-in-depth-strategi
- Overvåking og varsling
- Prosedyrer for hendelsesrespons

### 9.3 Driftsfunkjellsskap
- Automatisering og orkestrering
- Ytelsesovervåking
- Kapasitetsplanlegging
- Løpende forbedring

---

## 10. ADMINISTRASJON

### 10.1 Serverstyring
- Serverprovisjonering
- Konfigurasjonsadministrasjon
- Ytelsesovervåking
- Vedlikeholdsprosedyrer

### 10.2 Klientstyring
- Klientprovisjonering og distribusjon
- Konfigurasjonsadministrasjon
- Oppdateringsstyring
- Enhetssamsvar

### 10.3 Drift og support
- Helpdesk prosedyrer
- Billettpingssystem
- SLA-administrasjon
- Kunnskapsadministrasjon

---

## Retningslinjer

- Hvert avsnitt skal inneholde både konseptuell forståelse og praktisk implementering
- Bruk eksempler fra virkelig verden der det er aktuelt
- Koble relaterte avsnitt (f.eks. grupper og policys, brukere og kontostyring)
- Inkluder diagrammer der det er nyttig
- Gi konfigurasjonseksempler eller sjekklister
- Referanser til industribest practices
- Adresse skalerbarhhet og bedriftshensyner

## Dokumentformat

- Bruk headinghierarki for klar organisering
- Inkluder avsnittoppsummeringer
- Legg til implementeringseksempler eller scenarier
- Bruk tabeller og diagrammer for komplekse konsepter
- Referens relaterte avsnitt innen dokumentet
- Gi handlingsrettede anbefalinger

---

**Oppgavefokus:** Bedrifts-IT-infrastrukturdesign med vekt på Active Directory, Windows Server, nettverk og sikkerhetimplementering.

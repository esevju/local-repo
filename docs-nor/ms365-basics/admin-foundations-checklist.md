# Sjekkliste for grunnleggende Microsoft 365-administrasjon

Bruk denne sjekklisten til å studere rekkefølge og eierskap i vanlige administrative beslutninger i Microsoft 365. Den er et læringsverktøy, ikke en produksjonsprosedyre.

## Planlegging og kartlegging

- [ ] Beskriv organisasjonen, brukerne, lokasjonene, datatypene og kravene til overholdelse.
- [ ] Kartlegg e-post, filer, enheter, identiteter og avhengigheter før migrering.
- [ ] Velg lisens ut fra nødvendige funksjoner, ikke bare produktnavnet.
- [ ] Dokumenter hvem som eier lisenstildeling, fornyelse og avvikling av brukere.

## Identitet og tilgang

- [ ] Bruk separate administratorkontoer til privilegert arbeid.
- [ ] Aktiver sikkerhetsstandarder når de passer, eller utform og test Conditional Access-regler.
- [ ] Krev MFA for administratorer og risikoutsatte tilgangsveier.
- [ ] Test regler med rapporteringsmodus eller pilotgruppe før bred håndheving når dette er mulig.
- [ ] Definer prosesser for oppstart, rolleendring og avslutning for brukere, gjester og grupper.

## Data og samarbeid

- [ ] Bestem når innhold hører hjemme i OneDrive, SharePoint eller et Teams-tilkoblet nettsted.
- [ ] Definer standarder for intern og ekstern deling.
- [ ] Foretrekk navngitte mottakere eller autentiserte gjester ved sensitivt samarbeid.
- [ ] Gjennomgå anonyme koblinger, koblingsutløp, gjesteutløp og domenerestriksjoner.
- [ ] Dokumenter forventninger til oppbevaring, versjoner, gjenoppretting, revisjon og dataklassifisering.

## Enheter og drift

- [ ] Identifiser hvilke enheter som kan få tilgang til virksomhetsdata, og om de må administreres.
- [ ] Definer minimumskrav til oppdateringer, kryptering, skjermlås og endepunktbeskyttelse.
- [ ] Følg med på pålogginger, delingsaktivitet, skadevarevarsler og regelbrudd.
- [ ] Før endringslogg og gjennomgå administrative roller jevnlig.
- [ ] Test en responsprosess, inkludert deaktivering av konto og sikring av bevis.

## Studieoppgave

Velg en liten fiktiv organisasjon og skriv et design på én side. Forklar:

1. Hvilke brukere og grupper organisasjonen trenger.
2. Hvilket autentiseringsgrunnlag som beskytter dem.
3. Hvor avdelingsfiler lagres og hvordan ekstern deling fungerer.
4. Hvilke enheter som administreres.
5. Hvilke funksjoner som avhenger av valgt lisens.
6. Hvordan en administrator kan vise at kontrollene virker.

## Kilder

- [Beste praksis for sikring av Microsoft 365-forretningsdata](https://learn.microsoft.com/en-us/microsoft-365/admin/security-and-compliance/m365b-security-best-practices?view=o365-worldwide)
- [Oversikt over Microsoft Entra multifaktorautentisering](https://learn.microsoft.com/en-us/entra/identity/authentication/concept-mfa-howitworks)
- [Oversikt over Microsoft Entra Conditional Access](https://learn.microsoft.com/en-us/entra/identity/conditional-access/overview)
- [Oversikt over Microsoft 365 for virksomheter](https://learn.microsoft.com/en-us/microsoft-365/enterprise/microsoft-365-overview?view=o365-worldwide)
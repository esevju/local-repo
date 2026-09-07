# Tjenestekart for Microsoft 365

## Formål

Dette notatet gir nybegynnere en nyttig mental modell: Velg tjeneste ut fra arbeidet som skal gjøres, hvem som skal delta, og hvilken tilgangsgrense som kreves. Produktnavn overlapper, så eierskap og delingsmodell er viktigere enn app-ikonet.

## De viktigste tjenesteområdene

| Behov | Primær tjeneste | Typisk eierskap og grense |
| --- | --- | --- |
| Pålogging, brukere, grupper og tilgangsbeslutninger | Microsoft Entra ID | Identitet og tilgang for hele leietakeren |
| E-post, kalendere og kontakter | Exchange Online og Outlook | Personlig postboks og organisasjonens e-postflyt |
| Personlige arbeidsfiler | OneDrive for Business | En brukers arbeidsområde; deling bør være bevisst |
| Teamfiler og strukturert samarbeid | SharePoint og Teams | Team- eller nettstedseierskap; tillatelser bør følge teamet |
| Dokumenter og analyse | Word, Excel, PowerPoint og OneNote | Apper som bruker filer lagret i OneDrive eller SharePoint |
| Enheter og apper | Microsoft Intune | Administrasjon av enheter og apper, når lisens og oppsett støtter det |
| Trusselbeskyttelse og overholdelse | Microsoft Defender og Microsoft Purview | Sikkerhet, klassifisering, oppbevaring og databeskyttelse |

## En enkel beslutningsmodell

Still disse spørsmålene før du oppretter et arbeidsområde eller deler en fil:

1. **Hvem eier arbeidet?** Én person peker mot OneDrive; et varig team peker mot SharePoint eller et Teams-tilkoblet nettsted.
2. **Hvem trenger tilgang?** Bruk den minste gruppen som fungerer. Ikke gjør en fil offentlig bare fordi det er praktisk.
3. **Hvor lenge skal det eksistere?** Midlertidige prosjekter trenger eier, kontrolltidspunkt og en plan for avslutning.
4. **Hvor sensitivt er innholdet?** Følg organisasjonens klassifiserings- og delingsregler før eksternt samarbeid.
5. **Hvordan gjenopprettes eller revideres innholdet?** Avklar oppbevaring, versjonslogg, papirkurv og revisjonskrav med en administrator.

## Vanlige misforståelser

- Teams er ikke et separat filsystem. Filer i teamkanaler lagres i SharePoint; filer i chatter lagres i avsenderens OneDrive og deles med deltakerne.
- OneDrive er ikke en erstatning for et teamnettsted. Tjenesten er bygget rundt én individuell eier, også når filer deles.
- En delingskobling er et tilgangsvalg. Koblingstype, mottakere, redigering og utløp påvirker risikoen.
- Et Microsoft 365-plannavn beviser ikke alene at en funksjon er tilgjengelig. Kontroller aktuell lisens, leietakerkonfigurasjon og begrensninger.

## Kontrollspørsmål

1. Hvor lagrer du et utkast som bare du eier?
2. Hvor lagrer du en avdelingsprosedyre som skal bestå etter at en ansatt slutter?
3. Hvilken tjeneste undersøker du når pålogging skal kreve MFA fra en uadministrert enhet?
4. Hvorfor er en Teams-kanal vanligvis et bedre hjem for teamdokumenter enn én ansatts OneDrive?

## Kilder

- [Oversikt over Microsoft 365 for virksomheter](https://learn.microsoft.com/en-us/microsoft-365/enterprise/microsoft-365-overview?view=o365-worldwide)
- [Oversikt over Microsoft Entra Conditional Access](https://learn.microsoft.com/en-us/entra/identity/conditional-access/overview)
- [Microsoft-veiledning for sikkert samarbeid i Teams](https://learn.microsoft.com/en-us/microsoft-365/solutions/setup-secure-collaboration-with-teams)
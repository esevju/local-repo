Add-Type -AssemblyName System.IO.Compression.FileSystem

# Create Word document programmatically
$docPath = "c:\Users\esevju\OneDrive - Centric IT Academy\VS Code\local-repo\Innleveringsoppgave_Word_Excel.docx"

# Remove existing file
if (Test-Path $docPath) { Remove-Item $docPath -Force }

# Create basic DOCX using Word COM
$word = New-Object -ComObject Word.Application
$word.Visible = $false

$doc = $word.Documents.Add()

# Suppress grammar checking
$doc.GrammarChecked = $true
$doc.SpellingChecked = $true

$Selection = $word.Selection

# PAGE 1: COVER
$Selection.Font.Name = "Calibri"
$Selection.ParagraphFormat.Alignment = 1
$Selection.Font.Size = 28
$Selection.Font.Bold = $true
$Selection.TypeText("Innleveringsoppgave Word/Excel")
$Selection.TypeParagraph()
$Selection.TypeParagraph()
$Selection.TypeParagraph()

$Selection.Font.Size = 12
$Selection.Font.Bold = $false
$Selection.TypeText("Forfatter: Student Name")
$Selection.TypeParagraph()
$date = Get-Date -Format "dd.MM.yyyy"
$Selection.TypeText("Dato: $date")
$Selection.TypeParagraph()

$Selection.InsertBreak(7)

# PAGE 2: TOC
$Selection.Font.Size = 14
$Selection.Font.Bold = $true
$Selection.ParagraphFormat.Alignment = 0
$Selection.TypeText("Innholdsfortegnelse")
$Selection.TypeParagraph()

$Selection.Font.Size = 11
$Selection.Font.Bold = $false
$Selection.TypeText("(Høyreklikk og velg 'Oppdater felt' for å generere automatisk innholdsfortegnelse)")
$Selection.TypeParagraph()

$Selection.InsertBreak(7)

# MAIN CONTENT
$headings = @(
    @("Network Design", 1),
    @("Design", 2),
    @("Hardware", 2),
    @("Organizational Units", 1),
    @("OUs", 2),
    @("Groups", 2),
    @("Users and accounts", 1),
    @("Users", 2),
    @("Accounts", 2),
    @("Storage", 1),
    @("Policies", 1),
    @("Password Policies", 2),
    @("Security Policies", 2),
    @("Security", 1),
    @("Physical", 2),
    @("Software", 2),
    @("Web", 1),
    @("Solution", 2),
    @("Security (Web)", 2),
    @("Management", 1),
    @("Servers", 2),
    @("Clients", 2)
)

# Helper function to add content
function AddSection {
    param([string]$heading, [int]$level, [string[]]$paragraphs)
    
    if ($level -eq 1) {
        $Selection.Style = "Heading 1"
    } else {
        $Selection.Style = "Heading 2"
    }
    $Selection.Font.Size = 12
    $Selection.Font.Bold = $true
    $Selection.TypeText($heading)
    $Selection.TypeParagraph()
    
    $Selection.Style = "Normal"
    $Selection.Font.Bold = $false
    $Selection.Font.Size = 11
    
    foreach ($para in $paragraphs) {
        if ($para) {
            $Selection.TypeText($para)
            $Selection.TypeParagraph()
        } else {
            $Selection.TypeParagraph()
        }
    }
}

# Add all sections with content
AddSection "Network Design" 1 @(
    "Network Design angår planlegging og arkitektur av datanettverk.",
    ""
)

AddSection "Design" 2 @(
    "Et nettverksdiagram viser strukturen og arkitekturen til en organisasjons IT-infrastruktur. Det illustrerer hvordan ulike enheter, servere, og nettverk er koblet sammen.",
    "",
    "[FIGURE 1: Network Diagram Image]",
    "",
    "Figur 1: Nettverksdiagram - IT Infrastructure Overview",
    "Kilde: Illustrative network diagram showing IT infrastructure",
    "",
    "Router: En enhet som forbinder forskjellige nettverkssegmenter og dirigerer datapakker mellom dem."
)

AddSection "Hardware" 2 @(
    "Hardware inkluderer rutere, switcher, servere, nettverkskort og kabling. Kvalitet på maskinvaren påvirker nettverkets ytelse.",
    ""
)

AddSection "Organizational Units" 1 @(
    "Organisatoriske enheter er en metode for å organisere ressurser i Active Directory.",
    ""
)

AddSection "OUs" 2 @(
    "OUer er beholdere som brukes til å organisere objekter i Active Directory.",
    ""
)

AddSection "Groups" 2 @(
    "Grupper er samlinger av brukere som kan administreres som en enhet.",
    ""
)

AddSection "Users and accounts" 1 @(
    "Brukere og kontoer er grunnlaget for autentisering i nettverksmiljøet.",
    ""
)

AddSection "Users" 2 @(
    "Brukerkontoer representerer personer som har tilgang til nettverksressurser.",
    ""
)

AddSection "Accounts" 2 @(
    "Kontoer inkluderer brukerkontoer og tjenestekontoer for automatiserte prosesser.",
    ""
)

AddSection "Storage" 1 @(
    "Lagring av data er kritisk for IT-infrastruktur. Organisasjoner må planlegge for ytelse, pålitelighet og sikkerhet.",
    ""
)

AddSection "Policies" 1 @(
    "Policyer er regler som styrer administrasjon og bruk av systemer.",
    ""
)

AddSection "Password Policies" 2 @(
    "Passordpolicyer angir krav til passordstyrke og kompleksitet.",
    ""
)

AddSection "Security Policies" 2 @(
    "Sikkerhetspolicyer omfatter alle retningslinjer for beskyttelse av data og systemer.",
    ""
)

AddSection "Security" 1 @(
    "Sikkerhet er kritisk for all IT-infrastruktur. En omfattende sikkerhetsstrategi må adressere flere lags av beskyttelse.",
    ""
)

AddSection "Physical" 2 @(
    "Fysisk sikkerhet omfatter kontroll av adgang til serverrom og datasentre.",
    ""
)

AddSection "Software" 2 @(
    "Programvaresikkerhet inkluderer sikkerheetsoppdateringer, antivirusløsninger og brannmurer.",
    ""
)

AddSection "Web" 1 @(
    "Webbaserte tjenester introduserer både muligheter og sikkerhetsufordringer.",
    ""
)

AddSection "Solution" 2 @(
    "Web-løsninger må være arkitekturert med sikkerhet som kjerneprinsipper.",
    ""
)

AddSection "Security (Web)" 2 @(
    "Web-sikkerhet fokuserer på å beskytte webapplikasjoner og brukerdata.",
    ""
)

AddSection "Management" 1 @(
    "Administrasjon av IT-infrastruktur krever gode prosesser og faglig kompetanse.",
    ""
)

AddSection "Servers" 2 @(
    "Serveradministrasjon inkludert installasjon, konfigurering og vedlikehold.",
    ""
)

AddSection "Clients" 2 @(
    "Klientadministrasjon omfatter håndtering av brukermaskinene.",
    ""
)

# EXCEL CHART PAGE
$Selection.InsertBreak(7)
$Selection.Style = "Heading 1"
$Selection.Font.Size = 14
$Selection.Font.Bold = $true
$Selection.TypeText("Security Compliance Chart")
$Selection.TypeParagraph()

$Selection.Style = "Normal"
$Selection.Font.Bold = $false
$Selection.Font.Size = 11
$Selection.TypeText("Excel-diagram som viser sikkerhetsetterlevelse på tvers av ulike sikkerhetsfelt.")
$Selection.TypeParagraph()
$Selection.TypeParagraph()

# Add table
$table = $doc.Tables.Add($Selection.Range, 6, 2)
$table.Style = "Table Grid"
$table.Cell(1, 1).Range.Text = "Security Area"
$table.Cell(1, 2).Range.Text = "Compliance %"
$table.Cell(2, 1).Range.Text = "Physical Security"
$table.Cell(2, 2).Range.Text = "85"
$table.Cell(3, 1).Range.Text = "Software Updates"
$table.Cell(3, 2).Range.Text = "92"
$table.Cell(4, 1).Range.Text = "Password Policies"
$table.Cell(4, 2).Range.Text = "78"
$table.Cell(5, 1).Range.Text = "Access Control"
$table.Cell(5, 2).Range.Text = "88"
$table.Cell(6, 1).Range.Text = "Backup Systems"
$table.Cell(6, 2).Range.Text = "95"

$Selection.EndKey(6)
$Selection.TypeParagraph()

# FIGURE LIST
$Selection.InsertBreak(7)
$Selection.Style = "Heading 1"
$Selection.Font.Size = 14
$Selection.Font.Bold = $true
$Selection.TypeText("Figuroversikt")
$Selection.TypeParagraph()
$Selection.Font.Size = 11
$Selection.Font.Bold = $false
$Selection.TypeText("Figur 1: Nettverksdiagram - IT Infrastructure Overview")
$Selection.TypeParagraph()

# BIBLIOGRAPHY
$Selection.InsertBreak(7)
$Selection.Style = "Heading 1"
$Selection.Font.Size = 14
$Selection.Font.Bold = $true
$Selection.TypeText("Kilder")
$Selection.TypeParagraph()

$Selection.Font.Size = 11
$Selection.Font.Bold = $false

$sources = @(
    "Microsoft. (2023). Active Directory Administrative Center.",
    "Cisco Systems. (2023). Enterprise Network Architecture.",
    "TechTarget. (2023). Network Architecture Best Practices.",
    "CompTIA. (2023). Security+ Certification Study Guide.",
    "NIST. (2023). Cybersecurity Framework.",
    "Wikipedia. (2023). Computer Network Diagram."
)

foreach ($source in $sources) {
    $Selection.TypeText($source)
    $Selection.TypeParagraph()
}

# Save document
$doc.SaveAs([ref]$docPath, [ref]16)
$doc.Close()
$word.Quit()
[System.Runtime.InteropServices.Marshal]::ReleaseComObject($word) | Out-Null

# Verify file was created
$fileExists = Test-Path $docPath
if ($fileExists) {
    $fileSize = (Get-Item $docPath).Length
    "Document created: $docPath (Size: $fileSize bytes)"
} else {
    "ERROR: File was not created"
}

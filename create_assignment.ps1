# Create Word Document for Assignment
$word = New-Object -ComObject Word.Application
$word.Visible = $true

# Create a new document
$doc = $word.Documents.Add()

# Set up margins
$margins = $doc.Sections(1)
$margins.TopMargin = 72      # 1 inch
$margins.BottomMargin = 72   # 1 inch
$margins.LeftMargin = 72     # 1 inch
$margins.RightMargin = 72    # 1 inch

# ===============================
# PAGE 1: COVER PAGE
# ===============================
$range = $doc.Content

# Add cover page title
$para = $range.Paragraphs.Add()
$para.Alignment = 1  # Center alignment
$run = $para.Range.Text = "Innleveringsoppgave Word/Excel"
$para.Range.Font.Size = 28
$para.Range.Font.Bold = $true

# Add spacing
$para = $range.Paragraphs.Add()
$para.Range.Text = ""

$para = $range.Paragraphs.Add()
$para.Range.Text = ""

# Add author info
$para = $range.Paragraphs.Add()
$para.Alignment = 1  # Center
$run = $para.Range.Text = "Forfatter: Student Name"
$para.Range.Font.Size = 12

# Add date
$para = $range.Paragraphs.Add()
$para.Alignment = 1  # Center
$para.Range.Text = "Dato: " + (Get-Date -Format "dd.MM.yyyy")
$para.Range.Font.Size = 12

# Page break
$range.InsertBreak(12)  # 12 = Page break

# ===============================
# PAGE 2: TABLE OF CONTENTS
# ===============================
$para = $range.Paragraphs.Add()
$para.Range.Text = "Innholdsfortegnelse"
$para.Style = "Heading 1"

# Add spacing
$para = $range.Paragraphs.Add()
$para.Range.Text = ""

# Create TOC field
$field = $doc.Range.Fields.Add($range, 21)  # 21 = TOC field
$field.Update()

# Page break
$range.InsertBreak(12)

# ===============================
# CONTENT: SECTIONS WITH HEADINGS
# ===============================

# Define the structure
$sections = @(
    @{name="Network Design"; level=1; content="Network DesignSection"},
    @{name="Design"; level=2; content="Nettverksdiagram"},
    @{name="Hardware"; level=2; content="Hardware Description"},
    @{name="Organizational Units"; level=1; content="Organizational Units Section"},
    @{name="OUs"; level=2; content="OUs Description"},
    @{name="Groups"; level=2; content="Groups Description"},
    @{name="Users and accounts"; level=1; content="Users and Accounts Section"},
    @{name="Users"; level=2; content="Users Description"},
    @{name="Accounts"; level=2; content="Accounts Description"},
    @{name="Storage"; level=1; content="Storage Description"},
    @{name="Policies"; level=1; content="Policies Section"},
    @{name="Password Policies"; level=2; content="Password Policies Description"},
    @{name="Security Policies"; level=2; content="Security Policies Description"},
    @{name="Security"; level=1; content="Security Section"},
    @{name="Physical"; level=2; content="Physical Security Description"},
    @{name="Software"; level=2; content="Software Security Description"},
    @{name="Web"; level=1; content="Web Section"},
    @{name="Solution"; level=2; content="Web Solution Description"},
    @{name="Security"; level=2; content="Web Security Description"},
    @{name="Management"; level=1; content="Management Section"},
    @{name="Servers"; level=2; content="Server Management Description"},
    @{name="Clients"; level=2; content="Client Management Description"}
)

# Add content for each section
foreach ($section in $sections) {
    $para = $range.Paragraphs.Add()
    $para.Range.Text = $section.name
    
    if ($section.level -eq 1) {
        $para.Style = "Heading 1"
    } else {
        $para.Style = "Heading 2"
    }
    
    # Special handling for Network Design -> Design (where we'll add image)
    if ($section.name -eq "Design" -and $sections[0].name -eq "Network Design") {
        # Add the network diagram text first
        $para = $range.Paragraphs.Add()
        $para.Range.Text = "Et nettverksdiagram viser strukturen og arkitekturen til en organisasjons IT-infrastruktur. Det illustrerer hvordan ulike enheter, servere, og nettverk er koblet sammen, samt kommunikasjonsveiene mellom dem. Diagrammet nedenfor viser et typisk nettverksoppsett med sentrale komponenter."
        $para.Range.Font.Size = 11
        
        # Add image placeholder - we'll add actual image after
        $para = $range.Paragraphs.Add()
        $para.Range.Text = "[Network Diagram Image - See Figure 1]"
        $para.Range.Font.Italic = $true
        $para.Range.Font.Color.RGB = 8421504  # Gray color
        
        # Add caption
        $para = $range.Paragraphs.Add()
        $para.Range.Text = "Figur 1: Network Diagram - IT Infrastructure Overview"
        $para.Style = "Normal"
        $para.Range.Font.Italic = $true
        $para.Range.Font.Size = 10
        
        # Add source reference
        $para = $range.Paragraphs.Add()
        $para.Range.Text = "Kilde: Network diagram illustrating IT infrastructure components and connectivity"
        $para.Range.Font.Size = 9
        $para.Range.Font.Italic = $true
        
        # Add footnote
        $footnote = $doc.Range.Footnotes.Add($range, 0, "Router: En enhet som forbinder forskjellige nettverkssegmenter og dirigerer datapakker mellom dem basert på IP-adresser.")
        
    } else {
        # Add regular content
        $para = $range.Paragraphs.Add()
        $para.Range.Text = "Innhold for " + $section.name + ". "
        $para.Range.Text += "Dette er plassholderinnhold som beskriver " + $section.name + " i detalj."
        $para.Range.Font.Size = 11
    }
    
    # Add spacing
    $para = $range.Paragraphs.Add()
    $para.Range.Text = ""
}

# ===============================
# BIBLIOGRAPHY PAGE
# ===============================
$range.InsertBreak(12)

$para = $range.Paragraphs.Add()
$para.Range.Text = "Kilder"
$para.Style = "Heading 1"

$para = $range.Paragraphs.Add()
$para.Range.Text = ""

# Add bibliography entries
$sources = @(
    "Microsoft. (2023). Network Architecture and Design Principles.",
    "Cisco Systems. (2023). Enterprise Network Design Guide.",
    "TechTarget. (2023). Active Directory Users and Groups Management.",
    "Wikipedia. (2023). Computer Network Diagram. https://www.wikipedia.org/",
    "CompTIA. (2023). Security Policies and Password Management Best Practices."
)

foreach ($source in $sources) {
    $para = $range.Paragraphs.Add()
    $para.Range.Text = $source
    $para.Range.Font.Size = 11
}

# ===============================
# IMAGE LIST PAGE
# ===============================
$range.InsertBreak(12)

$para = $range.Paragraphs.Add()
$para.Range.Text = "Figuroversikt"
$para.Style = "Heading 1"

$para = $range.Paragraphs.Add()
$para.Range.Text = ""

# Add image list entries
$para = $range.Paragraphs.Add()
$para.Range.Text = "Figur 1: Network Diagram - IT Infrastructure Overview"
$para.Range.Font.Size = 11

# ===============================
# FOOTER SETUP - Page numbers and date
# ===============================
$section = $doc.Sections(1)
$footer = $section.Footers(1)
$footerRange = $footer.Range

# Add page number on left
$footerPara = $footerRange.Paragraphs(1)
$footerPara.Alignment = 0  # Left alignment
$footerPara.Range.Text = ""
$field = $doc.Range.Fields.Add($footerPara.Range, 33)  # 33 = Page field
$field.Update()

# Add date field on right
$footerPara2 = $footerRange.Paragraphs.Add()
$footerPara2.Alignment = 2  # Right alignment
$field = $doc.Range.Fields.Add($footerPara2.Range, 14)  # 14 = Date field
$field.Update()

# ===============================
# SAVE DOCUMENT
# ===============================
$docPath = "c:\Users\esevju\OneDrive - Centric IT Academy\VS Code\local-repo\Innleveringsoppgave_Word_Excel.docx"
$doc.SaveAs([ref]$docPath, 16)  # 16 = Word format (.docx)

Write-Host "Document created successfully: $docPath"
$doc.Close()
$word.Quit()

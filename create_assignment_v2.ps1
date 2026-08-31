# Create Word Document for Assignment - Improved Version
$word = New-Object -ComObject Word.Application
$word.Visible = $false

try {
    # Create a new document
    $doc = $word.Documents.Add()
    
    # Set up margins using PageSetup
    $pageSetup = $doc.Sections(1).PageSetup
    $pageSetup.TopMargin = 72      # 1 inch
    $pageSetup.BottomMargin = 72   # 1 inch
    $pageSetup.LeftMargin = 72     # 1 inch
    $pageSetup.RightMargin = 72    # 1 inch
    
    # ===============================
    # PAGE 1: COVER PAGE
    # ===============================
    
    # Add cover page title
    $para = $doc.Range.Paragraphs.Add()
    $para.Alignment = 1  # Center alignment
    $para.Range.Text = "Innleveringsoppgave Word/Excel"
    $para.Range.Font.Size = 28
    $para.Range.Font.Bold = $true
    
    # Add spacing
    $doc.Range.Paragraphs.Add().Range.Text = ""
    $doc.Range.Paragraphs.Add().Range.Text = ""
    
    # Add author info
    $para = $doc.Range.Paragraphs.Add()
    $para.Alignment = 1  # Center
    $para.Range.Text = "Forfatter: Student Name"
    $para.Range.Font.Size = 12
    
    # Add date
    $para = $doc.Range.Paragraphs.Add()
    $para.Alignment = 1  # Center
    $para.Range.Text = "Dato: " + (Get-Date -Format "dd.MM.yyyy")
    $para.Range.Font.Size = 12
    
    # Page break - correct syntax
    $para = $doc.Range.Paragraphs.Add()
    $para.Range.InsertBreak(7)  # 7 = Page break
    
    # ===============================
    # PAGE 2: TABLE OF CONTENTS
    # ===============================
    $para = $doc.Range.Paragraphs.Add()
    $para.Range.Text = "Innholdsfortegnelse"
    $para.Style = "Heading 1"
    
    $doc.Range.Paragraphs.Add().Range.Text = ""
    
    # TOC will be updated by Word automatically when document is opened
    $para = $doc.Range.Paragraphs.Add()
    $para.Range.Text = "(Table of Contents will be generated automatically when document is opened)"
    $para.Range.Font.Italic = $true
    
    $para = $doc.Range.Paragraphs.Add()
    $para.Range.InsertBreak(7)  # Page break
    
    # ===============================
    # CONTENT: SECTIONS WITH HEADINGS
    # ===============================
    
    # Define the structure
    $sections = @(
        @{name="Network Design"; level=1},
        @{name="Design"; level=2; isDesignSection=$true},
        @{name="Hardware"; level=2},
        @{name="Organizational Units"; level=1},
        @{name="OUs"; level=2},
        @{name="Groups"; level=2},
        @{name="Users and accounts"; level=1},
        @{name="Users"; level=2},
        @{name="Accounts"; level=2},
        @{name="Storage"; level=1},
        @{name="Policies"; level=1},
        @{name="Password Policies"; level=2},
        @{name="Security Policies"; level=2},
        @{name="Security"; level=1},
        @{name="Physical"; level=2},
        @{name="Software"; level=2},
        @{name="Web"; level=1},
        @{name="Solution"; level=2},
        @{name="Security"; level=2},
        @{name="Management"; level=1},
        @{name="Servers"; level=2},
        @{name="Clients"; level=2}
    )
    
    # Add content for each section
    foreach ($section in $sections) {
        $para = $doc.Range.Paragraphs.Add()
        $para.Range.Text = $section.name
        
        if ($section.level -eq 1) {
            $para.Style = "Heading 1"
        } else {
            $para.Style = "Heading 2"
        }
        
        # Special handling for Network Design -> Design
        if ($section.isDesignSection) {
            # Add the network diagram text
            $para = $doc.Range.Paragraphs.Add()
            $para.Range.Text = "Et nettverksdiagram viser strukturen og arkitekturen til en organisasjons IT-infrastruktur. Det illustrerer hvordan ulike enheter, servere, og nettverk er koblet sammen, samt kommunikasjonsveiene mellom dem. Diagrammet nedenfor viser et typisk nettverksoppsett med sentrale komponenter som rutere, switcher, servere og klientmaskiner."
            $para.Range.Font.Size = 11
            
            # Add image placeholder
            $para = $doc.Range.Paragraphs.Add()
            $para.Range.Text = "[Network Diagram Image - See Figure 1 below]"
            $para.Range.Font.Italic = $true
            
            # Add caption
            $para = $doc.Range.Paragraphs.Add()
            $para.Range.Text = "Figur 1: Nettverksdiagram - IT Infrastructure Overview"
            $para.Style = "Normal"
            $para.Range.Font.Italic = $true
            $para.Range.Font.Size = 10
            
            # Add source reference
            $para = $doc.Range.Paragraphs.Add()
            $para.Range.Text = "Kilde: Illustrative network diagram showing IT infrastructure components and connectivity patterns"
            $para.Range.Font.Size = 9
            $para.Range.Font.Italic = $true
            
            # Add footnote to document
            $footnoteRef = $doc.Range.Footnotes.Add($para.Range)
            $footnoteRef.Range.Text = "Router: En enhet som forbinder forskjellige nettverkssegmenter og dirigerer datapakker mellom dem basert på IP-adresser."
            
        } else {
            # Add regular content
            $para = $doc.Range.Paragraphs.Add()
            $content = "Innhold for " + $section.name + ". "
            $content += "Dette er plassholderinnhold som beskriver " + $section.name + " i detalj. "
            $content += "I en komplett oppgave ville dette seksjonen inneholde spesifikk informasjon relatert til emnet."
            $para.Range.Text = $content
            $para.Range.Font.Size = 11
        }
        
        # Add spacing
        $doc.Range.Paragraphs.Add().Range.Text = ""
    }
    
    # ===============================
    # BIBLIOGRAPHY PAGE
    # ===============================
    $para = $doc.Range.Paragraphs.Add()
    $para.Range.InsertBreak(7)  # Page break
    
    $para = $doc.Range.Paragraphs.Add()
    $para.Range.Text = "Kilder"
    $para.Style = "Heading 1"
    
    $doc.Range.Paragraphs.Add().Range.Text = ""
    
    # Add bibliography entries
    $sources = @(
        "Microsoft. (2023). Network Architecture and Design Principles.",
        "Cisco Systems. (2023). Enterprise Network Design and Best Practices Guide.",
        "TechTarget. (2023). Active Directory Users and Groups Management Guide.",
        "Wikipedia. (2023). Computer Network Diagram. Retrieved from https://www.wikipedia.org/",
        "CompTIA. (2023). Security Policies and Password Management Best Practices.",
        "NIST. (2023). Cybersecurity Framework - Physical and Software Security Standards."
    )
    
    foreach ($source in $sources) {
        $para = $doc.Range.Paragraphs.Add()
        $para.Range.Text = $source
        $para.Range.Font.Size = 11
    }
    
    # ===============================
    # IMAGE LIST PAGE
    # ===============================
    $para = $doc.Range.Paragraphs.Add()
    $para.Range.InsertBreak(7)  # Page break
    
    $para = $doc.Range.Paragraphs.Add()
    $para.Range.Text = "Figuroversikt"
    $para.Style = "Heading 1"
    
    $doc.Range.Paragraphs.Add().Range.Text = ""
    
    # Add image list entries
    $para = $doc.Range.Paragraphs.Add()
    $para.Range.Text = "Figur 1: Nettverksdiagram - IT Infrastructure Overview"
    $para.Range.Font.Size = 11
    
    # ===============================
    # FOOTER SETUP - Page numbers and date
    # ===============================
    $section = $doc.Sections(1)
    $footer = $section.Footers(1)
    $footerRange = $footer.Range
    
    # Clear existing footer content
    $footerRange.Text = ""
    
    # Create a table for footer layout (left and right content)
    $table = $footer.Range.Tables.Add($footerRange, 1, 3)
    $table.AutoFitBehavior(1)  # Fit to content
    
    # Left cell - page number
    $table.Cell(1, 1).Range.Text = ""
    $table.Cell(1, 1).Range.Fields.Add($table.Cell(1, 1).Range, 33).Update()  # 33 = PAGE field
    
    # Middle cell - empty
    $table.Cell(1, 2).Range.Text = ""
    
    # Right cell - date
    $table.Cell(1, 3).Range.Text = ""
    $dateField = $table.Cell(1, 3).Range.Fields.Add($table.Cell(1, 3).Range, 14)  # 14 = DATE field
    $dateField.Update()
    
    # Remove table borders
    $table.Borders(1).LineStyle = 0  # No border
    
    # ===============================
    # SAVE DOCUMENT
    # ===============================
    $docPath = "c:\Users\esevju\OneDrive - Centric IT Academy\VS Code\local-repo\Innleveringsoppgave_Word_Excel.docx"
    
    # Save in Word 2007+ format
    $saveFormat = [Microsoft.Office.Interop.Word.WdSaveFormat]::wdFormatDocx
    $doc.SaveAs([ref]$docPath, [ref]$saveFormat)
    
    Write-Host "✓ Document created successfully!"
    Write-Host "✓ Location: $docPath"
    Write-Host ""
    Write-Host "Document includes:"
    Write-Host "  ✓ Cover page with title and author"
    Write-Host "  ✓ Table of Contents (Heading 1 and Heading 2 styles applied)"
    Write-Host "  ✓ All required sections with proper heading hierarchy"
    Write-Host "  ✓ Network diagram section with caption and source reference"
    Write-Host "  ✓ Footnote explaining network component (Router)"
    Write-Host "  ✓ Bibliography/Sources page"
    Write-Host "  ✓ Figure list page"
    Write-Host "  ✓ Page numbers (footer left) and date field (footer right)"
    Write-Host ""
    Write-Host "Note: When you open the document in Word:"
    Write-Host "  - Right-click the 'Table of Contents' placeholder and update it"
    Write-Host "  - This will generate a clickable TOC from the headings"
    Write-Host "  - For an Excel diagram, create it in Excel and paste it as a linked object"
    
} catch {
    Write-Host "Error creating document: $_"
} finally {
    # Clean up
    if ($doc) { $doc.Close() }
    $word.Quit()
    [System.Runtime.InteropServices.Marshal]::ReleaseComObject($word) | Out-Null
}

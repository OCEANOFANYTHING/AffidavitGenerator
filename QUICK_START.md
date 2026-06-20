# Quick Start Guide

Get up and running with Affidavit Generator in just a few minutes.

---

## 1. Installation

### Option A: Windows Installer (Recommended)

1. Download `AffidavitGenerator_Setup_v1.1.exe`
2. Run the installer
3. Follow the wizard
4. Launch from Start Menu or Desktop shortcut

### Option B: Portable Version

1. Download `AffidavitGenerator_Portable_v1.1.zip`
2. Extract to any folder
3. Double-click `AffidavitGenerator.exe`
4. Run from USB drive or any location

---

## 2. First Time Setup

No additional setup required! The application is ready to use.

---

## 3. Generate Affidavits

### Step 1: Fill Applicant Information

Enter the applicant's details:
- Name and Father's Name
- Indian Address (all fields)
- Bangladesh Address (all fields)
- Date of Entry (use calendar picker)

### Step 2: Fill Introducer Information

Enter the introducer's details:
- Name, Occupation, Father's Name
- Address
  - 💡 **Tip:** Check "Same as Applicant's Indian Address" if the introducer lives nearby - it auto-fills!
- Age (18-100)

### Step 3: Generate Documents

1. Click **"📄 Generate Affidavits"**
2. Wait for success message
3. Find documents in `output/[Applicant Name]/`

---

## 4. Generated Documents

Three documents are created:

| Document | Font Size | Purpose |
|----------|-----------|---------|
| Shedule-1C.docx | 9.5pt | Main citizenship affidavit |
| Self-Declaration.docx | 12pt | Applicant's declaration |
| Introducer-CR.docx | 12pt | Character reference |

---

## 5. Common Tasks

### Generate for Another Applicant

1. Click **"🔄 Clear Form"**
2. Enter new applicant's information
3. Generate again

### Edit Documents After Generation

1. Open the generated .docx files
2. Edit in Microsoft Word
3. Save changes

### Change Templates

1. Open files in `affidavit/` folder
2. Edit text and formatting in Word
3. Save (keep `{{PLACEHOLDER}}` format)

---

## 6. Tips & Tricks

### Save Time with Same Address

If the introducer lives near the applicant:
1. Fill Indian Address
2. Check "Same as Applicant's Indian Address"
3. Address is auto-filled!

### Tab Navigation

Press **Tab** to move between fields quickly. The form auto-scrolls.

### Clear Form Between Applicants

Always use "Clear Form" button to reset before a new applicant.

---

## 7. Troubleshooting

### Documents Not Generated

- Check all fields are filled (marked with *)
- Verify templates exist in `affidavit/` folder
- Check output folder permissions

### Wrong Font in Documents

- Documents use Bookman Old Style font
- Install font if missing (included with Windows)

### Application Won't Start

- Ensure no other instance is running
- Check Windows Defender isn't blocking
- Reinstall if necessary

---

## 8. Getting Help

- **Documentation**: See [ENHANCED_FEATURES.md](ENHANCED_FEATURES.md)
- **UI Guide**: See [UI_GUIDE.md](UI_GUIDE.md)
- **Build Guide**: See [BUILD_GUIDE.md](BUILD_GUIDE.md)
- **Support**: Create issue on GitHub

---

## What's New in v1.1.0

- ✨ Same Address Checkbox for faster data entry
- 📜 Auto-Scroll when Tabbing through fields
- 📄 Optimized 9.5pt font for Schedule-1C

---

*Ready to generate affidavits? Launch the app and get started!*

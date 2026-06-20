# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Affidavit Generator is a Python GUI application for generating citizenship affidavit documents. It uses CustomTkinter for the UI and python-docx to populate Word document templates with user-entered data.

## Development Commands

### Running the Application
```powershell
python app.py
```

### Installing Dependencies
```powershell
pip install -r requirements.txt
```

### Building Distribution Packages

**Build portable executable:**
```powershell
.\build_exe.bat
```
Output: `dist\AffidavitGenerator.exe`

**Build Windows installer (requires Inno Setup 6):**
```powershell
.\build_installer.bat
```
Output: `installer_output\AffidavitGenerator_Setup_v1.0.exe`

**Build everything:**
```powershell
.\build_all.bat
```

**Package portable ZIP:**
```powershell
.\package_portable.bat
```
Output: `AffidavitGenerator_Portable_v1.0.zip`

## Architecture

### Core Components

- **app.py** - Single-file application containing:
  - `generate_affidavits(data)` - Core generator logic that replaces `{{PLACEHOLDER}}` tokens in Word templates
  - `replace_text_in_paragraph(paragraph, placeholder, value)` - Preserves formatting while replacing text
  - GUI code using CustomTkinter widgets

### Document Generation Flow

1. User fills form fields in the GUI
2. `submit_form()` validates all required fields
3. `generate_affidavits(data)` loads each template from `affidavit/` folder
4. Replaces `{{PLACEHOLDER}}` tokens in paragraphs and tables
5. Saves output to `output/{Applicant Name}/`

### Template Placeholders

| Placeholder | Source |
|-------------|--------|
| `{{NAME}}` | Applicant Name |
| `{{FATHER_NAME}}` | Applicants Father Name |
| `{{IND_ADDRESS}}` | Built from IND_Village, IND_Post_Office, IND_Police_Station, IND_District, IND_Pin_Code |
| `{{BD_ADDRESS}}` | Built from BD_Village, BD_Post_Office, BD_Police_Station, BD_District |
| `{{DOE}}` | Date of Entry |
| `{{DATE}}` | Current date (auto-generated) |
| `{{CR_PROVIDER_NAME}}` | Introducer Name |
| `{{CR_PROVIDER_AGE}}` | Introducer Age |
| `{{CR_PROVIDER_OCCUPATION}}` | Introducer Occupation |
| `{{CR_PROVIDER_FATHER_NAME}}` | Introducer Father Name |
| `{{CR_PROVIDER_ADDRESS}}` | Built from INT_* address fields |

### Directory Structure

```
affidavit/           # Word document templates (Shedule-1C.docx, Self-Declaration.docx, Introducer-CR.docx)
output/              # Generated documents (created per applicant)
dist/                # Built executable and dependencies
installer_output/    # Windows installer output
.env/                # Python virtual environment
```

### Build Requirements

- Python 3.9+
- PyInstaller (for executable building)
- Inno Setup 6 (for Windows installer)
- Dependencies: customtkinter, python-docx, tkcalendar, Pillow

## Key Implementation Details

### Font Handling
The application uses `Bookman Old Style` font at 12pt for document text. When replacing placeholders, the `replace_text_in_paragraph` function clears existing runs and creates a new run with this formatting.

### Address Building
Indian, Bangladesh, and Introducer addresses are built by joining multiple field components with ", " separators before being placed in templates.

### Form Validation
- All text fields are required
- Age must be 18-100 (validated as integer)
- Date of Entry uses a calendar picker (DateEntry widget)

## Adding New Form Fields

To add a new field:
1. Add a `create_field_row()` call in the appropriate section of app.py
2. Add validation in `submit_form()`
3. Add the placeholder mapping in `generate_affidavits()`
4. Update the template Word documents with the new `{{PLACEHOLDER}}`

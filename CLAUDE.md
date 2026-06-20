# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Affidavit Generator is a Python GUI application (v1.1.0) for generating citizenship affidavit documents. It uses CustomTkinter for the UI and python-docx to populate Word document templates with user-entered data.

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

**Build Windows installer (auto-detects Inno Setup):**
```powershell
.\build_installer.bat
```
Output: `installer_output\AffidavitGenerator_Setup_v1.1.exe`

**Build everything:**
```powershell
.\build_all.bat
```

**Package portable ZIP:**
```powershell
.\package_portable.bat
```
Output: `AffidavitGenerator_Portable_v1.1.zip`

## Architecture

### Core Components

- **app.py** - Single-file application (~530 lines) containing:
  - `generate_affidavits(data)` - Core generator logic
  - `replace_text_in_paragraph(paragraph, placeholder, value, font_size=12)` - Preserves formatting, takes font_size parameter
  - `toggle_same_address()` - Handles "Same Address" checkbox functionality
  - `canvas_see(widget)` - Auto-scroll to focused widget
  - `create_field_row()` - Factory for form field rows
  - GUI code using CustomTkinter widgets

### Document Generation Flow

1. User fills form fields in the GUI
2. `submit_form()` validates all required fields
3. `generate_affidavits(data)` loads each template from `affidavit/` folder
4. Replaces `{{PLACEHOLDER}}` tokens in paragraphs and tables
5. Saves output to `output/{Applicant Name}/`

### Template Font Sizes

| Template | Font Size |
|----------|-----------|
| Shedule-1C.docx | 9.5pt |
| Self-Declaration.docx | 12pt |
| Introducer-CR.docx | 12pt |

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
- Inno Setup 6 (script auto-detects installation)
- Dependencies: customtkinter, python-docx, tkcalendar, Pillow

## Key Implementation Details

### Same Address Feature
- `same_address_var` - BooleanVar tracking checkbox state
- `introducer_address_entries` - List of Introducer address widget references
- `toggle_same_address()` - Copies Indian Address to Introducer fields and disables them
- Indian Address fields have `<KeyRelease>` binding to live-sync when checkbox is checked

### Auto-Scroll Navigation
- `canvas_see(widget)` - Uses `winfo_rooty()` to calculate screen positions
- `on_widget_focus(event)` - Scrolls on `<FocusIn>` event
- `focus_next_widget(event)` - Custom Tab handler that scrolls after focus change

### Font Handling
- `replace_text_in_paragraph()` accepts `font_size` parameter (default 12)
- Schedule-1C uses 9.5pt, others use 12pt
- Uses `Bookman Old Style` font

### Form Validation
- All text fields are required
- Age must be 18-100 (validated as integer)
- Date of Entry uses tkcalendar DateEntry widget

## Adding New Form Fields

To add a new field:
1. Add a `create_field_row()` call in the appropriate section of app.py
2. Add validation in `submit_form()`
3. Add the placeholder mapping in `generate_affidavits()`
4. Update the template Word documents with the new `{{PLACEHOLDER}}`

For Introducer Address fields, also:
5. Append the entry widget to `introducer_address_entries` list

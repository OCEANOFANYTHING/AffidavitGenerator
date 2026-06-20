# Build Guide

This guide explains how to build and distribute Affidavit Generator v1.1.0.

---

## Prerequisites

### Software Requirements

- **Python 3.9+** - [Download Python](https://www.python.org/downloads/)
- **PyInstaller** - Install with `pip install pyinstaller`
- **Inno Setup 6** - [Download Inno Setup](https://jrsoftware.org/isdl.php)
- **7-Zip** or PowerShell - For creating ZIP archives

### Python Dependencies

Install dependencies:
```powershell
pip install -r requirements.txt
```

Required packages:
- customtkinter>=5.2.0
- python-docx>=0.8.11
- tkcalendar>=1.6.1
- Pillow>=9.0.0

---

## Build Scripts

### 1. Build Executable Only

Creates a standalone .exe file:

```powershell
.\build_exe.bat
```

**Output:** `dist\AffidavitGenerator.exe`

**What it does:**
- Cleans previous builds
- Builds executable with PyInstaller
- Copies templates and assets
- Creates output folder

---

### 2. Build Windows Installer

Creates a professional Windows installer:

```powershell
.\build_installer.bat
```

**Output:** `installer_output\AffidavitGenerator_Setup_v1.1.exe`

**Requirements:**
- Inno Setup 6 installed (script auto-detects installation)

**What it does:**
- Detects Inno Setup location
- Validates executable exists
- Creates output directory
- Builds installer with Inno Setup
- Creates Start Menu and Desktop shortcuts

---

### 3. Package Portable Version

Creates a portable ZIP file:

```powershell
.\package_portable.bat
```

**Output:** `AffidavitGenerator_Portable_v1.1.zip`

**What it does:**
- Copies dist folder contents
- Creates README.txt
- Zips everything
- Creates portable package

---

### 4. Build Everything

Builds all distribution formats at once:

```powershell
.\build_all.bat
```

**Output:**
- `dist\AffidavitGenerator.exe`
- `installer_output\AffidavitGenerator_Setup_v1.1.exe`
- `AffidavitGenerator_Portable_v1.1.zip`

---

## Step-by-Step Build Process

### Step 1: Prepare Source Code

Ensure your code is ready:
1. Test the application (`python app.py`)
2. Verify all templates are in `affidavit/` folder
3. Update version number in:
   - `installer.iss` (AppVersion)
   - Build scripts (output filenames)
   - README.md (download links)

### Step 2: Install Build Dependencies

```powershell
pip install pyinstaller
```

### Step 3: Build Executable

```powershell
.\build_exe.bat
```

Wait for PyInstaller to complete (may take several minutes).

### Step 4: Test Executable

1. Navigate to `dist` folder
2. Run `AffidavitGenerator.exe`
3. Test all functionality
4. Verify documents generate correctly

### Step 5: Build Installer

```powershell
.\build_installer.bat
```

Inno Setup creates the installer.

### Step 6: Create Portable Package

```powershell
.\package_portable.bat
```

Creates the ZIP file.

---

## Build Output

### Directory Structure After Build

```
AffidavitGenerator/
├── dist/                    # Built executable
│   ├── AffidavitGenerator.exe
│   ├── affidavit/
│   ├── output/
│   └── logo.ico, logo.png
│
├── installer_output/        # Installer output
│   └── AffidavitGenerator_Setup_v1.1.exe
│
├── AffidavitGenerator_Portable_v1.1.zip  # Portable ZIP
│
├── affidavit/              # Source templates
├── app.py                  # Source code
└── ...
```

---

## Customizing the Build

### Change Version Number

In `installer.iss`:
```iss
#define MyAppVersion "1.1"
```

Update output filenames in build scripts.

### Change App Name

In `installer.iss`:
```iss
#define MyAppName "Your App Name"
```

Update `app.title()` in app.py.

### Add More Templates

1. Add template files to `affidavit/` folder
2. Update `templates` list in `generate_affidavits()` function
3. Update build scripts to copy new templates

---

## Troubleshooting

### PyInstaller Errors

**Missing modules:**
```powershell
pyinstaller --hidden-import=module_name app.py
```

**Icon not showing:**
- Convert .png to .ico
- Use proper icon path

### Inno Setup Errors

**ISCC.exe not found:**
- Install Inno Setup 6
- Script auto-detects installation location

**Installer build fails:**
- Check installer.iss syntax
- Verify dist folder contents

### Common Issues

| Issue | Solution |
|-------|----------|
| Module not found | Run `pip install -r requirements.txt` |
| Template not found | Check `affidavit/` folder exists |
| Icon not showing | Use .ico format, not .png |
| Installer too large | Exclude unnecessary files |

---

## Distribution

### GitHub Releases

1. Create new release on GitHub
2. Upload:
   - `AffidavitGenerator_Setup_v1.1.exe`
   - `AffidavitGenerator_Portable_v1.1.zip`
3. Update README.md download links

### Manual Distribution

1. Zip the portable version or
2. Share installer directly

---

## CI/CD (Optional)

For automated builds, see [GITHUB_RELEASE_GUIDE.md](GITHUB_RELEASE_GUIDE.md).

---

*For code signing information, see [SIGNING_GUIDE.md](SIGNING_GUIDE.md)*

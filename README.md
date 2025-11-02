

<div align="center">

<img src="logo.png" alt="Affidavit Generator Logo" width="200"/>

<h2> Modern, Professional Affidavit Document Generator</h2>

<p align="center">
  <a href="https://github.com/OCEANOFANYTHING/AffidavitGenerator/releases/tag/v1.0.0">
    <img src="https://img.shields.io/badge/version-1.0.0-blue.svg" alt="Version">
  </a>
  <a href="https://github.com/OCEANOFANYTHING/AffidavitGenerator/releases/tag/v1.0.0">
    <img src="https://img.shields.io/badge/release-v1.0.0-green.svg" alt="Release">
  </a>
  <a href="https://github.com/OCEANOFANYTHING/AffidavitGenerator">
    <img src="https://img.shields.io/badge/platform-Windows-lightgrey.svg" alt="Platform">
  </a>
  <a href="https://www.python.org/downloads/">
    <img src="https://img.shields.io/badge/python-3.9+-blue.svg" alt="Python">
  </a>
  <a href="https://www.ndcompany.in">
    <img src="https://img.shields.io/badge/license-Custom-orange.svg" alt="License">
  </a>
  <a href="https://github.com/TomSchimansky/CustomTkinter">
    <img src="https://img.shields.io/badge/made%20with-CustomTkinter-blue.svg" alt="Made with CustomTkinter">
  </a>
</p>
</div>

# Affidavit Generator

**🔗 [Download Latest Release](https://github.com/OCEANOFANYTHING/AffidavitGenerator/releases/tag/v1.0.0)**

A modern, professional GUI-based Python application for generating affidavit documents for citizenship applications.

---

**Developed by:** [N&D Co.](https://www.ndcompany.in) and Nakshatra Ranjan Saha  
**Made for:** [Bangali Oikya Manch](https://bangalioikyamanch.com)

---

## 📥 Download

Get the latest version of Affidavit Generator:

### [🚀 Download v1.0.0 Release](https://github.com/OCEANOFANYTHING/AffidavitGenerator/releases/tag/v1.0.0)

**Choose your preferred version:**

| Package | Size | Description |
|---------|------|-------------|
| [**Windows Installer** 💿](https://github.com/OCEANOFANYTHING/AffidavitGenerator/releases/download/v1.0.0/AffidavitGenerator_Setup_v1.0.exe) | ~100 MB | Recommended. Professional installation with shortcuts and uninstaller |
| [**Portable ZIP** 📦](https://github.com/OCEANOFANYTHING/AffidavitGenerator/releases/download/v1.0.0/AffidavitGenerator_Portable_v1.0.zip) | ~100 MB | No installation required. Extract and run anywhere |

**System Requirements:**
- Windows 7 or later (Windows 10/11 recommended)
- 200 MB free disk space
- No additional software required

---

## 🎨 What's New in v1.1

- ✨ **Modern Professional UI** - Complete redesign with gradient headers and icons
- 📅 **Calendar Date Picker** - No more typing dates manually
- 🎚️ **Age Slider Control** - Interactive slider (18-100 years) with live display
- 📝 **Multi-line Address Fields** - Better visibility for complete addresses
- ✅ **Form Validation** - Required field checks with clear error messages
- 🎉 **Success Notifications** - Popup confirmations with detailed info
- 🔄 **Clear Form Button** - Quick reset functionality
- 📋 **Organized Sections** - Applicant and Introducer sections clearly separated
- ℹ️ **Info Panels** - Helpful tips and reminders

## 🚀 Features

- Modern, user-friendly GUI using CustomTkinter
- Automatically generates 3 types of affidavits:
  - **Schedule-1C**: Main affidavit for citizenship application
  - **Self-Declaration**: Applicant's self-declaration
  - **Introducer-CR**: Character reference from introducer
- Auto-fetches current date
- Creates organized output folders per applicant
- Replaces placeholders in Word templates with user data
- Preserves original document formatting

## 📁 Project Structure

```text
utility/
│
├── affidavit/              # Template folder (Word documents)
│   ├── Shedule-1C.docx
│   ├── Self-Declaration.docx
│   └── Introducer-CR.docx
│
├── output/                 # Generated documents folder
│   └── [Applicant Name]/
│
├── app.py                  # Main application
├── test_generator.py       # Test script
├── requirements.txt        # Dependencies
└── README.md              # This file
```

## 🔧 Installation

### Step 1: Install Dependencies

Open PowerShell in the project directory and run:

```powershell
pip install -r requirements.txt
```

This will install:

- `customtkinter` - Modern GUI framework
- `python-docx` - Document generation library
- `tkcalendar` - Calendar date picker widget

## ▶️ Usage

### Running the Application

```powershell
python app.py
```

### Using the Application

1. **Fill in all the form fields:**

   **Applicant Information:**
   - **Applicant Name** - Full name of the applicant
   - **Applicants Father Name** - Father's full name
   - **Applicants Indian Address** - Complete current Indian address (multi-line)
   - **Applicants Bangladesh Address** - Complete original Bangladesh address (multi-line)
   - **Date of Entry** - Select date from calendar picker when applicant entered India

   **Introducer/Character Reference:**
   - **Introducer Name** - Name of the person providing character reference
   - **Introducer Occupation** - Occupation of the introducer
   - **Introducer Father Name** - Father's name of the introducer
   - **Introducer Address** - Complete address of the introducer (multi-line)
   - **Introducer Age** - Use slider to select age (18-100 years)

2. **Click "📄 Generate Affidavits"**

3. **Success confirmation will appear** with file locations

4. **Find your documents:**
   - Generated files will be saved in: `output/[Applicant Name]/`
   - Three documents will be created with the same names as templates:
     - `Shedule-1C.docx`
     - `Self-Declaration.docx`
     - `Introducer-CR.docx`

## 📝 Form Fields & Template Placeholders

The application maps form fields to template placeholders as follows:

| Form Field | Template Placeholder |
|------------|---------------------|
| Applicant Name | `{{NAME}}` |
| Applicants Father Name | `{{FATHER_NAME}}` |
| Applicants Indian Address | `{{IND_ADDRESS}}` |
| Applicants Bangladesh Address | `{{BD_ADDRESS}}` |
| Date of Entry | `{{DOE}}` |
| Current Date | `{{DATE}}` (auto-generated) |
| Introducer Name | `{{CR_PROVIDER_NAME}}` |
| Introducer Age | `{{CR_PROVIDER_AGE}}` |
| Introducer Occupation | `{{CR_PROVIDER_OCCUPATION}}` |
| Introducer Father Name | `{{CR_PROVIDER_FATHER_NAME}}` |
| Introducer Address | `{{CR_PROVIDER_ADDRESS}}` |

## 🧪 Testing

To test the generator without using the GUI:

```powershell
python test_generator.py
```

This will create a test output folder with sample data.

## 🎨 Customizing Templates

You can customize the templates by:

1. Opening the `.docx` files in the `affidavit` folder with Microsoft Word
2. Editing the content as needed
3. Using placeholders in the format: `{{PLACEHOLDER_NAME}}`
4. Saving the template

**Available placeholders:** See the table above for all supported placeholders.

## 🔍 Troubleshooting

### Issue: Templates not found

- **Solution:** Make sure the Word documents are in the `affidavit` folder
- Check filenames: `Shedule-1C.docx`, `Self-Declaration.docx`, `Introducer-CR.docx`

### Issue: Module not found error

- **Solution:** Install dependencies: `pip install -r requirements.txt`

### Issue: Application doesn't open

- **Solution:** Check if Python 3.x is installed: `python --version`
- Ensure all dependencies are installed correctly

### Issue: Placeholders not replaced

- **Solution:** Verify placeholder format in templates matches exactly: `{{PLACEHOLDER}}`
- Check that field names in form match the mapping

## 👨‍💻 Development

Built with:

- Python 3.x
- CustomTkinter for modern GUI
- python-docx for Word document processing

## Building & Distribution

### Building Executable

To build a standalone Windows executable:

```powershell
.\build_exe.bat
```

This creates a `dist` folder with the executable and all dependencies.

### Building Windows Installer

To create a professional Windows installer with Start Menu and Desktop shortcuts:

```powershell
.\build_installer.bat
```

**Requirements:**
- [Inno Setup 6](https://jrsoftware.org/isinfo.php) must be installed

**Output:**
- `installer_output\AffidavitGenerator_Setup_v1.0.exe`

### Creating Portable Version

To package the application as a portable ZIP file:

```powershell
.\package_portable.bat
```

**What it does:**
- Copies the `dist` folder contents
- Creates a README.txt with usage instructions
- Packages everything into a ZIP file
- No installation required - just extract and run!

**Output:**
- `AffidavitGenerator_Portable_v1.0.zip` (~100 MB)

### Build Everything at Once

To build both the installer and portable version in one command:

```powershell
.\build_all.bat
```

This runs:
1. `build_exe.bat` - Creates executable
2. `build_installer.bat` - Creates Windows installer
3. `package_portable.bat` - Creates portable ZIP

### Prepare Release

To prepare a complete release package:

```powershell
.\prepare_release.bat
```

This creates both distribution formats ready for GitHub release:
- Windows Installer (.exe)
- Portable Version (.zip)

**See also:**
- [BUILD_GUIDE.md](BUILD_GUIDE.md) - Complete build and distribution guide
- [GITHUB_RELEASE_GUIDE.md](GITHUB_RELEASE_GUIDE.md) - How to create a GitHub release
- [INSTALLER_README.md](INSTALLER_README.md) - Installer documentation
- [SIGNING_GUIDE.md](SIGNING_GUIDE.md) - Code signing information

## �📄 License

Powered by N&D Co. | <www.ndcompany.in>

## 🤝 Support

For support or feature requests:
- 📧 Contact [N&D Co.](https://www.ndcompany.in)
- 🐛 Report issues on [GitHub Issues](https://github.com/OCEANOFANYTHING/AffidavitGenerator/issues)
- 📦 Check for updates on [Releases Page](https://github.com/OCEANOFANYTHING/AffidavitGenerator/releases)

## 📝 Credits & Attribution

**Developed by:** [N&D Co.](https://www.ndcompany.in) and Nakshatra Ranjan Saha  
**Made for:** [Bangali Oikya Manch](https://bangalioikyamanch.com)  
**Purpose:** Streamlining citizenship affidavit documentation process

---

## 📊 Project Info

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![Last Updated](https://img.shields.io/badge/updated-November%202%2C%202025-green.svg)
![Status](https://img.shields.io/badge/status-stable-success.svg)
![Made with Love](https://img.shields.io/badge/made%20with-%E2%9D%A4%EF%B8%8F-red.svg)

### 📚 Additional Documentation

[Enhanced Features](ENHANCED_FEATURES.md) • [UI Guide](UI_GUIDE.md) • [Quick Start](QUICK_START.md) • [Build Guide](BUILD_GUIDE.md) • [Changelog](CHANGELOG.md)

---

**⭐ If you find this helpful, please consider starring the repo!**

[🌟 Star on GitHub](https://github.com/OCEANOFANYTHING/AffidavitGenerator) • [📦 View Releases](https://github.com/OCEANOFANYTHING/AffidavitGenerator/releases)

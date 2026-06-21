# Changelog

All notable changes to Affidavit Generator will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [1.1.0] - 2026-06-21

### 🚀 Performance Improvements

#### Auto-Scroll Navigation
- **Tab Key Scrolling**: Form now automatically scrolls to keep focused input fields visible
- When Tab is pressed, the scrollable frame scrolls to reveal the target input field
- Prevents the "cursor disappearing" issue when navigating to off-screen fields
- Works for all input widgets including text entries and date picker

### 🎨 Document Formatting

#### Font Size Customization
- **Schedule-1C Document**: Font size changed from 12pt to **9.5pt** for better fit
- Other documents (Self-Declaration, Introducer-CR) continue using 12pt font size
- Preserves Bookman Old Style font formatting

### ✨ New Features

#### Same Address Checkbox
- **"Same as Applicant's Indian Address"** checkbox added to Introducer Address section
- When enabled:
  - Introducer Address fields are automatically populated with Indian Address values
  - Introducer Address fields are disabled (grayed out)
  - Live sync: Typing in Indian Address fields automatically updates Introducer Address
- When disabled: Introducer Address fields become editable again
- **Purpose**: Most introducers live near the applicant, so this saves time by avoiding duplicate data entry

### 🖥️ Large Screen Optimization

#### Enhanced UI Scaling (v2 - 15% Larger)
- **Larger fonts throughout**: Title (35pt), sections (25pt), subsections (20pt)
- **Bigger input fields**: Main fields height 52px, address fields 46px, font 18pt/16pt
- **Larger buttons**: Height 63px, font 18pt for better click targets
- **Improved readability**: All text now optimized for large/high-resolution displays
- **Consistent styling**: 17-18pt labels, 16pt info text, 15pt footer
- **Enhanced padding**: Increased spacing for better visual hierarchy

### 🔧 Build System

#### Dynamic Inno Setup Detection
- `build_installer.bat` now dynamically searches for Inno Setup installation
- Searches multiple common installation paths automatically
- Falls back to system PATH search if needed
- Works across different computers regardless of Inno Setup installation location

**Full Changelog**: https://github.com/OCEANOFANYTHING/AffidavitGenerator/compare/v1.0.0...v1.1.0

---

## [1.0.0] - 2025-11-02

### 🎉 Initial Release

**[📦 Download v1.0.0](https://github.com/OCEANOFANYTHING/AffidavitGenerator/releases/tag/v1.0.0)**

First stable release of Affidavit Generator - A professional desktop application for generating citizenship affidavit documents.

### ✨ Features

#### Core Functionality
- **Three Document Types**: Automatically generates Schedule-1C, Self-Declaration, and Introducer-CR affidavits
- **Template-Based Generation**: Uses Microsoft Word templates with smart placeholder replacement
- **Organized Output**: Creates separate folders for each applicant's documents

#### User Interface
- **Modern GUI**: Built with CustomTkinter for a professional, clean interface
- **Fullscreen Launch**: Opens maximized by default for better visibility
- **Dark/Light Theme**: Automatically adapts to system theme
- **Smooth Scrolling**: Optimized performance with efficient rendering
- **Custom Branding**: N&D Co. logo throughout the application

#### Input Fields & Validation
- **Applicant Information**:
  - Name and Father's Name
  - Indian Address (Village, Post Office, Police Station, District, Pin Code)
  - Bangladesh Address (Village, Post Office, Police Station, District)
  - Date of Entry with calendar picker

- **Introducer/Character Reference**:
  - Name, Age, Occupation, Father's Name
  - Complete Address (Village, Post Office, Police Station, District, Pin Code)
  - Age validation (18-100 years)

- **Auto-Fill Features**:
  - Current date automatically added
  - Real-time input validation
  - Required field checking

#### Typography & Formatting
- **Bookman Old Style Font**: Used throughout UI and generated documents
- **Consistent Formatting**: Preserves document structure while inserting data
- **Professional Output**: 12pt font size in all generated documents

### 📦 Distribution Options

#### Windows Installer
- Professional installation wizard
- User-selectable installation directory
- Start Menu shortcuts
- Optional Desktop icon
- Uninstaller in Windows Settings
- Preserves user data during uninstall

#### Portable Version
- No installation required
- Run directly from any folder
- Self-contained with all dependencies
- Perfect for USB drives or shared folders

### 🛠️ Technical Details

- **Platform**: Windows 7 or later (Windows 10/11 recommended)
- **Framework**: Python 3.9.13 with CustomTkinter
- **Document Processing**: python-docx with font formatting
- **Size**: ~100 MB installed
- **Requirements**: No additional software needed

### 🎨 Design Highlights

- Clean, organized form layout with clear sections
- Icon-based visual cues for different sections
- Gradient headers and professional color scheme
- Smooth animations and transitions
- Intuitive navigation with Tab key support

### 📋 Documentation

- Complete installation guide
- User manual
- Developer documentation
- Code signing guide
- Installer building instructions

### � Build Scripts

Automated build process for creating distributions:

- **`build_exe.bat`**: Builds standalone executable using PyInstaller
- **`build_installer.bat`**: Creates Windows installer using Inno Setup
- **`package_portable.bat`**: Packages portable ZIP version with README
- **`build_all.bat`**: Runs all build scripts in sequence
- **`prepare_release.bat`**: Complete release preparation workflow

All scripts include error checking and provide clear feedback during build process.

### �🔒 Security & Privacy

- All processing done locally on user's computer
- No internet connection required
- No data collection or telemetry
- Generated documents saved only on local machine

### 🙏 Credits

**Developed by:** N&D Co. and Nakshatra Ranjan Saha  
**Made for:** Bangali Oikya Manch  
**Purpose:** Streamlining citizenship affidavit documentation process

---

## Download

Choose your preferred version:

- **Installer** (Recommended): `AffidavitGenerator_Setup_v1.0.exe`
  - Professional installation experience
  - Automatic shortcuts and uninstaller
  - ~100 MB download

- **Portable**: `AffidavitGenerator_Portable_v1.0.zip`
  - No installation needed
  - Extract and run
  - ~100 MB download

---

## Installation & Usage

### Using Installer
1. Download `AffidavitGenerator_Setup_v1.0.exe`
2. Run the installer
3. Follow installation wizard
4. Launch from Start Menu or Desktop

### Using Portable Version
1. Download `AffidavitGenerator_Portable_v1.0.zip`
2. Extract to any location
3. Run `AffidavitGenerator.exe`

### First-Time Use
1. Fill in all required fields
2. Click "Generate Affidavits"
3. Documents saved in `output/[Applicant Name]/` folder

---

## Known Issues

- **"Unknown Publisher" Warning**: Normal for unsigned software. Click "More info" → "Run anyway"
- **Windows Defender**: May scan on first run. This is normal security behavior.

---

## Support

**Website:** https://www.ndcompany.in  
**Made for:** https://bangalioikyamanch.com  
**Repository:** https://github.com/OCEANOFANYTHING/AffidavitGenerator

For support or feature requests, please create an issue on GitHub.

---

*Version 1.1.0 - Auto-Scroll, Same Address Checkbox, Dynamic Inno Setup - June 21, 2026*

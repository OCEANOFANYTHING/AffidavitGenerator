# Affidavit Generator - Enhanced UI (v1.0)

A modern, professional GUI-based Python application for generating affidavit documents for citizenship applications.

---

**Developed by:** [N&D Co.](https://www.ndcompany.in)  
**Made for:** [Bangali Oikya Manch](https://bangalioikyamanch.com)

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

## 📄 License

Powered by N&D Co. | <www.ndcompany.in>

## 🤝 Support

For support or feature requests, please contact N&D Co.

## 📝 Credits & Attribution

**Developed by:** [N&D Co.](https://www.ndcompany.in) and Nakshatra Ranjan Saha  
**Made for:** [Bangali Oikya Manch](https://bangalioikyamanch.com)  
**Purpose:** Streamlining citizenship affidavit documentation process

---

**Version:** 1.0  
**Last Updated:** November 2, 2025

**Additional Documentation:**
- [ENHANCED_FEATURES.md](ENHANCED_FEATURES.md) - Detailed feature descriptions
- [UI_GUIDE.md](UI_GUIDE.md) - Visual UI guide and tips
- [QUICK_START.md](QUICK_START.md) - Quick start instructions

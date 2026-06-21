# Enhanced Features Guide

This document details the advanced features of Affidavit Generator v1.1.0.

---

## 🖥️ Large Screen Optimization

The application has been optimized for large and high-resolution displays (v2 - 15% larger).

### UI Scaling
- **Title**: 35pt font
- **Section Headers**: 25pt font
- **Subsection Labels**: 20pt font
- **Main Input Fields**: Height 52px, 18pt font
- **Address Fields**: Height 46px, 16pt font
- **Buttons**: Height 63px, 18pt font
- **Labels**: 17-18pt font

### Benefits
- Better readability on 4K monitors
- Easier to use with large displays
- Improved touch compatibility
- Consistent visual hierarchy
- Enhanced padding and spacing

---

## 📍 Same Address Checkbox

The **"Same as Applicant's Indian Address"** checkbox in the Introducer Address section is a powerful time-saving feature.

### How It Works

1. Fill in the Applicant's Indian Address fields
2. Check the "Same as Applicant's Indian Address" checkbox
3. The Introducer Address fields are automatically populated with the same values
4. The fields become disabled (grayed out)

### Live Sync Feature

When the checkbox is enabled:
- Typing in any Indian Address field automatically updates the corresponding Introducer Address field
- This works in real-time as you type

### Disabling

To enter a different address for the introducer:
1. Uncheck the "Same as Applicant's Indian Address" checkbox
2. The Introducer Address fields will become enabled
3. Enter the different address manually

### Use Case

Most introducers live near the applicant's current address in India. This feature eliminates the need to type the same address twice, making the document generation process faster and more convenient.

---

## 📜 Auto-Scroll Navigation

The form now automatically scrolls to keep focused input fields visible.

### Tab Navigation

When pressing the Tab key to move between fields:
- If the next field is below the visible area, the form scrolls down automatically
- If the next field is above the visible area, the form scrolls up automatically
- The cursor remains visible and focused

### Benefits

- No more "losing" the cursor when navigating through the form
- Smoother workflow when filling out long forms
- Better usability especially with larger forms

---

## 📄 Document Font Optimization

### Schedule-1C Document

The Schedule-1C affidavit uses **9.5pt font size** instead of the standard 12pt. This is because:
- Schedule-1C documents tend to have more content
- 9.5pt provides better fit on the page
- Maintains readability with Bookman Old Style font

### Other Documents

- Self-Declaration.docx: 12pt font
- Introducer-CR.docx: 12pt font

---

## 🎨 Custom Branding

The application maintains consistent branding throughout:
- **Application Icon**: Custom logo displayed in window title bar and taskbar
- **UI Font**: Bookman Old Style throughout the interface
- **Color Scheme**: Professional blue gradient headers
- **Footer**: N&D Co. branding with website link

---

## 🔄 Form Management

### Clear Form Button

The "Clear Form" button resets all fields to their default state:
- All text fields are cleared
- Date picker is reset to current date
- Same Address checkbox is unchecked
- Introducer Address fields are re-enabled

### Validation Feedback

- Required fields show error messages if left empty
- Age field validates for numbers only (18-100 range)
- Clear error indicators help users complete forms correctly

---

## 📁 Organized Output

Generated documents are saved in a structured format:

```
output/
└── [Applicant Name]/
    ├── Shedule-1C.docx
    ├── Self-Declaration.docx
    └── Introducer-CR.docx
```

Each applicant gets their own folder, keeping documents organized.

---

## 🔧 Template Customization

You can modify the Word templates to:

1. **Change text content** - Edit the static text in the documents
2. **Add new placeholders** - Add `{{NEW_PLACEHOLDER}}` and update app.py
3. **Modify formatting** - Change fonts, sizes, and styles in Word
4. **Add new sections** - Extend the templates as needed

### Adding New Placeholders

1. Open the .docx template in Microsoft Word
2. Add placeholder text: `{{PLACEHOLDER_NAME}}`
3. In app.py, add the mapping in `generate_affidavits()`
4. Add the form field in the GUI

---

*For more information, see [UI_GUIDE.md](UI_GUIDE.md) and [QUICK_START.md](QUICK_START.md)*

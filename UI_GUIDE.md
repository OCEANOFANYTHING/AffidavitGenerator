# UI Guide

This guide explains the user interface of Affidavit Generator v1.1.0.

---

## 🖥️ Large Screen Support

The application is optimized for large and high-resolution displays (v2 - 15% larger):

| Element | Font Size | Dimensions |
|---------|-----------|------------|
| Title | 35pt | Bold |
| Section Headers | 25pt | Bold |
| Subsection Labels | 20pt | Bold |
| Main Input Fields | 18pt | Height 52px |
| Address Fields | 16pt | Height 46px |
| Buttons | 18pt | Height 63px |
| Labels | 17-18pt | Varies |

The UI automatically scales for best readability on 4K monitors and large screens.

---

## Main Window

The application launches in fullscreen mode for maximum visibility. The window consists of:

1. **Header** - Application title and branding (30pt title)
2. **Scrollable Form Area** - Contains all input fields (large, readable inputs)
3. **Action Buttons** - Generate and Clear buttons (55px height)
4. **Status Bar** - Shows generation status
5. **Footer** - Version and credits information

---

## Form Sections

### 📋 Applicant Information

**Basic Information:**
- **Applicant Name** - Full legal name
- **Applicants Father Name** - Father's full name

**🏠 Indian Address:**
- Village
- Post Office
- Police Station
- District
- Pin Code

**🏠 Bangladesh Address:**
- Village
- Post Office
- Police Station
- District

**Date of Entry:**
- Calendar picker for selecting date of entry into India

### 👤 Introducer/Character Reference

**Basic Information:**
- Introducer Name
- Introducer Occupation
- Introducer Father Name

**🏠 Introducer Address:**
- Village
- Post Office
- Police Station
- District
- Pin Code

**📍 Same Address Checkbox:**
- Check "Same as Applicant's Indian Address" if applicable

**Introducer Age:**
- Age in years (18-100)

---

## Input Fields

### Text Fields

All text fields:
- Display a red asterisk (*) indicating they are required
- Use Bookman Old Style font
- Support standard text input
- Validate for non-empty values

### Date Picker

The Date of Entry field uses a calendar picker:
- Click to open calendar
- Select month/year from dropdown
- Click specific date
- Format: DD-MM-YYYY

### Age Field

The Introducer Age field:
- Accepts numbers only
- Range: 18-100
- Shows hint text "(Age 18-100)"

---

## Buttons

### 🔄 Clear Form

- **Location**: Bottom left
- **Color**: Gray
- **Function**: Resets all fields to default state

### 📄 Generate Affidavits

- **Location**: Bottom right
- **Color**: Blue gradient
- **Function**: Generates all three documents
- **Requirement**: All fields must be filled

---

## Visual Elements

### Section Headers

- **Applicant Information**: Blue gradient text
- **Introducer Information**: Blue gradient text
- **Address Subsections**: Blue subsection labels

### Info Panel

Located above the action buttons:
- Shows: "Current date will be automatically added to the documents"
- Light blue background with border

### Status Messages

Displayed below buttons:
- **Success**: Green text showing output location
- **Error**: Red text with error description
- **Default**: Empty

---

## Navigation

### Tab Key

Press Tab to move between fields:
- Moves focus to next input
- Form auto-scrolls to keep field visible
- Works for all input widgets

### Click

Click on any field to focus it:
- Field becomes active
- Cursor appears
- Form scrolls if field is off-screen

---

## Theme Support

The application automatically adapts to your system theme:

### Light Mode
- Light gray form background
- Dark text
- Blue accents

### Dark Mode
- Dark gray form background
- Light text
- Blue accents

---

## Responsive Layout

The form adapts to window size:
- Fullscreen by default
- Scrollable content area
- Consistent spacing
- Readable at all sizes

---

## Accessibility

### Keyboard Navigation

- All fields are accessible via Tab key
- Buttons respond to Enter key
- Clear focus indicators

### Visual Feedback

- Focus highlights on active fields
- Error states clearly indicated
- Success messages in contrasting color

---

## Tips

1. **Use Tab** to quickly move between fields
2. **Check Same Address** when introducer lives nearby
3. **Clear Form** between applicants
4. **Check Status** after generation for output location

---

*For quick start instructions, see [QUICK_START.md](QUICK_START.md)*

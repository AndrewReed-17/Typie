# Typie

A text editor designed around the workflow and constraints of a mechanical typewriter.

---

## Overview

**Typie** is a minimalist text editor intended to reproduce the workflow of typing on a mechanical typewriter, while remaining compatible with modern systems.

The project deliberately avoids invisible automation (automatic word-wrapping, dynamic margins, proportional fonts) in favor of explicit operator action and a strictly predictable layout.

---

## Features

### Implemented or Planned

- **Backspace Behavior**
  - Backspace behavior is configurable:
    - cursor movement only, or
    - cursor movement with character erasure.
  - This option may be changed at runtime.
  - Default behavior: cursor movement only.

- **No Orthographic Corrections**
  - No grammar or spelling correction is provided.
  - All errors are intentional and operator-controlled.

- **Custom Tabulation**
  - Inserts a fixed number of space characters into the TXT file.
  - Default value: **4 spaces**.
  - Configurable at runtime.

- **Margin Bell**
  - Emits an audible bell (`\\a`) or activates a buzzer when the right margin is reached.
  - The operator must press `ESC` to continue typing beyond the warning margin.
  - The effective end-of-line is reached only after the warning zone.

- **Paper Limits**
  - Fixed margins of **1 cm**.
  - Supports ISO **A-series** paper sizes (A0–A6).
  - Default format: **A4**.
  - Fixed maximum number of lines per page.
  - Once the limit is reached, a new TXT file (page) must be created.
  - *This is a software-enforced limitation; the underlying TXT file may be edited freely.*

- **Overwrite Mode**
  - Cursor movement replaces existing characters.
  - Character insertion is explicitly disabled.

- **Formatting Control Sequences**
  - Formatting is encoded using explicit textual control tokens stored directly in the file.
  - Formatting is activated by the current color state and the `_` key for underlining.
  - Examples:
    - `[CLR]` — color: red
    - `[CLB]` — color: blue
    - `[CLD]` — color: dark (black)
    - `[ULR]` — underline: red
    - `[ULB]` — underline: blue
    - `[ULD]` — underline: dark
  - These sequences are **invisible in the UI**, but persist verbatim in the TXT file.

- **Manual Carriage Return**
  - Line breaks occur **only** when the operator presses `ENTER`.
  - No automatic line wrapping is performed.

- **Custom Font**
  - Uses a custom bitmap font, fixed to **12 pt**.
  - Reuses identical glyphs for visually similar characters (e.g. `l` and `1`).
  - This reproduces historical typographic conventions of mechanical typewriters.
  - The glyph actually rendered is written explicitly to the document.

- **Ribbon and Break Reminder**
  - After **4096 characters typed**, across all documents, the operator is required to \"change the ribbon\".
  - This is an emulated constraint intended to enforce breaks and limit continuous typing.
  - No automatic reset occurs without explicit operator action.

---

## Formatting

- **Metadata Header**
  - Optional metadata block inserted at the beginning of the file.
  - Example:
    `[SOFTWARE: TYPIE]`
    `[DATE: 1931-04-12T19:21]`
    `[PAPER: A4]`
    `[MARGINS: 1cm]`
    `[FONT: 12PT-BITMAP]`

- **Page End Marker**
  - When a page limit is reached, the editor inserts:
    - `[PAGE-END]`
  - No implicit pagination is performed.

---

## Technical Standards

- **Language Standard**
  - ISO C89 / ISO C90 (ANSI C)

- **System Interface**
  - POSIX-compliant
  - Intended to compile and run on any POSIX-compatible operating system

- **File Format**
  - Plain text (`.txt`)
  - UTF-8 encoding

- **Command-Line Interface**
  - Advanced CLI using custom buffering through standard C libraries
  - Interaction model inspired by *vi / nvim*, without external dependencies

- **Typography Model**
  - Fixed-width fonts only
  - Character metrics derived from:
    - Approximate **12 pt typewriter glyphs**
    - Mapping to ISO A4 paper with **1 cm margins**
  - This ratio defines:
    - Page width (characters per line)
    - Page height (lines per page)
  - The same ratio is applied proportionally to all other ISO A-series paper formats.

---

## License

Released under the **MIT License**.

    

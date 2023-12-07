# ciapo
Yet another simplistic Typst template for presentations.

Based on [diapo](https://github.com/lvignoli/diapo). Add some features but keep it a single-file template.

## Features

- [x] Still as simple as diapo
- [x] Slide for transition, long page, and references
- [x] Header with previous headings (if any) for better navigation

## Usage

Copy the [template](./template.typ) to your project folder and start your document with a global show rule using `diapo.with()`.

Then just write as you like.

For headings, use `=` for the first level, `==` for the second, and so on.

To get a transition slide, use `#transition[some text]`.

To get a long page (e.g. for demonstrating long code), use `#longpage(times)[some text]`. For example, `#longpage(3)[some text]` will generate a page with three times the height of the normal page.

For references page, use `#refpage[your reference]`.

To change font, search in the template for `font` and replace it.


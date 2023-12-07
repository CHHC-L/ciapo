# ciapo
Yet another simplistic Typst template for presentations.

Based on [diapo](https://github.com/lvignoli/diapo). Add some features but keep it a single-file template.

## Features

- Still as simple as diapo
- Slide for transition, long page, and references
- Header with previous headings (if any) for better navigation

## Usage

Copy the [template](./template.typ) to your project folder and start your document with a global show rule using `diapo.with()`.

Then just write as you like.

For headings, use `=` for the first level, `==` for the second, and so on.

To get a transition slide, use `#transition[some text]`.

To get a long page (e.g. for demonstrating long code), use `#longpage(times)[some text]`. For example, `#longpage(3)[some text]` will generate a page with three times the height of the normal page.

For references page, use `#refpage[your reference]`.

To change font, search in the template for `font` and replace it.

## Potential bugs

When setting the header, as the query for the header cannot simply obtain the locale of the header (that is, we cannot directly determine whether a header is located on the current page), the rules are a little inelegant to maintain. And when there is no text under the level-1 heading, the header might be incorrect.

## Minimal example

This will give you [this](./examples/example.pdf). For more examples, see [examples](./examples).

```typ
#import "../template.typ": diapo, transition

#show: diapo.with(
  title: "My last vacations",
  author: "John Doe",
  date: "2023-04-20",
  // display_lastpage: false,
)

= Introduction

It was great!

#lorem(20)

#transition[Day one]

= Travelling

#lorem(30)

#lorem(30)

= Relax

#align(horizon)[
 #set text(size: 28pt)
 $ e^(i pi) + 1 = 0 $
]

= The journey back home

It was exhausting.

= Conclusion

That was short.
```
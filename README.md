# Investment sheet as LaTeX
This project holds my LaTeX template for my investment thesis for companies


# Goal
Have a reusable LaTeX tempalte with key details, SWOT-analysis and general information of a company that i might intend buying


# Usage with VS Code
- Install the Extensions
`Remote - Containers` by Microsoft
`LaTeX Workshop` by James Yu

- Open Settings with `CTRL + SHIFT + P` and select `Open Settings (JSON)` and add:
```json
{
    // ... YOUR OTHER SETTINGS ...    // latex
    "latex-workshop.docker.enabled": true,
    "latex-workshop.latex.outDir": "./out",
    "latex-workshop.synctex.afterBuild.enabled": true,
    "latex-workshop.view.pdf.viewer": "tab",
    "latex-workshop.docker.image.latex": "tianon/latex",
    // End
  }
```

1. Use `docker pull tianon/latex`

Now use the TEX_button on the left side to `View LaTeX PDF`




# Elements
- Copany Name + Company Logo
- Paragraph at the top middle-left
- About the company section in the top-right corner (Founding-year, CEO, Revenue, employees, industry, book-value, tangible book-value, category, reasons why intersting)
- SWOT Analysis
-


# ToDos LaTeX
- [X] Add a little bit more space between Header and the text below
- [X] Reduce the space between enumerate rows
- [X] Reduce the space between itemize rows
- [X] In the General-Information section aligne all the symbols on one line vertically
- [X] Add a second page
- [ ] Move the "products" section beneath the Company story section
- [X] Reduce the indentation of the enumerate in the "reasons ?" section in the General-Information section
- [X] Reduce the borders of the page to (t,r,b,l) 1cm, 1cm, 1cm, 1.5cm
- [X] Remove the page number
- [X] Remove the "Figure 1:" standar caption from a chart caption

### Class
- [X] Create class file
- [X] Add required structure minimum
- [ ] Tempalte for piecharts
- [X] Template for SWOT
- [ ] Tempalte for Special-note
- [ ] Segment and use classes for the individual elements on the page (Header, Infosection, Piecharts, Story, S W O and T of the analysis, etc.)

- [ ] When ommiting a value, put three dashes (---)
- [ ] Parametrize the Questions enumerate section in the company infosection


# ToDos Webdev
- [ ] Build application that can write LaTeX
- [ ]


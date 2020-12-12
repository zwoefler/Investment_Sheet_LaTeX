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

# Jordi Cortés Martínez — Personal Website

Personal academic website of Jordi Cortés Martínez.

🌐 **Website:** https://jordicortes40.github.io/

## About

Academic website containing information about:

- Research
- Publications
- Software
- Projects
- Teaching
- Curriculum Vitae
- Contact information

## Built with

The website is built with:

- [Hugo](https://gohugo.io/)
- [HugoBlox](https://hugoblox.com/)
- GitHub Pages

## Updating the website

The main content is stored in Markdown, YAML and BibTeX files.

### Publications

Publications are maintained in:

`scripts/publications.bib`

After modifying the BibTeX file, run:

```bash
Rscript scripts/generate_publications.R

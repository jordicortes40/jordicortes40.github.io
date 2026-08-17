---
title: "CompARE"
summary: "Interactive Shiny application for designing clinical trials with composite endpoints."
weight: 30

image:
  caption: ""

---

## Overview

**CompARE** is an interactive **Shiny application** that brings the methodology implemented in the **CompAREdesign** R package to an intuitive web interface. It enables researchers, clinicians and trialists to design clinical trials with composite endpoints without requiring programming experience.

The application provides a guided workflow for exploring different trial design scenarios, comparing assumptions and visualising their impact on sample size and statistical power.

## Main Features

- User-friendly web interface requiring no programming.
- Design of clinical trials with composite endpoints.
- Interactive comparison of alternative design scenarios.
- Real-time calculation of sample size and power.
- Dynamic visualisation of design assumptions and results.
- Immediate export of numerical results and figures.

## Applications

CompARE supports researchers during the planning stage of randomized clinical trials, helping them evaluate different design options before initiating a study. It is particularly useful for studies involving composite endpoints where conventional sample size methods may be insufficient.

## Relationship with CompAREdesign

CompARE is built upon the statistical methodology implemented in the **CompAREdesign** R package. While the package provides a flexible programming environment for advanced users, CompARE offers an intuitive graphical interface that makes the methodology accessible to a much broader audience.

## Availability

- Web application: https://compare-composite.github.io/compare/
- R package: https://CRAN.R-project.org/package=CompAREdesign 
- Documentation: https://compare-composite.github.io/compare/appfeatures.html

## Goal

The objective of CompARE is to make advanced statistical methodology for clinical trial design accessible, transparent and reproducible through an interactive web application that can be used by both statisticians and non-statistical researchers.
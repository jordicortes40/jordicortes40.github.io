---
title: "CompAREdesign"
summary: "R package for designing randomized clinical trials with composite endpoints."
weight: 10

image:
  caption: ""

---

## Overview

**CompAREdesign** is an open-source **R package** developed to support the design of randomized clinical trials with composite endpoints. The package provides statistical methods for determining sample size and effect size under realistic scenarios where conventional design formulae may not be appropriate.

The package was developed to bridge methodological research and practical trial design, offering researchers flexible tools for planning studies involving both time-to-event and binary composite endpoints. :contentReference[oaicite:0]{index=0}

## Main Features

- Sample size calculation for composite time-to-event endpoints.
- Design of trials with binary composite endpoints.
- Sensitivity analyses under different assumptions.
- Evaluation of alternative trial design scenarios.
- Simulation tools for assessing design performance.

## Publication

The methodology and the package are described in:

> Cortés J, Bofill Roig M, Gómez G. *Design of Trials with Composite Endpoints with the R Package CompAREdesign*. arXiv, 2022. :contentReference[oaicite:1]{index=1}

## Availability

- CRAN *(add link)*
- GitHub *(add link)*
- Documentation *(add link)*
- Article: https://arxiv.org/abs/2211.02535

## Motivation

Composite endpoints are increasingly used in clinical research, but they introduce methodological challenges because the proportional hazards assumption often does not hold for the composite outcome, even when it does for its individual components. **CompAREdesign** provides practical tools to address these challenges and to support more reliable trial planning. :contentReference[oaicite:2]{index=2}
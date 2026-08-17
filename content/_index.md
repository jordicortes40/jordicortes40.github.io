---
title: ""
summary: ""
date: 2022-10-24
type: landing

sections:

  - block: resume-biography-3
    content:
      username: me
      text: ""
      button:
        text: Curriculum Vitae
        url: uploads/cv_jordi_cortes_martinez.pdf

    design:
      background:
        gradient_mesh:
          enable: true

      avatar:
        size: medium
        shape: circle

  - block: markdown
    content:
      title: Research Overview
      subtitle: ""
      text: |
        I develop **statistical methodology** and **open-source software**
        for biomedical and sports research.

        My work focuses on **biostatistics**, **sports analytics**,
        **clinical trials**, **survival analysis**, **reporting guidelines**,
        and **meta-research**, with a strong emphasis on reproducibility and
        methodological quality.

    design:
      columns: "1"

  - block: collection
    id: research
    content:
      title: Research Areas
      filters:
        folders:
          - research
    design:
      view: article-grid
      columns: 3

  - block: collection
    id: software
    content:
      title: Research Software
      text: Open-source software and interactive applications developed to support reproducible statistical research.
      filters:
        folders:
          - software
    design:
      view: article-grid
      columns: 3

  - block: markdown
    id: contact
    content:
      title: Contact
      subtitle: ""
      text: |
        I am always interested in new collaborations in biostatistics,
        sports analytics, clinical trials and research methodology.
    
        **Email:** [jordi.cortes-martinez@upc.edu](mailto:jordi.cortes-martinez@upc.edu)
    design:
      columns: "1"
---

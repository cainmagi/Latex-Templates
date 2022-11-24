# LaTeX Templates

## Introduction

This is a collection of LaTeX templates designed by Yuchen Jin (cainmagi). This collection does not include any Beamer templates. People who want to find the templates for slices and posters, should check [this repository][git-beamer]. Since some of them are adapted from other templates, we may apply different licenses to different templates. If anyone who want to use these templates, please pay attension to the licenses.

It is OK to place them in your `texmf-local` folder to make it work globally, but personally I suggest users place the files in any folder where your projects are stored. It will work locally for your specific LaTeX projects.

Most of these templates are class files (`.cls`). To make use of them, for example, if the template file name is `anyclass.cls`, just use the following code:

```latex
\documentclass[options]{anyclass}
```

Some of templates are style files (`.sty`), they could be used as a package by any of the following codes:

```latex
\usepackage[options]{anystyle}
\RequirePackage[options]{anystyle}
```

Currently this collection includes the following templates. If any template is left blank here, it means I am arranging it. That template would be uploaded in the future:

| Beamer title | Type | Screenshot|
| ----- | ----- | ----- |
| [SEG-abstract][ex-seg-abstract]                   | Paper   | [![][fig-seg-abstract]][ex-seg-abstract] |
| [NRSM-URSI abstract][ex-ursi]                     | Paper   | [![][fig-ursi]][ex-ursi]                 |
| [UH-ECE-Homework][ex-ecehw]                       | Article | [![][fig-ecehw]][ex-ecehw]               |
| [Revised IEEE Transaction][ex-ieeerev]            | Article | [![][fig-ieeerev]][ex-ieeerev]           |
| [UH Revised Thesis][ex-uhthesis]                  | Article | [![][fig-uhthesis]][ex-uhthesis]                   |
| [Assignment][ex-cka]                              | Article | [![][fig-cka]][ex-cka]                   |
| [Elegant Report][ex-ckegr]                        | Article | [![][fig-ckegr]][ex-ckegr]               |
| [Source Han Chinese support for XeLaTeX][ex-shan] | Style   | [![][fig-shan]][ex-shan]                 |

## Update report

### 1.0 @ 11/23/2020

1. Add the template: [UH Revised Thesis][ex-uhthesis].

### 0.9 @ 04/20/2020

1. Add the package: [Source Han Chinese support for XeLaTeX][ex-shan].

### 0.8 @ 04/19/2020

1. Add the template: [Elegant Report][ex-ckegr].
2. Fix some typos.

### 0.7 @ 04/18/2020

1. Add 2 templates: [Revised IEEE Transaction][ex-ieeerev] and [Assignment][ex-cka].

### 0.4 @ 03/19/2020

1. Add 3 templates: [SEG-abstract][ex-seg-abstract], [NRSM-URSI abstract][ex-ursi] and [UH-ECE-Homework][ex-ecehw].

### 0.1 @ 03/16/2020

1. Create this project.

[git-beamer]:https://github.com/cainmagi/UH-beamer-templates

[ex-seg-abstract]:../../tree/SEG-abstract
[ex-ursi]:../../tree/URSI
[ex-ecehw]:../../tree/ECE-homework
[ex-ieeerev]:../../tree/ieeerev
[ex-uhthesis]:../../tree/uhrevthesis
[ex-cka]:../../tree/assignment
[ex-ckegr]:../../tree/elegant-report
[ex-shan]:../../tree/sourcehan
[fig-seg-abstract]:./display/seg-abs.png
[fig-ursi]:./display/ursi.png
[fig-ecehw]:./display/ecehw.png
[fig-ieeerev]:./display/ieeerev.png
[fig-uhthesis]:./display/uhthesis.png
[fig-cka]:./display/cka.png
[fig-ckegr]:./display/ckegr.png
[fig-shan]:./display/shan.png
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
| SEG-abstract                            | Paper   |  |
| NRSM-URSI abstract                      | Paper   |  |
| UH-ECE-Homework                         | Article |  |
| Revised IEEE Transaction                | Article |  |
| Assignment                              | Article |  |
| Elegant Report                          | Article |  |
| Source Han Chinese support for XeLaTeX  | Style   |  |

## Update report

### 1.0 @ 03/16/2020

1. Create this project.

[git-beamer]:https://github.com/cainmagi/UH-beamer-templates
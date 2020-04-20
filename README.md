# LaTeX Templates

## Introduction

This template is adapted from the IEEE transaction. It is both compatible with pdfLaTeX and XeLaTeX. URSI 2019 has provided a template for using the IEEE transaction template to write the two-page summary (see [here][ursi]). According to the official example, we design this template for providing more supports.

The `NRSMRev.cls` is designed based on `IEEEtrans.cls`. This branch would provide both files. We make the following adaptions for supporting more features:

* **Introduce `hyperref`**: it will add hyperlinks to all referring tags. We provide options to disable this feature.
* **Support some packages**: we have integrate some useful packages, including AMS math packages, `graphicx`, `dsfont`, `tabularx`, `xcolor`, `subfigure`, `float`, `multicol`, `algorithm`, `listings`, `ntheorem`, `enumitem`, and `placeins`.
* **Add a pdf password**: This feature only supports XeLaTeX. It will enable you to add an owner password and a viewer password to the produced pdf file. 

## All options

The following options should only be enabled when using the class, like

```latex
\documentclass[option]{NRSMRev}
```

| Option | Description | Counter option | Default state |
| -----  |   -----     |      -----     |  -----  |
| `color`  | Add colors to all links. It would not influence the figures. | `gray` | Disabled |
| `draft`  | Use the draft mode of `IEEEtrans`, all figures would be replaced by placeholders, and the codes in the text would be skipped. | - | Disabled |
| `fleqn`  | Make the equations left-aligned. | `cteqn` | Disabled |
| `refNum` | Whether to add the section number to the reference section. This option may cause problem if you place appendices before the reference. | `norefNum` | Disabled |

The following options could be assigned in both the class options and the following command:

```latex
\NRSMsetup{
  option1=value1,
  option2=value2, ...
}
```

| Option | Description | Default value |
| -----  |   -----     |     -----     |
| `stitle`    | The title that would be shown in the macros of this file. | `Bare Demo of IEEERev.cls` |
| `sauthor`   | The author name that would be shown in the macros of this file. | `Yuchen Jin` |
| `subject`   | The subject that would be shown in the macros of this file. | `USNC-URSI National Radio Science Meeting` |
| `nohyper`   | A bool. Whether to disable the links created by `hyperref` package, note that the other features of this package would remain. | true |
| `codeStyle` | The style of the codes created by `listings`, could be either `box` or `default`. | `default` |
| `ownerPass` | This option is only compatible with XeLaTeX. It is the owner password. It would be required if anyone wants to edit the produced pdf file. | ` ` |
| `userPass`  | This option is only compatible with XeLaTeX. It is the user password. It would be required if anyone wants to open the produced pdf file. | ` ` |

## Example

| Example 1 | Example 2 |
| ----- | ----- |
| ![][ex-fig-1] | ![][ex-fig-2] |

## Update report

### 1.10 @ 03/19/2020

1. Remove useless features.
2. Adjust the `draft` mode.

### 1.05 @ 09/17/2018

1. Enable users to disable all links by `nohyper` option (enabled as default settings).

### 1.0 @ 09/15/2018

1. Creating this template: `URSI`.

[ursi]:https://nrsmboulder.org/abstract-submissions
[git-beamer]:https://github.com/cainmagi/UH-beamer-templates

[ex-fig-1]:./display/ursi-1.png
[ex-fig-2]:./display/ursi-2.png
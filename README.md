# LaTeX Templates

## Introduction

This template is adapted from the IEEE transaction. It is both compatible with pdfLaTeX and XeLaTeX. The official template package could be downloaded [here][ieeetran]. We design this template for providing more supports.

The `IEEERev.cls` is designed based on `IEEERev.cls`. This branch would provide both files. We make the following adaptions for supporting more features:

* **Introduce `hyperref`**: it will add hyperlinks to all referring tags. We provide options to disable this feature.
* **Support some packages**: we have integrate some useful packages, including AMS math packages, `graphicx`, `dsfont`, `tabularx`, `xcolor`, `subfigure`, `float`, `multicol`, `algorithm`, `listings`, `ntheorem`, `enumitem`, and `natbib`.
* **Add a pdf password**: This feature only supports XeLaTeX. It will enable you to add an owner password and a viewer password to the produced pdf file.

## All options

The following options should only be enabled when using the class, like

```latex
\documentclass[option]{IEEERev}
```

| Option | Description | Counter option | Default state |
| -----  |   -----     |      -----     |  -----  |
| `color`    | Add colors to all links. It would not influence the figures. | `gray` | Disabled |
| `draft`    | Use the draft mode of `IEEEtran`, all figures would be replaced by placeholders, and the codes in the text would be skipped. | - | Disabled |
| `twocols`  | Use the two-column and two-side mode of `IEEEtran`. If disabled, the one-column and one-side mode are used. | `onecol` | Enabled |
| `hyper`    | A bool. Whether to enable all features created by `hyperref` package, if set false, the `\autoref` command would be provided by `cleveref`. | `noHyper` | Enabled |
| `fleqn`    | Make the equations left-aligned. | `cteqn` | Disabled |
| `mainfont` | The main font. Could be selected from: `Romande`, `Palatino', 'Times', 'Stix', 'Helvetica`, and `Utopia` | - | `Romande` |

The following options could be assigned in both the class options and the following command:

```latex
\RITEsetup{
  option1=value1,
  option2=value2, ...
}
```

| Option | Description | Default value |
| -----  |   -----     |     -----     |
| `stitle`           | The title that would be shown in the macros of this file. | `Bare Demo of IEEERev.cls` |
| `sauthor`          | The author name that would be shown in the macros of this file. | `Yuchen Jin` |
| `organization`     | The organization name that would be shown in the heading and the macros. | `University of Houston` |
| `subject`          | The subject that would be shown in the heading and the macros. | `ECE 6000` |
| `version`          | The version that would be shown beside the date. Could be left blank. | ` ` |
| `refNum`           | A bool. Whether to add the section number to the reference section. This option may cause problem if you place appendices before the reference. | false |
| `repeatframetitle` | A bool. Whether to repeat the frame title if a frame is broken into two pages. | false |
| `codeStyle`        | The style of the codes created by `listings`, could be either `box` or `default`. | `default` |
| `ownerPass`        | This option is only compatible with XeLaTeX. It is the owner password. It would be required if anyone wants to edit the produced pdf file. | ` ` |
| `userPass`         | This option is only compatible with XeLaTeX. It is the user password. It would be required if anyone wants to open the produced pdf file. | ` ` |

## Example

| Example 1 | Example 2 |
| ----- | ----- |
| ![][ex-fig-1] | ![][ex-fig-2] |

## Update report

### 1.1 @ 04/17/2020

1. Adjust the settings for the figures.
2. Add `natbib` to the class.
3. Provide an explicit draft mode and an one-column mode.
4. Provide an option for disabling the `hyperref` package.
5. Remove useless options and packages.

### 1.0 @ 09/15/2018

1. Creating this template. Only support English now. If need, there will be some extensions in the future. (Now the Chinese support would be designed by a package instead of modifying the template.)

[ieeetran]:https://www.ctan.org/pkg/ieeetran
[git-beamer]:https://github.com/cainmagi/UH-beamer-templates

[ex-fig-1]:./display/ieeerev-1.png
[ex-fig-2]:./display/ieeerev-2.png
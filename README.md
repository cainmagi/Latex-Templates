# LaTeX Templates

## Introduction

This template is designed based on `article` class directly. It supports both `pdfLaTeX` and `XeLaTeX`, and could be used for writing homework or writing reports. It has the following features:

* **Support some useful packages**: we have integrate some useful packages, including AMS math packages, `graphicx`, `tabularx`, `multirow`, `xcolor`, `subfigure`, `float`, `multicol`, `algorithm`, `listings`, `mdframed`, `enumitem`, `natbib` and `hyperref`.
* **Support some uncommon math symbols**: we have introduced `dsfont` to support `\mathds`. `bbding`, `textcomp` and `wasysym` are also introduced for providing more uncommon symbols.
* **Support multiple kinds of main fonts**: Use an option to switch the main font easily.
* **Add a pdf password**: This feature only supports XeLaTeX. It will enable you to add an owner password and a viewer password to the produced pdf file. 

We have provided an example in this branch. It shows the class could work well without warnings by using TeXLive 2019.

## All options

The following options should only be enabled when using the class, like

```latex
\documentclass[option]{ECEHW}
```

| Option | Description | Counter option | Default state |
| -----  |   -----     |      -----     |  -----  |
| `color` | Make links, section titles and frames colored. The default gray mode is more suitable for printing. If this option is enabled, and there is a file named `ece-logo.eps` in the work folder, this file would be used as a logo in the title. | `gray` | Disabled |
| `draft` | Use the draft mode, all figures would be replaced by placeholders, and the codes in the text would be skipped. | - | Disabled |
| `fleqn` | Make the equations left-aligned. | `cteqn` | Enabled |

The following options could be assigned in both the class options and the following command:

```latex
\ECEHWsetup{
  option1=value1,
  option2=value2, ...
}
```

| Option | Description | Default value |
| -----  |   -----     |     -----     |
| `title`            | The title of this article. Would be used for constructing the title and pdf macros. | `Homework 0:~Template` |
| `author`           | The author name that would be shown in the heading and the macros. | `Yuchen Jin` |
| `organization`     | The organization name that would be shown in the heading and the macros. | `University of Houston` |
| `subject`          | The subject that would be shown in the heading and the macros. | `ECE 6000` |
| `version`          | The version that would be shown beside the date. Could be left blank. | ` ` |
| `refNum`           | A bool. Whether to add the section number to the reference section. This option may cause problem if you place appendices before the reference. | false |
| `repeatframetitle` | A bool. Whether to repeat the frame title if a frame is broken into two pages. | true |
| `codeStyle`        | The style of the codes created by `listings`, could be either `box` or `default`. | `default` |
| `mainfont`         | The main font. Could be selected from: `Romande`, `Palatino', 'Times', 'Stix', 'Helvetica`, and `Utopia` | `Romande` |
| `ownerPass` | This option is only compatible with XeLaTeX. It is the owner password. It would be required if anyone wants to edit the produced pdf file. | ` ` |
| `userPass`  | This option is only compatible with XeLaTeX. It is the user password. It would be required if anyone wants to open the produced pdf file. | ` ` |

The class also provides environments, use them as:

```latex
\begin{envname}
  ...
\end{envname}
```

The enviorments are listed as below:

| Name | Description |
|----- |   -----     |
| `theorem`  | This environment is used for writing theorems. |
| `exercise` | This environment is used for writing the contents of a problem in the exercise. |
| `solution` | This environment is used for writing the solution of a problem in the exercise. It supports an argument. If not set, the environment would begin with `Solution:`. If set as `proof`, the environment would begin with `Proof:` and end with a proved symbol. |

## Example

| Example 1 | Example 2 |
| ----- | ----- |
| ![][ex-fig-1] | ![][ex-fig-2] |

## Update report

### 1.3 @ 03/19/2020

1. Add two environments: theorem and solution.
2. Add the natbib package.
3. Make some adjustments for removing useless features.
4. We are planning to support Chinese by a package rather than adding feature to this class.

### 1.2 @ 09/01/2017

1. Introduce the font option.
2. Adjust the vertical skip between texts and formulas.
3. Add reference reformation option.

### 1.1 @ 08/30/2017

1. Introduce color sequence which would make this template more impressive.
2. Provide hyperref extensions.
3. Provide encryption options.
4. Adjust the format of the section.

### 1.0 @ 08/29/2017

* Creating this `ECE-homework` template. Only support English now. If need, there will be some extensions in the future.

[git-beamer]:https://github.com/cainmagi/UH-beamer-templates

[ex-fig-1]:./display/ecehw-1.png
[ex-fig-2]:./display/ecehw-2.png
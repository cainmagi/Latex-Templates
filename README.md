# LaTeX Templates

## Introduction

This template is adapted from the template of [Chinese Journal of Applied Probability and Statistics][japs]. I appreciate the work of the orignal author, but this template is quite different from the original one. I have tested it under `pdfLaTeX`, `LuaLaTeX` and `XeLaTeX`. The `XeLaTeX` is most recommended. In this template, we make such adaptions:

* **Remove Chinese features**: All supports specialized for Chinese are removed. This template could work properly with pure English text.
* **Support useful packages**: we have integrate some useful packages, including AMS math packages, `graphicx`, `tabularx`, `xcolor`, `subfigure`, `float`, `multicol`, `algorithm`, `listings`, `ntheorem`, `enumerate`, `appendix`, `pdfpages`, and `natbib`.
* **Extra enhancements**: Specially designed table style, quote style and caption styles.
* **Add a pdf password**: This feature only supports XeLaTeX. It will enable you to add an owner password and a viewer password to the produced pdf file.

## All features

The basic font of this class is Libertine. The monofont is also specially configured, no matter which compiler you are working with. 

### Class options

The following options should only be enabled when using the class, like

```latex
\documentclass[option]{CKEgr}
```

| Option | Description | Counter option | Default state |
| -----  |   -----     |      -----     |  -----  |
| `draft`      | Use the draft mode of `article`, all figures would be replaced by placeholders, and the codes in the text would be skipped. | `final` | Disabled |
| `linkColor`  | Add colors to all links. It would not influence the figures. | `noInnerSig` | Disabled |
| `innerSig`   | Add a signature to the front page. | `onecol` | Disabled |
| `CSensLabel` | Add a section number to all table, figure . | `TSensLabel` | Disabled |
| `refNum`     | Add a number to the reference section. | `noRefNum` | Disabled |

### CKE configurations

The following options could be assigned in both the class options and the following command:

```latex
\ckesetup{
  option1=value1,
  option2=value2, ...
}
```

The following list shows the options related to the report information.

| Option | Description | Default value |
| -----  |   -----     |     -----     |
| `title`            | The title of this report. | `Report for a Particular Subject` |
| `author`           | The author of this report. Now we do not provide good supports for multiple authors. | `Yuchen Jin` |
| `campus`           | The name of the organization. | `University of Houston` |
| `scampus`          | The abbreviation of the organization. | `UH` |
| `location`         | The location of the author. | `4800 Calhoun Road, Houston, TX, 77002` |
| `slocation`        | The abbreviation of the author. | `ECE 6000` |
| `subject`          | The subject of this report. | `math` |
| `keyword`          | The keywords displayed in the abstract. | `keywords` |
| `amsno`            | The AMS number of this report. If not set, the AMS number would not be displayed in the abstract. | `none` |
| `abstract`         | The text for the abstract. | `Example abstract.` |

The following list shows the options related to the headings and footnotes.

| Option | Description | Default value |
| -----  |   -----     |     -----     |
| `turn`             | The experiment number, displayed in the headings. | `1` |
| `numb`             | The report number, displayed in the headings. | `1` |
| `modified`         | The number of modifications, displayed in the footnote. If set 0, the paper would be viewed as initially drafted. | `0` |
| `originyear`       | The year of originally drafting the report, displayed in the footnote. If `modified` is 0, this argument would not work. | `2017` |
| `originmonth`      | The month of originally drafting the report, displayed in the footnote. If `modified` is 0, this argument would not work. | `1` |
| `origindate`       | The date of originally drafting the report, displayed in the footnote. If `modified` is 0, this argument would not work. | `1` |
| `authorinfo`       | The information of the author, displayed in the footnote. | See the example. |
| `titlenote`        | The footnote for the title, if not `none`, this message would override the configurations about `originyear`, `originmonth`, `origindate` and `modified`. | `none` |
| `authornote`       | The footnote for the author, if not `none`, this message would override the configurations about `authorinfo`. | `none` |

The following list shows the options related to the front page.

| Option | Description | Default value |
| -----  |   -----     |     -----     |
| `colledge`         | The name of the colledge or department. | `Department of Electrical and Computer Engineering` |
| `quote`            | The quote of the organization. | `Cougars fight for dear old U of H` |

The following list shows the options related to the encryption. Only when you compile the document by `XeLaTeX`, the passwords would work.

| Option | Description | Default value |
| -----  |   -----     |     -----     |
| `ownerPass`        | This option is only compatible with XeLaTeX. It is the owner password. It would be required if anyone wants to edit the produced pdf file. | ` ` |
| `userPass`         | This option is only compatible with XeLaTeX. It is the user password. It would be required if anyone wants to open the produced pdf file. | ` ` |

The following list shows the other options.

| Option | Description | Default value |
| -----  |   -----     |     -----     |
| `codeStyle`        | The style of the codes created by `listings`, could be either `box` or `default`. | `default` |

### Commands

This class provides some commands.

| Option | Description | Example |
| -----  |   -----     |     -----     |
| `\maketitle`       | This command is used to make title. | - |
| `\makeabstract`    | This command is used to make abstract. | - |
| `\titlepage`       | This command is used to make a front page. Now it supports two styles. Use the argument `1` or `2` to switch the style. | `\titlepage{1}` |
| `\reneweqnum`, `\renewtabnum`, `\renewfignum`, `\renewsecnum` | These commands are used for resetting the counter of equation, table, figure or sections. | `\reneweqnum{2}` |
| `\upcite` | This command is used for cite a paper in the superscript. | `\upcite{bibitem}` |
| `\import` | This command is used for including an external `.tex` file in the `./Documents` folder | `\import{example.tex}` |
| `\includepage{pages}{filename}` | This command is used for including a pdf file. Use `\includepagetoc{pages}{filename}{title}` if you want the pdf file added in the contents | `\includepage{-}{pdfs/example.pdf}` |
| `\innerSignature` | This command is used for adding a signature in the front page. If you enable `innerSig`, you need to renew this command | - |
| `\CKEcontents{type}{app}` | This command is used for adding contents. The first argument is the type of contents. If set blank, the contents would refer to the whole report. The second argument is the title of the content, if left blank, would generate the title automatically. | `\CKEcontents{}{}` |

### Environments

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
| `question` | This environment is used for writing the contents of a question in the exercise. |
| `proof`    | This environment is used for writing the proof. |
| `shadequote` | This environment is used for writing a quote. See the example for checking the usage. |
| `multicol` | This environment is used for writing in the multi-column mode. In this mode, all floats should be configured by `H`, except those cross-column floats. |
| `signature` | This environment is used for writing a signature. See the example for checking the usage. |

## Example

| Example 1 | Example 2 |
| ----- | ----- |
| ![][ex-fig-1] | ![][ex-fig-2] |

## Update report

### 1.7 @ 04/19/2020

1. Make the APIs more neat.
2. Remove useless features.
3. Redefine the support of multi-figures.
4. Remove the Chinese related supports.
5. Merge some commands, like `\nhyperset`, `\Coding` with `\ckesetup`, now users do not need to call them explicitly.

### 1.5 @ 06/30/2017

1. Adding 5 new options for users: `LongFlo`, `CSensLabel`, `UpInclude`, `ChineseTOC`, `RefNum` and `sourcehan`.
2. Change the form of the footnotes of title and author. Now users could use `titlenote` and `authnote` to define them flexiblely.
3. Adding command `nbrac` so that users could use them to add bracket notes.

### 1.2 @ 08/27/2016

1. Optimize the code of the monthname by utilize `datetime`.
2. Adding a new command to produce the content: `\CKEcontents`. It allows users to produce the main content and the other types of lists.
3. Adding a new environment named `shadequote`. It is a refined quote environment to emphasize the cited part.

### 1.1 @ 06/23/2016

1. Adding the coding command: `\Coding:{Ownerpass, Userpass}`. An userpass with `none` will cancel the userpass (default).
2. Adding a new environment: `Signature`.

### 1.0 @ 06/07/2016

1. Creating this template.

[japs]:http://aps.ecnu.edu.cn/CN/column/column291.shtml
[git-beamer]:https://github.com/cainmagi/UH-beamer-templates

[ex-fig-1]:./display/ckegr-1.png
[ex-fig-2]:./display/ckegr-2.png
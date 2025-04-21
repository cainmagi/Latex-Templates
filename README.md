# LaTeX Templates

## Introduction

This template is adapted from the UH Thesis Style File. It is both compatible with `pdfLaTeX` and `XeLaTeX`. UH Department of Computer Science has provided a template for writing the master thesis or the Ph.D dissertation (see [here :link:][uhthesis]). According to the official example, we design this template for providing more supports.

In this package, we mainly make the following three modifications:

1. **Fix the compatibility issues**: Fix an important compatibility issue of the original `uhthesis2019.sty`. The official style file is not compatible with the `xcolor` package since TeXLive 2020. The modified `uhthesis2019.sty` in this package has fixed this problem. We also add an option to improve the compatibility with the `hyperref` package.

2. **Support more packages**: Provide a `uhrevthesis.cls` for incorporating some quite widely used packages, including:

   | Package                                              | Usage                                                        |
   | :--------------------------------------------------- | :----------------------------------------------------------- |
   | `hyperref`, `hypcap`                                 | Add hyper links to all references and titles. Will only works if specified `hyper` option. |
   | `setspace`                                           | Control the line spacing with `\setstrecth` or `\renewcommand{\baselinestretch}` |
   | `geometry`                                           | Configure the page size.                                       |
   | `indentfirst`                                        | Provide features for letting the first paragraphs with indent. |
   | `mfirstuc`                                           | Provide title case features. | 
   | `amsmath`                                            | Provide mathematical environments.                             |
   | `amssymb`, `amsbsy`, `dsfont`, `bm`                  | Provide mathematical symbols and fonts.                        |
   | `graphicx`, `epstopdf`, `bmpsize`                    | Provide functionalities to use images.                         |
   | `multirow`, `tabularx`, `array`                      | Provide more features for drawing complicated tables.          |
   | `xcolor`, `colortbl`                                 | Packages about colors.                                         |
   | `float`, `caption`, `subfig`, `stfloats`, `placeins` | Provide complicated float environments for placing tables and figures. |
   | `multicol`                                           | Provide the multi-column text feature.                         |
   | `algorithm`, `algorithmic`                           | Provide environments for describing algorithms.                |
   | `enumitem`                                           | Reformat the Enumerate / Itemize environments.                 |
   | `siunitx`                                            | Provide commands about SI Units.                               |

3. **Add a pdf password**: This feature only supports XeLaTeX. It will enable you to add an owner password and a viewer password to the produced pdf file. 

## All options

The following options should only be enabled when using the class, like

```latex
\documentclass[option]{uhrevthesis}
```

|  Option  |  Description  |  Counter option  |  Default state  |
| :------: | ------------- | :--------------: | --------------- |
| `hyper`  | Add colors to all links. It would not influence the figures. | `nohyper` | Disabled |
| `draft`  | Use the draft mode of `article`, all figures would be replaced by placeholders, and the `hyperref` package (if used) will also work in draft mode. | `final` | Disabled |
| `indentfirst`    | A flag. When configured, make the first paragraphs of each (sub) sections with indents. | `noindentfirst` | Enabled |
| `usesibinary` | A flag. When configured, provide the features of the binary units of the `siunitx` package. Note that this option is not available since TeXLive 2023, where the binary units will be enabled by default. | - | Disabled |

The following options could be assigned in both the class options and the following command:

```latex
\UHRevThesisSetup{
  option1=value1,
  option2=value2, ...
}
```

|       Option      |  Description  |  Default value  |
| :---------------: | ------------- | --------------- |
| `title`           | The title that would be shown in the cover page and the macros of this file. | `Sample Thesis Title - Long, Wide, and Words Capitalized` |
| `author`          | The author name that would be shown in the cover page and the macros of this file. | `Maya K. Student` |
| `degree`          | The degree to be fetched. When being blank, will use the default value. | ` ` |
| `department`      | The name of the department. Do **not** need to include `"Department of ..."`. | `Electrical and Computer Engineering` |
| `college`         | The name of the college. **Need** to include `"College of ..."`. | `Cullen College of Engineering` |
| `submitdate`      | The date of the submission. If needing to use commands for this option, recommend to use `\submitdate{}` to configure this option. When being blank, will use `\today`. | ` ` |
| `refname`         | The title of the references. It can also get configured by `\renewcommand{\refname}{...}`. | `References` |
| `sectitlestyle`   | The style of the section titles. It can be `title` (title case), `upper` (upper case), or `normal` (not changed). More details can be seen in note 1. | `title` |
| `copyrightyear`   | The year shown in the copyright page. When being blank, will use the current year. | ` ` |
| `ownerPass`       | This option is only compatible with `XeLaTeX`. It is the owner password. It would be required if anyone wants to edit the produced pdf file. | ` ` |
| `userPass`        | This option is only compatible with `XeLaTeX`. It is the user password. It would be required if anyone wants to open the produced pdf file. | ` ` |
| `chair`           | The name of the committee chair. | `Name of Chair Professor` |
| `cochair`         | The name of the committee chair. Can be blank. | ` ` |
| `firstreader`     | The name of the 1st committee member. | `Name of Prof1` |
| `secondreader`    | The name of the 2nd committee member. | `Name of Prof2` |
| `thirdreader`     | The name of the 3rd committee member. Can be blank. | ` ` |
| `fourthreader`    | The name of the 4th committee member. Can be blank. | ` ` |
| `fifthreader`     | The name of the 5th committee member. Can be blank. | ` ` |
| `hypercolor`      | A flag. When configured, make all links with colors (require to specify the option "hyper" first). (Counter option: `nohypercolor`) | true |
| `captionhang`     | A flag. When configured, make all captions with hanging indents. Otherwise, use the plain caption indents. (Counter option: `nocaptionhang`) | true |
| `refdoublespace`  | A flag. When configured, make the references double-spaced. Otherwise, use the single space. (Counter option: `refsinglespace`) | true |
| `titlebold`       | A flag. When configured, make the title font bold. (Counter option: `titlenormal`) | false |
| `lstoftable`      | A flag. When configured, print the list of tables page. (Counter option: `nolstoftable`) | true |
| `lstoffigure`     | A flag. When configured, print the list of figures page. (Counter option: `nolstoffigure`) | true |
| `lstoftablefirst` | A flag. When configured, make the list of tables before the list of figures. (Counter option: `lstoffigurefirst`) | true |
| `copyright`       | A flag. When configured, print the copyright page. (Counter option: `nocopyright`) | true |
| `thesis`          | A flag. Treat the manuscript as a thesis. Otherwise, will treat it as a dissertation. (Counter option: `dissertation`) | false |

Notes:

1. The title case means that the first character of all words are capitalized, except for these words: "a", "an", "the", "and", "as", "but", "for", "if", "nor", "or", "so", "yet", "at", "by", "in", "of", "off", "on", "per", "to", "up", "via", "with".

## All commands

|         Command        |        Description       |
| :--------------------: | ------------------------ |
| `\makecoverpages`      | Used to make a modified title. No options are required. |
| `\makecontentspages`   | Used to make the table of contents. No options are required. |
| `\sectionalt`          | Used to create the section title (highest level). It is used for replacing the built-in `\section` but not for replacing `\section*`. |
| `\monthyeardate\today` | Print out the date like "November 2022" |
| `\usdate\today`        | Print out the date like "November 23, 2022" |
| `\usvardate\today`     | Print out the date like "November 23th, 2022" |
| Other commands...      | Provided by `uhthesis2019.sty`, see the comments of the style file. |

## Extended math operators

|         Command        |        Description       |
| :--------------------: | ------------------------ |
| `\tRe`, `\tIm`         | "Re" and "Im". |
| `\arcsinh`, `\arccosh` | "sinh" and "cosh". |
| `\qED`                 | Right-aligned QED command. |
| `\argmax`, `\argmin` | Math symbols for defining an optimization: "argmax" and "argmin" |
| `\mean`, `\std`        | "mean" and "std". |
| `\intd`                | "d" appearing as the differential operator in integration. |
| `\expect`              | "E" with a `\mathbb` style. |

## Example

| Example 1 | Example 2 |
| :-----: | :-----: |
| ![][ex-fig-1] | ![][ex-fig-2] |

## Update report

### 1.2.4 @ 04/21/2025

1. Fix the issue caused by the deprecated option `binary-units` of `siunitx`.

### 1.2.3 @ 12/14/2022

1. Add text option: `sectitlestyle`.
2. Adjust the space of table of contents, list of tables and list of figures.
3. Enable users to make all section titles in the title case.

### 1.2.2 @ 12/13/2022

1. Enable the binary units for the `siunitx` package.
2. Provide an option `titlebold` for making the title font bold.

### 1.2.1 @ 12/10/2022

1. Fix the package loading order for the `hyperref` pacakge. This may avoid some unexpected bugs especially for AMS pacakges.

### 1.2.0 (patched) @ 12/7/2022

1. Fix some typos in the files and the Readme file. They do not influence the performance.

### 1.2.0 @ 12/7/2022

1. Add bool option: `lstoftablefirst`.
2. Change: Make the list of tables before the list of figures. This feature can be disabled if specifying `lstoffigurefirst`.
3. Change the default `\refname`: "Reference" -> "References".

### 1.1.4 (patched) @ 12/7/2022

1. Fix a bug caused by the template information.
2. Make the example of dedication looks better.

### 1.1.4 @ 12/6/2022

1. Add a math operator: `\mathand`.

### 1.1.3 @ 11/30/2022

1. Fix the wrong vertical trailing space of the `\parbox`.
2. Make the default global table row stretch changed to `1.3`.

### 1.1.2 @ 11/30/2022

1. Fix the indent of dedication, acknowledgements, and abstract.
2. Fix a typo in the package info.

### 1.1.1 @ 11/30/2022

1. Fix the wrong link positions in the table of contents.
2. Fix the wrong leading space of some titles.
3. Fix the size of some titles.
4. Add bool option: `hypercolor`. If disabled, will make all links black.

### 1.1.0 @ 11/29/2022

1.  Add bool options: `indentfirst`, `captionhang`, and `refdoublespace`.
2.  Add text options: `refname`, `copyrightyear`.
3.  Enable users to make the first paragraphs with indents.
4.  Enable users to make captions with hanging indents.
5.  Enable users to make the reference double-spaced.
6.  Enable users to change the title of the reference.
7.  Enable users to change the year of the copyright page. If configured, now the package will use the current year.
8.  Make the following options default: `indentfirst`, `captionhang`, `refdoublespace`, and `refname=Reference`.
9.  Change the default margin of the page: `all=1.0in` except `left=1.5in`.
10.  Fix typos of the password configurations (only works with `XeLaTeX`).
11.  Fix the misplacement of the toc tag for the list of figures and the list of tables.

### 1.0.0 @ 11/23/2022

1. Incorporate all required packages.
2. Fix the `\xfloat` issue of the original template when using `TeXLive >=2020`.
3. Improve the compatibility with hyperref package.

### 0.1.0 @ 11/15/2022

1. Creating this template `uhrevthesis.cls`.

[uhthesis]:https://uh.edu/nsm/students/graduate/thesis-guidelines/thesis-instructions/

[ex-fig-1]:./display/uhthesis-1.png
[ex-fig-2]:./display/uhthesis-2.png

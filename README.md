# LaTeX Templates

## Introduction

This template is adapted from the Springer Verlag Global LaTeX2e Support for Multi-authored Books (SVMULT). It is both compatible with `pdfLaTeX` and `XeLaTeX`. The documentation of the original SVMULT can be found [here :link:][svmult-doc]. According to the official example, we design this template for providing more supports.

In this package, we mainly make the following three modifications:

1. **Fix the compatibility issues**: Fix a severe compatibility issue between `svmult`, `natbib`, and `hyperref`

2. **Support more packages**: Provide a `svmultrev.cls` for incorporating some quite widely used packages, including:

   | Package                                   | Usage                                                        |
   | :---------------------------------------- | :----------------------------------------------------------- |
   | `hyperref`                                | Add hyper links to all references and titles. Will only works if specified `hyper` option. |
   | `type1cm`, `newtxtext`, `newtxmath`         | Specify the main font as the times fonts.                  |
   | `mfirstuc`                                | Provide title case features.                                 |
   | `makeidx`                                 | Provide index generation.                                 |
   | `amsmath`                                 | Provide mathematical environments.                           |
   | `amssymb`, `amsbsy`, `dsfont`, `bm`       | Provide mathematical symbols and fonts.                      |
   | `graphicx`, `epstopdf`, `bmpsize`         | Provide functionalities to use images.                       |
   | `multirow`, `tabularx`, `array`           | Provide more features for drawing complicated tables.        |
   | `footmisc`                                | Configure the position of the footnote.                      |
   | `xcolor`, `colortbl`                      | Packages about colors.                                       |
   | `float`, `subfig`, `stfloats`, `placeins` | Provide complicated float environments for placing tables and figures. |
   | `multicol`                                | Provide the multi-column text feature.                       |
   | `algorithm`, `algorithmic`                | Provide environments for describing algorithms.              |
   | `siunitx`                                 | Provide commands about SI Units.                             |
   | `url`                                     | Provide features about URLs.                                 |

3. **Add a pdf password**: This feature only supports XeLaTeX. It will enable you to add an owner password and a viewer password to the produced pdf file. 

## All options

The following options should only be enabled when using the class, like

```latex
\documentclass[option]{svmultrev}
```

|  Option  |  Description  |  Counter option  |  Default state  |
| :------: | ------------- | :--------------: | --------------- |
| `hyper`  | Add colors to all links. It would not influence the figures. | `nohyper` | Disabled |
| `draft`  | Use the draft mode of `article`, all figures would be replaced by placeholders, and the `hyperref` package (if used) will also work in draft mode. | `final` | Disabled |
| `natbib` | A flag. When configured, use the `natbib` package to provide references. | `nonatbib` | Enabled |
| `authoryear` | A flag. When configured, use an `authoryear` style bibliography style. This flag only works when `natbib` is specified. | `numcit` | Disabled |
| `nospthms` | A flag. When configured, disable the Springer special theorem environment. | - | Disabled |
| `vecphys` | A flag. When configured, use the physics style to specify the `\vec` symbols. | - | Disabled |
| `vecarrow` | A flag. When configured, use the arrow style to specify the `\vec` symbols. | - | Disabled |
| `fleqn` | A flag. When configured, make equations left aligned. | - | Disabled |
| `graybox` | A flag. When configured, provide the special environment `svgraybox`. | - | Disabled |


The following options could be assigned in both the class options and the following command:

```latex
\SVMULTRevSetup{
  option1=value1,
  option2=value2, ...
}
```

|       Option      |  Description  |  Default value  |
| :---------------: | ------------- | --------------- |
| `title`           | The title of the chapter. It only appears in the PDF meta data. | `Draft for Springer Book， LLNCS Template` |
| `author`          | The name of the authors. It only appears in the PDF meta data. | `Yuchen Jin` |
| `institute`       | The name of the institutes. It only appears in the PDF meta data. | `University of Houston` |
| `ownerPass`       | This option is only compatible with `XeLaTeX`. It is the owner password. It would be required if anyone wants to edit the produced pdf file. | ` ` |
| `userPass`        | This option is only compatible with `XeLaTeX`. It is the user password. It would be required if anyone wants to open the produced pdf file. | ` ` |
| `hypercolor`      | A flag. When configured, make all links with colors (require to specify the option "hyper" first). (Counter option: `nohypercolor`) | true |

Notes:

1. The title case means that the first character of all words are capitalized, except for these words: "a", " an", " the", " and", " as", " but", " for", " if", " nor", " or", " so", " yet", " at", " by", " in", " of", " off", " on", " per", " to", " up", " via", " with".

## All commands

|          Command          | Description                                                  |
| :-----------------------: | ------------------------------------------------------------ |
|       `\makeindex`       | Used for the subject index please use the style `svind.ist` with your `makeindex` program. |
|       `\maketitle`        | Create the title and the author information.                 |
| `\title`, `\titlerunning` | Define the full title, and the short title shown on the top margin, respectively. |
| `\author`, `\authorrunning` | Define the full author list, and the short author mark shown on the top margin, respectively. Use `\and` to separate authors. |
| `\institute`              | Define the institutes of the authors. Use `\and` to separate institutes. |
| `\toctitle`, `\tocauthor` | The title and authors shown in the table of contents of the book. Since this template is based on `article`, currently it is not used. |
|  `\monthyeardate\today`   | Print out the date like "November 2022"                      |
|      `\usdate\today`      | Print out the date like "November 23, 2022"                  |
|    `\usvardate\today`     | Print out the date like "November 23th, 2022"                |
|     Other commands...     | Provided by `svmult.cls`, see the [original documentation :notebook:][svmult-doc]. |

## Extended math operators

|         Command        |        Description       |
| :--------------------: | ------------------------ |
| `\tRe`, `\tIm`         | "Re" and "Im". |
| `\arcsinh`, `\arccosh` | "sinh" and "cosh". |
| `\qED`                 | Right-aligned QED command. |
| `\argmax`, `argmin   ` | Math symbols for defining an optimization: "argmax" and "argmin" |
| `\mean`, `\std`        | "mean" and "std". |
| `\intd`                | "d" appearing as the differential operator in integration. |
| `\expect`              | "E" with a `\mathbb` style. |

## Example

| Example 1 | Example 2 |
| :-----: | :-----: |
| ![][ex-fig-1] | ![][ex-fig-2] |

## Update report

### 1.0.0 @ 1/5/2023

1. Create the template.

[svmult-doc]:https://usermanual.wiki/Document/SpringerReferenceGuide.952151946/view

[ex-fig-1]:./display/svmultrev-1.png
[ex-fig-2]:./display/svmultrev-2.png

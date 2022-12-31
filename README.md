# LaTeX Templates

## Introduction

This template is adapted from the Springer Class for Lecture Notes in Computer Science (LLNCS).. It is both compatible with `pdfLaTeX` and `XeLaTeX`. The newest LLNCS class can be found on CTAN (see [here :link:][llncs]). The documentation of the original LLNCS can be found [here :link:][llncs-doc]. According to the official example, we design this template for providing more supports.

In this package, we mainly make the following three modifications:

1. **Fix the compatibility issues**: Fix a small compatibility issue between the original `llncs.cls` and the `amsmath` package. The `amsmath`needs to be loaded before the definition of `\vec`.

2. **Support more packages**: Provide a `llncsrev.cls` for incorporating some quite widely used packages, including:

   | Package                                              | Usage                                                        |
   | :--------------------------------------------------- | :----------------------------------------------------------- |
   | `hyperref`, `hypcap`                                 | Add hyper links to all references and titles. Will only works if specified `hyper` option. |
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
   | `url`                                                | Provide features about URLs.                              |

3. **Add a pdf password**: This feature only supports XeLaTeX. It will enable you to add an owner password and a viewer password to the produced pdf file. 

## All options

The following options should only be enabled when using the class, like

```latex
\documentclass[option]{llncsrev}
```

|  Option  |  Description  |  Counter option  |  Default state  |
| :------: | ------------- | :--------------: | --------------- |
| `hyper`  | Add colors to all links. It would not influence the figures. | `nohyper` | Disabled |
| `draft`  | Use the draft mode of `article`, all figures would be replaced by placeholders, and the `hyperref` package (if used) will also work in draft mode. | `final` | Disabled |
| `authoryear` | A flag. When configured, use an `authoryear` style bibliography style. | `numcit` | Disabled |

The following options could be assigned in both the class options and the following command:

```latex
\LLNCSRevSetup{
  option1=value1,
  option2=value2, ...
}
```

|       Option      |  Description  |  Default value  |
| :---------------: | ------------- | --------------- |
| `title`           | The title of the chapter. It only appears in the PDF meta data. | `Draft for Springer Book， LLNCS Template` |
| `author`          | The name of the authors. It only appears in the PDF meta data. | `Yuchen Jin` |
| `institute`       | The name of the institutes. It only appears in the PDF meta data. | `University of Houston` |
| `keywords`        | The keywords of the article. It will appears in the PDF meta data and the abstract. It can be configured by `\keywords` automatically. | ` ` |
| `ownerPass`       | This option is only compatible with `XeLaTeX`. It is the owner password. It would be required if anyone wants to edit the produced pdf file. | ` ` |
| `userPass`        | This option is only compatible with `XeLaTeX`. It is the user password. It would be required if anyone wants to open the produced pdf file. | ` ` |
| `hypercolor`      | A flag. When configured, make all links with colors (require to specify the option "hyper" first). (Counter option: `nohypercolor`) | true |

Notes:

1. The title case means that the first character of all words are capitalized, except for these words: "a", " an", " the", " and", " as", " but", " for", " if", " nor", " or", " so", " yet", " at", " by", " in", " of", " off", " on", " per", " to", " up", " via", " with".

## All commands

|          Command          | Description                                                  |
| :-----------------------: | ------------------------------------------------------------ |
|       `\mainmatter`       | Only works when using `report` template. It will change the behavior back to the expected version, and resets the page number. Since this template is based on `article`, currently it is not used. |
|       `\maketitle`        | Create the title and the author information.                 |
| `\title`, `\titlerunning` | Define the full title, and the short title shown on the top margin, respectively. |
| `\author`, `\authorrunning` | Define the full author list, and the short author mark shown on the top margin, respectively. Use `\and` to separate authors. |
| `\institute`              | Define the institutes of the authors. Use `\and` to separate institutes. |
| `\toctitle`, `\tocauthor` | The title and authors shown in the table of contents of the book. Since this template is based on `article`, currently it is not used. |
| `\keywords`     | Keywords of this chapter. |
|  `\monthyeardate\today`   | Print out the date like "November 2022"                      |
|      `\usdate\today`      | Print out the date like "November 23, 2022"                  |
|    `\usvardate\today`     | Print out the date like "November 23th, 2022"                |
|     Other commands...     | Provided by `llncs.cls`, see the [original documentation :notebook:][llncs-doc]. |

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

### 1.0.0 @ 12/31/2022

1. Create the template.
2. Bump the base class llncs to ver `2.22`.

[llncs]:https://ctan.org/pkg/llncs
[llncs-doc]:https://ctan.math.utah.edu/ctan/tex-archive/macros/latex/contrib/llncs/llncsdoc.pdf

[ex-fig-1]:./display/llncsrev-1.png
[ex-fig-2]:./display/llncsrev-2.png

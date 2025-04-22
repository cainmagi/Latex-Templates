# LaTeX Templates

## Introduction

This template is adapted from the [vtex-soft/texsupport.elsevier-book :link:][link-elsevier-book]. It is both compatible with `pdfLaTeX` and `XeLaTeX`. . According to the official example, we design this template for providing more supports.

The documentation of the original *Elsevier book* template can be found [here :link:][link-elsdoc]

In this package, we mainly make the following three modifications:

1. **Make the file better arranged**: Remove some out-of-date configurations, and make the main document arranged in a more reasonable format. For example, the pictures are arranged in `./pics` now, and the document class files are placed in the root directory rather than a subfolder.

2. **Fix the font issues**: The sans family fonts do not display correctly in `XeLaTeX`. This revised template fixes this issue with `fontspec`. Now, the outputs of `pdfLaTeX` and `XeLaTeX` will be identical.

3. **Integrate with `biblatex`**: Add the Elsevier's reference styles `elsarticle-harv` and `elsarticle-num` which are used in the author-year case and the numbered case, respectively.

4. **Support more packages**: Provide a `elsevierbookrev.cls` for incorporating some quite widely used packages, including:

   | Package                                   | Usage                                                        |
   | :---------------------------------------- | :----------------------------------------------------------- |
   | `hyperref`                                | Add hyper links to all references and titles. Will only works if specified `hyper` option. |
   | `newtxtext`, `newtxmath` (in pdfLaTeX)    | Specify the main font as the times fonts.                  |
   | `fontenc`, `fontspec` (in XeLaTeX)        | Specify the main font as the times fonts.                  |
   | `mfirstuc`                                | Provide title case features.                                 |
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
\documentclass[option]{elsevierbookrev}
```

|  Option  |  Description  |  Counter option  |  Default state  |
| :------: | ------------- | :--------------: | --------------- |
| `hyper`  | Add colors to all links. It would not influence the figures. | `nohyper` | Disabled |
| `draft`  | Use the draft mode of `article`, all figures would be replaced by placeholders, and the `hyperref` package (if used) will also work in draft mode. | `final` | Disabled |
| `authoryear` | A flag. When configured, use an `authoryear` style bibliography style. This flag only works when `natbib` is specified. | `numcit` | Disabled |
| `usesibinary` | A flag. When configured, provide the features of the binary units of the `siunitx` package. Note that this option is not available since TeXLive 2023, where the binary units will be enabled by default. | - | Disabled |

Some special options are used for configuring the book model. They are exclusive to each other:

* `a02`: Default style.
* `a08a`: A style with a bigger font (11pt).
* `p04`: A production style where the fonts are typed by Fira-family.

The following options could be assigned in both the class options and the following command:

```latex
\ElsBookRevSetup{
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
|  `\monthyeardate\today`   | Print out the date like "November 2022"                      |
|      `\usdate\today`      | Print out the date like "November 23, 2022"                  |
|    `\usvardate\today`     | Print out the date like "November 23th, 2022"                |
|     Other commands...     | Provided by `elsevierbookrev.cls`, see the [original documentation :notebook:][link-elsdoc]. |

## Extended math operators

|         Command        |        Description       |
| :--------------------: | ------------------------ |
| `\tRe`, `\tIm`         | "Re" and "Im". |
| `\arcsinh`, `\arccosh` | "sinh" and "cosh". |
| `\qED`                 | Right-aligned QED command. |
| `\argmax`, `\argmin`   | Math symbols for defining an optimization: "argmax" and "argmin" |
| `\mean`, `\std`        | "mean" and "std". |
| `\intd`                | "d" appearing as the differential operator in integration. |
| `\expect`              | "E" with a `\mathbb` style. |

## Example

| Example 1 | Example 2 |
| :-----: | :-----: |
| ![][ex-fig-1] | ![][ex-fig-2] |

## Update report

### 1.0.0 @ 04/22/2025

1. Create the template.

[link-elsevier-book]: https://github.com/vtex-soft/texsupport.elsevier-book
[link-elsdoc]: https://github.com/vtex-soft/texsupport.elsevier-book/blob/master/doc/elsbookdoc.pdf

[ex-fig-1]:./display/elsevierbookrev-1.png
[ex-fig-2]:./display/elsevierbookrev-2.png

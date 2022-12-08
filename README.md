# LaTeX Templates

## Introduction

> :warning: Actually, there are no format demands for a dissertation/thesis proposal. Therefore, the best choice is to prefer the [thesis template :link:][git-uhrevthesis] directly rather than this template. If you insist on using this template, you may have to switch to a different template when writing your thesis.

This template is adapted from the an old version of the UH Thesis Style File. It is both compatible with `pdfLaTeX` and `XeLaTeX`. Now it has been modified for writing dissertation (thesis) proposal. According to the official example, we design this template for providing more supports.

In this package, we mainly make the following two modifications:

1. **Fix the hyperref issues**: Fix a bug causing the links of abstract, acknowledgement, and reference to be in wrong positions.

2. **Support more packages**: Provide a `uhrevproposal.cls` for incorporating some quite widely used packages, including:

   | Package                                              | Usage                                                        |
   | :--------------------------------------------------- | :----------------------------------------------------------- |
   | `hyperref`, `hypcap`                                 | Add hyper links to all references and titles. Will only works if specified `hyper` option. |
   | `setspace`                                           | Control the line spacing with `\setstrecth` or `\renewcommand{\baselinestretch}` |
   | `microtype`                                          | Used for adjusting the format slightly.                         |
   | `titlesec`, `titletoc`                               | Configure titles.                                                |
   | `appendix`                                           | Configure appendix.                                              |
   | `caption`                                            | Configure figure / table captions.                               |
   | `indentfirst`                                        | Provide features for letting the first paragraphs with indent. |
   | `amsmath`                                            | Provide mathematical environments.                             |
   | `amssymb`, `amsfonts`, `amsbsy`, `dsfont`, `bm`, `mathalpha`, `upgreek`, `ulem`                  | Provide mathematical symbols and fonts.                        |
   | `graphicx`, `epstopdf`, `bmpsize`                    | Provide functionalities to use images.                         |
   | `multirow`, `tabularx`, `tabulary`, `array`, `threeparttable`                      | Provide more features for drawing complicated tables.          |
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
\documentclass[option]{uhrevproposal}
```

|  Option  |  Description  |  Counter option  |  Default state  |
| :------: | ------------- | :--------------: | --------------- |
| `hyper`  | Add colors to all links. It would not influence the figures. | `nohyper` | Disabled |
| `draft`  | Use the draft mode of `article`, all figures would be replaced by placeholders, and the `hyperref` package (if used) will also work in draft mode. | `final` | Disabled |
| `oldmathcal`     | A flag. When configured, make \mathcal and related symbols fall back to the old caligraphy style. | `newmathcal` | Enabled |
| `indentfirst`    | A flag. When configured, make the first paragraphs of each (sub) sections with indents. | `noindentfirst` | Enabled |

The following options could be assigned in both the class options and the following command:

```latex
\UHRevProposalSetup{
  option1=value1,
  option2=value2, ...
}
```

|       Option      |  Description  |  Default value  |
| :---------------: | ------------- | --------------- |
| `title`           | The title that would be shown in the cover page and the macros of this file. | `Sample Thesis Title - Long, Wide, and Words Capitalized` |
| `author`          | The author name that would be shown in the cover page and the macros of this file. | `Maya K. Student` |
| `degree`          | The degree to be fetched. When being blank, will use the default value. | ` ` |
| `degree`          | The degree to be fetched. It should be specified like `Doctor of Philosophy` or `Master of XXX`. | `Doctor of Philosophy` |
| `doctype`          | The type of the document. It should be specified like `Dissertation Proposal` or `Thesis Proposal`. | `Dissertation Proposal` |
| `department`      | The name of the department. Do **not** need to include `"Department of ..."`. | `Electrical and Computer Engineering` |
| `college`         | The name of the college. **Need** to include `"College of ..."`. | `Cullen College of Engineering` |
| `submitdate`      | The date of the submission. If needing to use commands for this option, recommend to use `\submitdate{}` to configure this option. When being blank, will use `\today`. | ` ` |
| `refname`         | The title of the references. It can also get configured by `\renewcommand{\refname}{...}`. | `Reference` |
| `copyrightyear`   | The year shown in the copyright page. When being blank, will use the current year. | ` ` |
| `ownerPass`       | This option is only compatible with `XeLaTeX`. It is the owner password. It would be required if anyone wants to edit the produced pdf file. | ` ` |
| `userPass`        | This option is only compatible with `XeLaTeX`. It is the user password. It would be required if anyone wants to open the produced pdf file. | ` ` |
| `advisor`         | The name of the committee chair. | `Name of Chair Professor` |
| `firstreader`     | The name of the 1st committee member. | `Name of Prof1` |
| `secondreader`    | The name of the 2nd committee member. | `Name of Prof2` |
| `thirdreader`     | The name of the 3rd committee member. Can be blank. | ` ` |
| `fourthreader`    | The name of the 4th committee member. Can be blank. | ` ` |
| `fifthreader`     | The name of the 5th committee member. Can be blank. | ` ` |
| `dean`           | The name of the dean. | `Name of Dean` |
| `chair`           | The name of the college chair. | `Name of College Chair` |
| `hypercolor`      | A flag. When configured, make all links with colors (require to specify the option "hyper" first). (Counter option: `nohypercolor`) | true |
| `captionhang`     | A flag. When configured, make all captions with hanging indents. Otherwise, use the plain caption indents. (Counter option: `nocaptionhang`) | true |
| `lstoftable`      | A flag. When configured, print the list of tables page. (Counter option: `nolstoftable`) | true |
| `lstoffigure`     | A flag. When configured, print the list of figures page. (Counter option: `nolstoffigure`) | true |
| `lstoftablefirst` | A flag. When configured, make the list of tables before the list of figures. (Counter option: `lstoffigurefirst`) | true |
| `copyright`       | A flag. When configured, print the copyright page. (Counter option: `nocopyright`) | true |
| `signature`       | A flag. When configured, print the signature page. (Counter option: `nosignature`) | true |

## All commands

|         Command        |        Description       |
| :--------------------: | ------------------------ |
| `\makecoverpages`      | Used to make a modified title. No options are required. |
| `\makecontentspages`   | Used to make the table of contents. No options are required. |
| `\monthyeardate\today` | Print out the date like "November 2022" |
| `\usdate\today`        | Print out the date like "November 23, 2022" |
| `\usvardate\today`     | Print out the date like "November 23th, 2022" |
| Other commands...      | The title that would be shown in the cover page and the macros of this file. |

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
| `\vec`               | A bold symbol. |
| `\norm`              | a bold symbol with hat. |
| `\vecg`              | A bold math symbol. |
| `\mat`               | A symbol with brackets `[]`. |
| `\curl`              | `\nabla\times` a bold symbol. |
| `\curlg`             | `\nabla\times` a bold math symbol. |
| `\div`               | `\nabla\cdot` a bold symbol. |
| `\grad`              | `\nabla` a symbol. |
| `\laplace`           | `\nabla^2` a symbol. |
| `\Res`               | "Res". |

## Example

| Example 1 | Example 2 |
| :-----: | :-----: |
| ![][ex-fig-1] | ![][ex-fig-2] |

## Update report

### 1.0.0 @ 12/7/2022

1. Creating this template `uhrevproposal.cls`.
2. Prepare all functionalities of this extended template.

[git-uhrevthesis]:../../tree/uhrevthesis

[ex-fig-1]:./display/uhproposal-1.png
[ex-fig-2]:./display/uhproposal-2.png

# LaTeX Templates

## Introduction

This template is adapted from the UH Thesis Style File. It is both compatible with `pdfLaTeX` and `XeLaTeX`. UH Department of Computer Science has provided a template for writing the master thesis or the Ph.D dissertation (see [here :link:][uhthesis]). According to the official example, we design this template for providing more supports.

In this package, we mainly make the following two modifications:

1. **Fix the compatibility issues**: Fix an important compatibility issue of the original `uhthesis2019.sty`. The official style file is not compatible with the `xcolor` package since TeXLive 2020. The modified `uhthesis2019.sty` in this package has fixed this problem. We also add an option to improve the compatibility with the `hyperref` package.

2. **Support more packages**: Provide a `uhrevthesis.cls` for incorporating some quite widely used packages, including:

   | Package                                              | Usage                                                        |
   | :--------------------------------------------------- | :----------------------------------------------------------- |
   | `hyperref`, `hypcap`                                 | Add hyper links to all references and titles. Will only works if specified `hyper` option. |
   | `setspace`                                           | Control the line spacing with `\setstrecth` or `\renewcommand{\baselinestretch}` |
   | `geometry`                                           | Configure the page size.                                       |
   | `indentfirst`                                        | Provide features for letting the first paragraphs with indent. |
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
| :------: | :------------ | :--------------: | :-------------- |
| `hyper`  | Add colors to all links. It would not influence the figures. | `nohyper` | Disabled |
| `draft`  | Use the draft mode of `article`, all figures would be replaced by placeholders, and the `hyperref` package (if used) will also work in draft mode. | `final` | Disabled |
| `indentfirst`    | A flag. When configured, make the first paragraphs of each (sub) sections with indents. | `noindentfirst` | Disabled |

The following options could be assigned in both the class options and the following command:

```latex
\UHRevThesisSetup{
  option1=value1,
  option2=value2, ...
}
```

|      Option      |  Description  |  Default value  |
| :--------------: | :------------ | :-------------- |
| `title`          | The title that would be shown in the cover page and the macros of this file. | `Sample Thesis Title - Long, Wide, and Words Capitalized` |
| `author`         | The author name that would be shown in the cover page and the macros of this file. | `Maya K. Student` |
| `degree`         | The degree to be fetched. When being blank, will use the default value. | ` ` |
| `department`     | The name of the department. Do **not** need to include `"Department of ..."`. | `Electrical and Computer Engineering` |
| `college`        | The name of the college. **Need** to include `"College of ..."`. | `Cullen College of Engineering` |
| `submitdate`     | The date of the submission. If needing to use commands for this option, recommend to use `\submitdate{}` to configure this option. When being blank, will use `\today`. | ` ` |
| `refname`        | The title of the references. It can also get configured by `\renewcommand{\refname}{...}`. | `Reference` |
| `copyrightyear`  | The year shown in the copyright page. When being blank, will use the current year. | ` ` |
| `ownerPass`      | This option is only compatible with `XeLaTeX`. It is the owner password. It would be required if anyone wants to edit the produced pdf file. | ` ` |
| `userPass`       | This option is only compatible with `XeLaTeX`. It is the user password. It would be required if anyone wants to open the produced pdf file. | ` ` |
| `chair`          | The name of the committee chair. | `Name of Chair Professor` |
| `cochair`        | The name of the committee chair. Can be blank. | ` ` |
| `firstreader`    | The name of the 1st committee member. | `Name of Prof1` |
| `secondreader`   | The name of the 2nd committee member. | `Name of Prof2` |
| `thirdreader`    | The name of the 3rd committee member. Can be blank. | ` ` |
| `fourthreader`   | The name of the 4th committee member. Can be blank. | ` ` |
| `fifthreader`    | The name of the 5th committee member. Can be blank. | ` ` |
| `captionhang`    | A flag. When configured, make all captions with hanging indents. Otherwise, use the plain caption indents. (Counter option: `nocaptionhang`) | true |
| `refdoublespace` | A flag. When configured, make the references double-spaced. Otherwise, use the single space. (Counter option: `refsinglespace`) | true |
| `lstoftable`     | A flag. When configured, print the list of tables page. (Counter option: `nolstoftable`) | true |
| `lstoffigure`    | A flag. When configured, print the list of figures page. (Counter option: `nolstoffigure`) | true |
| `copyright`      | A flag. When configured, print the copyright page. (Counter option: `nocopyright`) | true |
| `thesis`         | A flag. Treat the manuscript as a thesis. Otherwise, will treat it as a dissertation. (Counter option: `dissertation`) | false |

## All commands

|         Command        |        Description       |
| :--------------------: | :----------------------- |
| `\makecoverpages`      | Used to make a modified title. No options are required. |
| `\makecontentspages`   | Used to make the table of contents. No options are required. |
| `\sectionalt`          | Used to create the section title (highest level). It is used for replacing the built-in `\section` but not for replacing `\section*`. |
| `\monthyeardate\today` | Print out the date like "November 2022" |
| `\usdate\today`        | Print out the date like "November 23, 2022" |
| `\usvardate\today`     | Print out the date like "November 23th, 2022" |
| Other commands...      | The title that would be shown in the cover page and the macros of this file. |

## Example

| Example 1 | Example 2 |
| :-----: | :-----: |
| ![][ex-fig-1] | ![][ex-fig-2] |

## Update report

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

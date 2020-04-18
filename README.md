# LaTeX Templates

## Introduction

This template was designed for writing some assignments when I was a graduate student. Now we decide to make it available for everyone. This template is based on `article.cls`. It is compatible for both `pdfLaTeX` and `XeLaTeX`, and could be used and modified by anyone in any case. Now it mainly supports these features

* **3 kinds of layouts**: now it supports 3 kinds of layouts: `default`, `handbook` and `rotate`. The last two layouts would produce pages with large fonts.
* **A mode for cards**: if the `layout` is configured as `showcards`, this class would switch to the card mode.
* **A full collection of basic packages**: including AMS packages, `hyperref`, `multicol`, `graphicx`, `subfig`, `algorithm`, `xcolor`, `tabularx`, `longtable`, `ntheorem`
* **4 extra modules**: users could determine whether to enable these optional functions. They would provide some enhancement for the class.
* **Add a pdf password**: This feature only supports XeLaTeX. It will enable you to add an owner password and a viewer password to the produced pdf file.

## All options

The following options should only be enabled when using the class, like

```latex
\documentclass[option]{CKAgn}
```

| Option | Description | Counter option | Default state |
| -----  |   -----     |      -----     |  -----  |
| `emphFoot`      | Use bold font for the text with footnotes produced by `\textfoot{text}{foot}`. | `noEmphFoot` | Enabled |
| `useSpeTable`   | Use two extra functions, description row and the wordbox. | `noSpeTable` | Disabled |
| `useQuote`      | Use the shaded quote. | `noQuote` | Disabled |
| `useParallel`   | Use the parallel package for writing translations. | `noParallel` | Disabled |
| `useLettrine`   | Use the `lettrine` package. | `noLettrine` | Disabled |
| `sectionCenter` | Make the section centered. | `sectionLeft` | Enabled |
| `layout`        | The layout of the page. Should be `default`, `handbook`, `rotate`, or `showcards` | - | `default` |

The following options could be assigned in both the class options and the following command:

```latex
\ckasetup{
  option1=value1,
  option2=value2, ...
}
```

| Option | Description | Default value |
| -----  |   -----     |     -----     |
| `type`           | The type of the assignment. | `Common` |
| `number`         | The number of the assignment. | `0` |
| `author`         | The author name that would be shown in the title and macros. | `Yuchen Jin` |
| `organization`   | The organization name that would be shown in the title. | `University of Houston` |
| `textStyle`      | The style of the text related functions. Should be `default`, `color` or `box`. | `default` |
| `ownerPass`      | This option is only compatible with XeLaTeX. It is the owner password. It would be required if anyone wants to edit the produced pdf file. | `CKATemplate001` |
| `userPass`       | This option is only compatible with XeLaTeX. It is the user password. It would be required if anyone wants to open the produced pdf file. | ` ` |

## Layout

Now we support 3 layouts. To change the layout, just use the option `layout`:

* `default`: the default layout, nothing special.
* `handbook`: the font would be very large, and in each page we would only show a few things, like a handbook.
* `rotate`: the font would be very large, and the page would be deployed in the landscape direction. This mode is a little bit like the slides.

If we configure `layout` as `showcards`, most of the class functions would be disabled. We use this mode to create small flash cards. See `Assignment-showcards.tex` and `showcards-source.tex` to find how to use this mode.

## Available functions

Without any option, this class support the following special functions:

* **Figure and sub-figure**: the figures should be stored in `./pics`, the sub-figure is supported by the `subfig` package.
* **Table and long-table**: the table is supported by `tabularx`, `multirow`, `hhline` and `colortbl`. The long table is supported by `longtable`.
* **Theorem**: support two theorem-type environment `theorem` and `question`. The theorems are supported by `ntheorem`.
* **Algorithm**: supported by `algorithm` and `algorithmic`.
* **Special text**: supported by `ulem` and `colortbl`. The style could be controlled by the `textStyle` option. We provide the following commands:
    * `\add{text}`: this part are added in the text.
    * `\err{text}`: this part is wrong and should be deleted.
    * `\unsure{text}`: we are not sure whether this part is correct.
    * `\change{previous}{after}`: this part should be changed as the second argument.
* **Password**: users could add a owner password and a user password by using the option or `\ckasetup`. But the password would not be applied automatically. After setting the password, users shuould call `\Coding` before `\begin{document}`. The password in only supported when compling the document by `XeLaTeX`.

All the aforementioned functions shown in the `Assignment.tex`.

## Extra functions

The following functions need explicit option before using them. These options could be enabled simulatenously. See `Assignment-extra.tex` to learn how to use them.

### Special table

When user uses `useSpeTable` option, the following functions would be available:

* **Special row**: This row would cross all columns. We use it for the further description. It should be used like:
    
    ```latex
    ...
    col 1 & col 2 & col 3 \fullrow[3]{This part would cross three columns.} \\ \hline
    col 1 & col 2 & col 3 \fullrow[3]{Another row crossing three columns.} \\ \hline
    ...
    ```
    
* **wordbox**: This environment is used for showing keywords. Basically, it could be used as

    ```latex
    \begin{wordlist}
      \begin{wordbox}{keyword}{type}
        \witem{g}{first row, show the definition.}
        \witem{w}{\weg{second row, show an example containing the keyword.}}
      \end{wordbox}
      ...
    \end{wordlist}
    ```
    
    where `\witem{g}` means a gray box, `\witem{w}` means a white box, `\weg{...}` is a command for showing the example. The keyword contained in the example would be highlighted automatically. The option for the `\witem` could be `g/w` (color), `b` (bold) and `e` (emph). For example, another usage is

    ```latex
    \begin{wordbox}{s}{}
      \witem{gb}{This is a long sentence.}
      \witem{w}{\weg[this is a long sentence]{In this example, we show that this is a long sentence.}}
    \end{wordbox}
    ```
    
    where we use `s` as the keyword and the type is blank. In this case the title would become `SENTENCE`. The `\weg` has an optional argument now, it is used when the keyword is different from the example in the environment argument.
    
### Shade quote

When user uses `useQuote`, the environment `shadeQuote` would be available. For example, a quote without source could be shown in

```latex
\begin{shadeQuote}{}
  A quote without source.
\end{shadeQuote}
```

where the argument is the source of the quote. If it is not blank, the source would appear in the end. For example,

```latex
\begin{shadeQuote}{Shakespeare}
  To be, or not to be, that is the question.
\end{shadeQuote}
```

Also, if we use the optional argument, we could use `l`, `c` or `r` to determine the horizontal position of the source, like

```latex
\begin{shadeQuote}[r]{Shakespeare}
  To be, or not to be, that is the question.
\end{shadeQuote}
```

### Parallel

When user uses `useParallel`, the environment `Parallel` and the commands `\litem` and `ritem` would be available. The two commands should be used alternatively inside the environment, like

```latex
\begin{Parallel}[v]{leftwidth}{rightwidth}
  \litem{...}
  \ritem{...}
  \litem{...}
  \ritem{...}
  ...
\end{Parallel}
```

By the way, we could use `\textfoot{text}{foot}` command to add footnotes for any text inside or outside the environment. The class option `emphFoot` is used to controll whether to apply bold emphasis for the text with footnotes.

### Lettrine

This function is supported by the `lettrine` package. Just follow the instructions of the package, it could be used like:

```latex
\lettrine{T}{his} paragraph has a first letter with a weight of 2.
```

## Example

| Example 1 (default layout) | Example 2 (rotate layout) |
| ----- | ----- |
| ![][ex-fig-1] | ![][ex-fig-2] |

## Update report

### 1.5 @ 04/17/2020

1. Make fundamental changes for this class.
2. All options about `Listening`, `Reading`, `Writing` and `Speaking` are rearranged as functional options now.
3. Make some functions like `textStyle` optional.
4. Remove useless functions.

### 1.25 @ 06/23/2016

1. Pack the terget instructions of the mode `Listening`. Try use the environment `einstruction` to call it.

### 1.2 @ 06/23/2016

1. Strengthening the expression of the mode `Listening` and `Reading`. Now `\vag`, `\err` are provided. `\State...` can be used to explain them.
2. Adding an environment named `shadequote` for quotation. Use the option `UpQuote` will lauch the settings.

### 1.1 @ 06/23/2016

1. Adding the paralyzed text settings for Writing mode.
2. Adding the coding command: `\Coding:{Ownerpass, Userpass}`, A userpass with "none" will cancel the userpass (default).
3. Adding a new environment: `Signature`.

### 1.0 @ 05/05/2016

1. Create this template.

[ieeetran]:https://www.ctan.org/pkg/ieeetran
[git-beamer]:https://github.com/cainmagi/UH-beamer-templates

[ex-fig-1]:./display/cka-1.png
[ex-fig-2]:./display/cka-2.png
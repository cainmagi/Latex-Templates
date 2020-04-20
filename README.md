# LaTeX Templates

## Introduction

This package is designed for adding the CJK supports under `XeLaTeX`. Although it is compatible with `pdfLaTeX` and `LuaLaTeX`, the Source Han fonts could not be loaded correctly in these two cases.

To use this package, users need to download the following fonts:

* Source Han Sans: https://github.com/adobe-fonts/source-han-sans/tree/release
* Source Han Serif: https://source.typekit.com/source-han-serif/

We need to install the full set, OTF family, Simplified Chinese version. Otherwise, you need to change the package by yourself.

Only the `sourcehan.sty` file is the package file. The other files are borrowed from [`ECEHW`][git-ecehw] branch for testing the performance.

## Options

To use this package, just call

```latex
\usepackage[options]{sourcehan}
```

Now the options could be configured by:

```latex
\sourcehansetup{
  option1=value1,
  option2=value2, ...
}
```

The option list is as follows:

| Option | Description | Default value |
| ----- | ----- | ----- |
| `algorithm` | A bool. Enable this option when you are working with `algorithm` and `algorithmic` packages. | false |

## Commands

This package provide the following fonts:

* `\textrm`: Regular Source Han Serif.
* `\textsf`: Regular Source Han Sans.
* `\texttt`: Fang song.
* `\kai`: Kai ti.
* `\semiSong`: Semi-bold Source Han Serif.
* `\boldSong`: Bold Source Han Serif.
* `\semiHei`: Semi-bold Source Han Sans.
* `\boldHei`: Bold Source Han Sans.

See the example for learning how to use them.

## Example

| Example 1 | Example 2 |
| ----- | ----- |
| ![][ex-fig-1] | ![][ex-fig-2] |

## Update report

### 1.0 @ 04/20/2020

1. Create this package.

[git-ecehw]:../ECE-homework
[git-beamer]:https://github.com/cainmagi/UH-beamer-templates

[ex-fig-1]:./display/shan-1.png
[ex-fig-2]:./display/shan-2.png
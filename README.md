# LaTeX Templates

## Introduction

This is SEG-abstract template. It is adapted from the [official SEG-abstract template][git-seg]. SEG templates are very stable files and do not change for a long time. We make some adaptions for the templates to support the following new features:

* **Word-lite**: The official LaTeX template is a little bit different from the word one. It will add a bounding box to all figures and make the produced file like the official word template.
* **XeLaTeX**: The official template does not work well with XeLaTeX. Our adaption could fix this problem. If you use XeLaTeX, this feature would be enabled automatically.
* **Hyperref**: This feature is enabled in default. It will introduce the hyperlinks and allows users to use `\autoref` to refer anything with an automatically inferred tag. It would also add pdf tags to the produced files.
* **Useful packages**: This feature is enabled in default. If enable it, this feature would introduce some useful packages.
* **TeXLive packages**: Some packages may not work with MikTeX but work with TeXLive. Use `texlive` to enable them.
* **Final mode**: Support a final mode. In this mode, the reference would disapper. This feature is designed according to the requirement of SEG. If you use our template, you would not need to use an extra `segabs_final` file.

By the way, this template is totally compatible with the official LaTeX file. But `amsmath` is not compatible with `\pmatrix` command. In our example, we use `noextra` to enter the compatible mode. Users could use `segabs_example_off.tex` to examine it.

## All options

We list all avaliable options here. The deault state means whether a option is enabled in default.

| Option | Description | Counter option | Default state |
| -----  |   -----     |      -----     |  -----  |
| `times` | Use `Times` font. If not set, pdfLaTeX would use `Computer Modern` while XeLaTeX would use `TeX Gyre Termes`.  | `notimes` | Enabled |
| `calfont` | The default settings of `segabs.cls` would override the `\mathcal` font by *Ralph Smith's Formal Script Font (rsfs)*. We provide an this option for switching back to the original calligraphy font.  | `nocalfont` | Disabled |
| `wordlite` | Make the template like the word version. It will add a bounding box to all figures. | `nowordlite` | Disabled |
| `hyref` | Use the hyperref package. It would add hyper links to all referring tags and support `\autoref`. If you switch from `nohyref` to `hyref`, you may need to compile the file for two times to ensure there are no errors. | `nohyref` | Enabled |
| `colorlinks` | Make all links with colors. This option only works when `hyref` is specified (i.e. the `hyperref` package is used) | `nocolorlinks` | Disabled |
| `extra` | Use extra packages, including AMS math packages, `stfloat`, `algorithm`, and `enumerate`. If `hyref` is disabled, `cleveref` would be used for supporting `\autoref`. | `noextra` | Enabled |
| `texlive` | Use TeXLive exclusive packages. Now these packages include `siunitx`. | `notexlive` | Disabled |
| `final` | Final version flag. If enabled, the reference part would not show, but the cited tags still exist. | `nofinal` | Disabled |

## Example

| Example 1 | Example 2 |
| ----- | ----- |
| ![][ex-fig-1] | ![][ex-fig-2] |

## Update report

### 1.1.0 @ 01/01/2023

1. Fix the importing order of required packages.
2. Add `xcolor` and `appendix` to the basic dependencies.
3. Add `hypcap` to extra dependencies.
4. Provide an extra option: `colorlinks`.
5. Fix a fatal bug: the label identifiers in the appendices are not corrected without configuring the appendix counter correctly.

### 1.05 @ 04/06/2020

1. Support the option `calfont`.

### 1.0 @ 03/17/2020

1. Create this sub-project, `SEG-abstract`.

[git-seg]:https://github.com/SEGTeX/texmf/tree/master/tex/latex/seg
[git-beamer]:https://github.com/cainmagi/UH-beamer-templates

[ex-fig-1]:./display/seg-abs-1.png
[ex-fig-2]:./display/seg-abs-2.png
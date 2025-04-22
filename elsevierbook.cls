%%
%% This is file `elsevierbook.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% elsevierbook.dtx  (with options: `main,00')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2017 by Deimantas Galčius <deimi@vtex.lt>
%% 
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{elsevierbook}[2024/09/23, 12:42 (deimi) Elsevier book class]
\def\@elsmodel{elsevierbook-a02}
\DeclareOption{a02}{\def\@elsmodel{elsevierbook-a02}}
\DeclareOption{a08a}{\def\@elsmodel{elsevierbook-a08a}}
\DeclareOption{p04}{\def\@elsmodel{elsevierbook-p04}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\@elsmodel}}
\ProcessOptions*
\LoadClass{\@elsmodel}
\endinput
%%
%% End of file `elsevierbook.cls'.

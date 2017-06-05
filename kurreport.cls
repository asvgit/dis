\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kurreport}[2017/05/22 A report template]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions*
\LoadClass{report}

\RequirePackage{docrequires}
\RequirePackage{docsettings}
\RequirePackage{docsecondpage}
\RequirePackage{doceverypage}

\pagestyle{empty}

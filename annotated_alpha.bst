ENTRY
  { address
    author
    booktitle
    chapter
    edition
    editor
    howpublished
    institution
    journal
    key
    month
    note
    number
    organization
    pages
    publisher
    school
    series
    title
    type
    volume
    year
    annote
  }
  {}
  { label }

INTEGERS { output.state before.all }

FUNCTION {format.annote}
{ annote "empty" =
    { "" }
    { "\begin{quote}\emph{" annote * "}\end{quote}" * }
  if$
}

FUNCTION {output.bibitem}
{ newline$
  "\bibitem{" cite$ * "}" *
  newline$
  author "author" output.check new.block
  title "title" output.check new.block
  format.btitle "title" output.check new.block
  year "year" output.check new.block
  new.block
  format.annote
  fin.entry
}

READ

FUNCTION {article}
{ output.bibitem
  author format.authors output
  title output
  journal output
  volume output
  pages output
  year output
  format.annote
  new.block
  fin.entry
}

FUNCTION {book}
{ output.bibitem
  author format.authors output
  title output
  edition output
  publisher output
  year output
  format.annote
  new.block
  fin.entry
}

FUNCTION {inproceedings}
{ output.bibitem
  author format.authors output
  title output
  booktitle output
  year output
  format.annote
  new.block
  fin.entry
}

FUNCTION {misc}
{ output.bibitem
  author format.authors output
  title output
  howpublished output
  year output
  format.annote
  new.block
  fin.entry
}

FUNCTION {techreport}
{ output.bibitem
  author format.authors output
  title output
  institution output
  year output
  format.annote
  new.block
  fin.entry
}

FUNCTION {phdthesis}
{ output.bibitem
  author format.authors output
  title output
  school output
  year output
  format.annote
  new.block
  fin.entry
}

FUNCTION {mastersthesis}
{ output.bibitem
  author format.authors output
  title output
  school output
  year output
  format.annote
  new.block
  fin.entry
}

FUNCTION {unpublished}
{ output.bibitem
  author format.authors output
  title output
  note output
  format.annote
  new.block
  fin.entry
}

FUNCTION {conference}
{ inproceedings }
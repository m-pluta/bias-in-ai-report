// Word count function
#let recursive_count(_body) = {
  let r(cont) = {
    let _C = 0
    
    if type(cont) == content {
      for key in cont.fields().keys() {
        if key == "children" {
          for _child in cont.fields().at("children") {
            _C +=  r(_child)
          }
        // } else if key == "caption" {
        //   _C += r(cont.fields().at("caption"))
        } else if key == "body" {
          _C += r(cont.fields().at("body"))
        } else if key == "text" {
          _C += cont.fields().at("text").split(" ").filter(w => w.len() > 1).len()
        } else if key == "child" {
          _C += r(cont.at("child"))
        }
      }
    } else if type(cont) == array {
      for item in cont {
        _C += r(item)
      }
    }
    return _C
  }
  return r(_body)     
}

#let ieee(
  title: [Paper Title],
  authors: (),
  abstract: none,
  index-terms: (),
  paper-size: "a4",
  bibliography-file: none,
  pre_body: [],
  table: [],
  post_body: [],
) = {
  // Document formatting
  set document(title: title, author: authors.map(author => author.name))

  // Text formatting
  set text(font: "STIX Two Text", size: 10pt)

  // Page formatting
  set page(
    paper: paper-size,
    margin: (x: 41.5pt, top: 80.51pt, bottom: 89.51pt),
    numbering: "1",
  )


  // Equation formatting
  set math.equation(numbering: "(1)")
  show math.equation: set block(spacing: 0.65em)
  
  show figure: set block(breakable: true)

  show ref: it => {
    if it.element != none and it.element.func() == math.equation {
      link(it.element.location(), numbering(
        it.element.numbering,
        ..counter(math.equation).at(it.element.location())
      ))
    } else {
      it
    }
  }

  // List formatting
  set enum(indent: 0.75em, body-indent: 0.5em)
  set list(indent: 0.75em, body-indent: 0.5em)

  // Heading formatting
  set heading(numbering: "1.1.1.")
  show heading: it => locate(loc => {
    let levels = counter(heading).at(loc)
    let deepest = if levels != () {
      levels.last()
    } else {
      1
    }

    set text(10pt, weight: 400)
    if it.level == 1 [
      #let is-ack = it.body in ([Acknowledgment], [Acknowledgement])
      #set align(center)
      #set text(if is-ack { 10pt } else { 12pt })
      #show: smallcaps
      #v(20pt, weak: true)
      #if it.numbering != none and not is-ack {
        numbering("1.", deepest)
        h(7pt, weak: true)
      }
      #it.body
      #v(13.75pt, weak: true)
    ] else if it.level == 2 [
      #set par(first-line-indent: 0pt)
      #set text(style: "italic")
      #v(10pt, weak: true)
      #if it.numbering != none {
        numbering("1.", deepest)
        h(7pt, weak: true)
      }
      #it.body
      #v(10pt, weak: true)
    ] else [
      #if it.level == 3 {
        numbering("1)", deepest)
        [ ]
      }
      _#(it.body):_
    ]
  })

  // Title
  v(0pt, weak: false)
  align(center, text(18pt, title))
  v(6.35mm, weak: true)

  // Authors
  for i in range(calc.ceil(authors.len() / 3)) {
    let end = calc.min((i + 1) * 3, authors.len())
    let is-last = authors.len() == end
    let slice = authors.slice(i * 3, end)
    grid(
      columns: slice.len() * (1fr,),
      gutter: 12pt,
      ..slice.map(author => align(center, {
        text(12pt, author.name)
        if "department" in author [
          \ #emph(author.department)
        ]
        if "organization" in author [
          \ #emph(author.organization)
        ]
        if "location" in author [
          \ #author.location
        ]
        if "email" in author [
          \ #link("mailto:" + author.email)
        ]
        [
          #let t = recursive_count(title);
          #let pre = recursive_count(pre_body);
          #let tab = recursive_count(table);
          #let post = recursive_count(post_body);
          #let total = t + pre + post;
          \ #{t} + #{pre} + (#{tab}) + #{post} = #{total}/1650 words
        ]
      }))
    )

    if not is-last {
      v(16pt, weak: true)
    }
  }
  v(22pt, weak: true)



  // Pre-body
  set par(justify: true)
  show par: set block(spacing: 1em)
  columns(
    2, 
    gutter: 12pt,
    [
      // Abstract
      #if abstract != [] {
        set text(weight: 700)
        h(1em)
        [_Abstract_---]
        abstract
        v(-8pt, weak: false)
      }
    ] + pre_body)

  // Stakeholder table
  set par(justify: false)
  set list(indent: 0em)
  page(
    paper: paper-size,
    flipped: false,
    table
  )

  // Post body
  set par(justify: true)
  set list(indent: 0.75em)
  show: columns.with(2, gutter: 12pt)
  post_body

  // Bibliography
  if bibliography-file != none {
    bibliography(bibliography-file, full: true, style: "ieee")
  }
}
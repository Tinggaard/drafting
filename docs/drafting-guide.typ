#import "@preview/tidy:0.4.3"
#import "template.typ": *
#import "/src/main.typ" as drafting

#let version = toml("/typst.toml").package.version
#show "drafting:0.0.0": "tidy:" + version


#show: project.with(
  title: "Drafting",
  subtitle: "Helpful functions for content positioning and margin comments/notes",
  authors: (
    "Nathan Jessurun", "Jens Tinggaard",
  ),
  abstract: [
    *drafting* is used when drafting documents, it can show various notes in the margin, or inlined in the document, along with some positioning utilities.
  ],
  date: datetime.today().display("[month repr:long] [day], [year]"),
  version: version,
  url: "https://github.com/ntjess/typst-drafting"
)

= Functions

#let module = tidy.parse-module(read("/src/main.typ"), name: "Drafting", scope: dictionary(drafting), old-syntax: false)
#tidy.show-module(module, omit-private-definitions: true)


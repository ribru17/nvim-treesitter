(tag_name) @keyword @nospell

(type) @type @nospell

[
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

[
  ":"
  "."
  "#"
  "~"
] @punctuation.delimiter

(path_expression
  "/" @punctuation.delimiter)

(tag
  (tag_name) @_name
  [
    (identifier) @function
    (optional_identifier
      (identifier) @function)
  ]
  (#any-of? @_name "@callback" "@function" "@func" "@method"))

(tag
  (tag_name) @_name
  [
    (identifier) @variable.parameter
    (optional_identifier
      (identifier) @variable.parameter)
  ]
  (#any-of? @_name "@param" "@arg" "@argument"))

(tag
  (tag_name) @_name
  [
    (identifier) @property
    (optional_identifier
      (identifier) @property)
  ]
  (#any-of? @_name "@prop" "@property"))

(tag
  (tag_name) @_name
  [
    (identifier) @type
    (optional_identifier
      (identifier) @type)
  ]
  (#eq? @_name "@typedef"))

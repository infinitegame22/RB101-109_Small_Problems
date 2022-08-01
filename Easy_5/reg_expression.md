https://ruby-doc.org/core-3.1.2/Regexp.html

Class Regexp

A Regexp holds a regular expression, used to match a pattern against strings. Regexps are created using the /.../ and %r{...} literals, and by the `Regexp::new` constructor.

I can create a Regexp objwect explicitly with:

- A regexp literal

Regular expressions (*regexps*) are patterns which describe the contents of a string.  They're used for testing whether a string contains a given pattern, or extracting the portions that match. They are created with the */pat/* and %r{*pat*} literals or the `Regexp.new` constructor.

A regexp is usually delimited with forward slashes (/). For example:

```Ruby
/hay/ =~ 'haystack' # => 0
/y/.match('haystack') # #<MatchData "y">
```
If a string contains the pattern it is said to *match*. A literal string matches itself.

Here 'haystack' does not contain the pattern 'needle', so it doesn't match:

`/needle/.match('haystack') # => nil`

Here 'haystack' contains the pattern 'hay', so it matches:

`/hay/.match('haystack') # => #<MatchData "hay">`

Specifically, /st/ requires that the string contains the letter s followed by the letter t, so it matches *haystack*, also.

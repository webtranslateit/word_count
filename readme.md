# word_count

This gem adds one `word_count` method to `String` and `Hash`. It calls the Unix `wc` system command to count the amount of words in a String or a Hash. Other ways to count words (using regexes) are unreliable for counting words in foreign languages.

### Installation
    # add this to your Gemfile
    gem "word_count"

    # and  run
    bundle update

### Usage

``` ruby
str = "the brown fox jumped over the lazy dog"
str.word_count # => 8
```

***

Copyright (c) 2013 [Atelier Convivialité](http://atelierconvivialite.com).

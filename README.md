Optirad Docs
============

Here is the source for the Optirad Documentation site:

Usage
-----

If you just want to publish some documentation you’ll find `.md` files in the `_docs` directory.
Go ahead and add or edit the files, when you are finished the documentation site can
auto-regenerates the site when required.

1. Add a file to the `./_docs/` directory

```
---
layout: post
title:  Some title
date:   2023-04-17 11:19
---
Here you add the documentation text. It is formatted using markdown, so simple structure can be used, such as


new lines or

### Headings

or

* bullet points

```

2. Save the file


Development
-----------

If you just need to alter how the site is generated you'll need to something like:

    bundle install
    bundle exec jekyll serve
    bundle exec jekyll build



CIVL-C Syntax for Emacs
=======================

Version 0.9a

Description
-----------

This small file adds syntax support for CIVL-C in Emacs.

CIVL-C is available for download from http://vsl.cis.udel.edu/civl/

This version conforms to CIVL-C v0.9

Prereqs
-------

1. Emacs >= 20
2. An interest in CIVL-C

Author
------

Name: William Killian

Contact: william.killian@gmail.com

## Installation

* Copy `civl-syntax.el` to `~/.emacs.d/lisp` (or another favorite location)
* Include that path in your load path in `.emacs` if it does not exist
```lisp
(add-to-list 'load-path "~/.emacs.d/lisp")
```
* Add the following line to your `.emacs` file
```lisp
(require 'civl-syntax)
```
* Enjoy!

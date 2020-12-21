GHC Extensions
--------------

This package provides an easy way to insert GHC language pragmas. 

The list of currently supported extensions is taken from GHC 8.8.4 .


Loading
-------
The package can be loaded like this, using
<https://github.com/jwiegley/use-package>.

```LISP
(use-package ghc-extensions
  :load-path "path/to/package"
  :bind (("C-c C-g" . ghc-extensions-insert-at-point))
  )
```

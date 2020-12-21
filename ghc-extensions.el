;;; package Make it easy to insert GHC language pragmas
;;; Commentary:
;;; Code:

(setq ghc-extensions-extensions (list "AllowAmbiguousTypes"
 "ApplicativeDo" "Arrows" "BangPatterns" "BinaryLiterals"
 "BlockArguments" "CApiFFI" "ConstrainedClassMethods"
 "ConstraintKinds" "CPP" "DataKinds" "DatatypeContexts"
 "DefaultSignatures" "DeriveAnyClass" "DeriveDataTypeable"
 "DeriveFoldable" "DeriveFunctor" "DeriveGeneric" "DeriveLift"
 "DeriveTraversable" "DerivingStrategies" "DerivingVia"
 "DisambiguateRecordFields" "DuplicateRecordFields" "EmptyCase"
 "EmptyDataDecls" "EmptyDataDeriving" "ExistentialQuantification"
 "ExplicitForAll" "ExplicitNamespaces" "ExtendedDefaultRules"
 "FlexibleContexts" "FlexibleInstances" "ForeignFunctionInterface"
 "FunctionalDependencies" "GADTs" "GADTSyntax"
 "GeneralisedNewtypeDeriving" "GeneralizedNewtypeDeriving"
 "HexFloatLiterals" "ImplicitParams" "ImpredicativeTypes"
 "IncoherentInstances" "InstanceSigs" "InterruptibleFFI"
 "KindSignatures" "LambdaCase" "LiberalTypeSynonyms" "MagicHash"
 "MonadComprehensions" "MonadFailDesugaring" "MonoLocalBinds"
 "MultiParamTypeClasses" "MultiWayIf" "NamedFieldPuns"
 "NamedWildCards" "NegativeLiterals" "NoImplicitPrelude"
 "NoMonomorphismRestriction" "NoPatternGuards"
 "NoTraditionalRecordSyntax" "NPlusKPatterns" "NullaryTypeClasses"
 "NumDecimals" "NumericUnderscores" "OverlappingInstances"
 "OverloadedLabels" "OverloadedLists" "OverloadedStrings"
 "PackageImports" "ParallelListComp" "PartialTypeSignatures"
 "PatternSynonyms" "PolyKinds" "PostfixOperators"
 "QuantifiedConstraints" "QuasiQuotes" "Rank2Types" "RankNTypes"
 "RebindableSyntax" "RecordWildCards" "RecursiveDo" "RoleAnnotations"
 "Safe" "ScopedTypeVariables" "StandaloneDeriving" "StarIsType"
 "StaticPointers" "Strict" "StrictData" "TemplateHaskell"
 "TemplateHaskellQuotes" "TransformListComp" "Trustworthy"
 "TupleSections" "TypeApplications" "TypeFamilies"
 "TypeFamilyDependencies" "TypeInType" "TypeOperators"
 "TypeSynonymInstances" "UnboxedSums" "UnboxedTuples"
 "UndecidableInstances" "UndecidableSuperClasses" "UnicodeSyntax"
 "UnsafeViewPatterns") )

(defun ghc-extensions-make-pragma (extension)
  "Fill in a pragma template for the language extensions EXTENSION."
  (concat "{-# LANGUAGE " extension " #-}")
  )

(defun ghc-extensions-insert-at-point ()
  "Insert a GHC language extension pragma at point."
  (interactive)
  (insert (ghc-extensions-make-pragma
           (completing-read "Language extension:" ghc-extensions-extensions nil t "")
           )
          )
  )

(provide 'ghc-extensions)
;;; ghc-extensions.el ends here

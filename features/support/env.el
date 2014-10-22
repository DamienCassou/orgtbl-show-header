(require 'f)

(defvar orgtbl-show-header-support-path
  (f-dirname load-file-name))

(defvar orgtbl-show-header-features-path
  (f-parent orgtbl-show-header-support-path))

(defvar orgtbl-show-header-root-path
  (f-parent orgtbl-show-header-features-path))

(add-to-list 'load-path orgtbl-show-header-root-path)

(require 'orgtbl-show-header)
(require 'espuds)
(require 'ert)

(Setup
 ;; Before anything has run
 )

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )

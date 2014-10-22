;; This file contains your project specific step definitions. All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.

(Then "^last message should be \"\\([^\"]+\\)\"$"
  (lambda (message)
    (let ((msg "Expected '%s' to be the last printed message but it was '%s' instead."))
      (setq message (s-replace "\\\"" "\"" message))
      (cl-assert (string= (s-trim (-last-item ecukes-message-log)) message) nil msg message (-last-item ecukes-message-log)))))

;; Local Variables:
;; eval: (flycheck-mode 0)
;; End:

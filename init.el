;;; init.el Initialization file for Emacs
;;
;;; Code:

(defconst emacs-d
  (concat (expand-file-name
           (file-name-directory (file-chase-links load-file-name)))
          "/")
  "The Emacs main directory.")

(let ((root (file-name-directory load-file-name)))
  ;; configurations
  (mapc (lambda (dir)
          (add-to-list 'load-path (expand-file-name dir root)))
        '("configuration")))

(custom-set-faces)

;; Load configuration files
(mapc (lambda (pattern)
        (mapc 'load
              (file-expand-wildcards
               (expand-file-name pattern emacs-d))))
      '("configuration/*.el"))

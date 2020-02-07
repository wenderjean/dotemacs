(defun config-terminal-encoding ()
  "Set terminal encoding to UTF-8."
  (add-hook 'term-exec-hook
            (function
             (lambda ()
               (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix)))))

(config-terminal-encoding)

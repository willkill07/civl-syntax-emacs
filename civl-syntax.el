(define-derived-mode civl-mode c-mode
  (setq mode-name "CIVL-C"))
(add-hook 'civl-mode-hook'
  (lambda ()
    (font-lock-add-keywords nil
      '(("\\<_Bool\\>" . font-lock-type-face)
	("\\$\\(bundle\\|scope\\|proc\\|message\\|gcomm\\|comm\\)\\>" . font-lock-type-face)
	("\\$\\(here\\|root\\|self\\|true\\|false\\)\\>" . font-lock-constant-face)
	("\\$\\(scope_parent\\|scopeof\\|choose_int\\|wait\\|exit\\|assert\\|malloc\\|free\\)\\>" . font-lock-builtin-face)
	("\\$message_\\|pack\\|tag\\|dest\\|size\\|unpack\\)\\>" . font-lock-builtin-face)
	("\\$gcomm_\\|create\\|destroy\\)\\>" . font-lock-builtin-face)
	("\\$comm\\|create\\|destroy\\|size\\|place\\|enqueue\\|probe\\|seek\\|dequeue\\)\\>" . font-lock-builtin-face)
	("\\$\\(when\\|choose\\|spawn\\|atom\\|atomic\\|input\\|output\\|assume\\|forall\\|exists\\|requires\\|ensures\\|invariant\\|collective\\|abstract\\)\\>" . font-lock-keyword-face)))))

(add-to-list 'auto-mode-alist '("\\.cv\\(l\\|h\\)\\'" . civl-mode))

(provide 'civl-syntax)


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "/opt/ros/noetic/share/emacs/site-lisp")
;; or whatever your install space is + "/share/emacs/site-lisp"
(require 'rosemacs-config)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(global-set-key (kbd "<M-right>") 'windmove-right)
(global-set-key (kbd "<M-left>") 'windmove-left)
(global-set-key (kbd "<M-up>") 'windmove-up)
(global-set-key (kbd "<M-down>") 'windmove-down)

;; show line number in emacs editor
;; (require 'linum)
;; (global-linum-mode 1)
;; (global-set-key [f6] 'linum-mode)

;; setting by check of chat-gpt
;; use utf-8 encoding 
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8)

;; save file in utf-8 encoding
(add-hook 'before-save-hook
          (lambda ()
            (set-buffer-file-coding-system 'utf-8 t)))

;; open file in utf-8 encoding
(setq-default buffer-file-coding-system 'utf-8)

;; set japanese for default language environment
(set-language-environment "Japanese")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-statistics company-math company-ebdb company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)

;; jump to brackets by C-q
;; cf. wiliki
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        )
)
(global-set-key "\C-q" 'match-paren)
(global-company-mode)
(setq scroll-conservatively 1)

;;Always do syntax
(global-font-lock-mode 1)
(setq show-paren-delay 0
      show-paren-style 'parentheses)
(show-paren-mode 1)
;;配置mit-scheme
(setq scheme-program-name "/usr/bin/mit-scheme")
;;导出
(provide 'init-scheme)

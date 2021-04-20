;;自动启用文本模式和自动换行模式
(setq default-major-mode 'text-mode)
;;(add-hook 'text-mode-hook 'turn-on-auto-fill)
;;折行显示
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
(add-hook 'text-mode-hook (lambda () (setq truncate-lines nil)))
(toggle-truncate-lines 1)
;;自动启用临时标记模式
(setq-default transient-mark-mode 1)
;;解决流控制问题
;;(enable-flow-control)
;;重新绑定键盘按键
(global-unset-key "\e\e")
(global-unset-key "\C-x\C-u")
;;要求精确匹配
;;(setq-default case-fold-search nil)
;;替换时不改变大小写情况
;;(setq-default case-replace nil)
;;单词缩写
(setq-default abbrev-mode t)
(xterm-mouse-mode 1)
(read-abbrev-file "~/.emacs.d/abbrev_defs")
(setq save-abbrevs t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq scheme-program-name "/usr/bin/scheme")
(require 'xscheme)

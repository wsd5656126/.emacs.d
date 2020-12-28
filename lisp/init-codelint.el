;;激活flycheck-mode, 使用flycheck-verify-setup进行语法检查器的选择
;;(add-hook 'js2-mode-hook 'flycheck-mode)

;;代码块补全插件
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

(provide 'init-codelint)

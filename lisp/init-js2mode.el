;;配置js2-mode
(setq auto-mode-alist
      (append
       '(("\\.js\\'".js2-mode))
       auto-mode-alist))
(provide 'init-js2mode)

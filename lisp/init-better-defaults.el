;;自动加载外部修改过的文件
(global-auto-revert-mode 1)
;;关闭自动保存文件
;;(setq auto-save-default nil)
;;使用popwin插件自动将光标移动到新创建的端口
(require 'popwin)
(popwin-mode 1)

(provide 'init-better-defaults)

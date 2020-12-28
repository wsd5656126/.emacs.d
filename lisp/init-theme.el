;;开启全局Company补全
(global-company-mode 1)

;;禁止生成备份文件
(setq make-backup-files nil)

;;设置最近编辑过的文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;;选中一段文字后输入字符替代选中的文字
(delete-selection-mode 1)

;;开启默认全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;自动括号匹配;钩子
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;高亮当前行
(global-hl-line-mode 1)
;;加载主题monokai
(load-theme 'monokai 1)
(provide 'init-theme)

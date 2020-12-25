
;;编辑器配置信息
;;关闭工具栏,tool-bar-mode
;;(tool-bar-mode -1)
;;关闭文件滑动控件
;;(scroll-bar-mode -1)
;;显示行号
(global-linum-mode 1)
;;更改光标的样式
;;(setq cursor-type 'bar)
(setq-default cursor-type 'bar)
;;关闭启动帮助画面
;;(setq inhibit-splash-screen 1)
;;关闭缩进
;;(electric-indent-mode -1)
;;更改显示字体大小 16pt
(set-face-attribute 'default nil :height 160)
;;快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;;绑定函数到快捷键
(global-set-key (kbd "<f7>") 'open-init-file)
(provide 'init-editor)

;;自动加载外部修改过的文件
(global-auto-revert-mode 1)
;;关闭自动保存文件
;;(setq auto-save-default nil)
;;使用popwin插件自动将光标移动到新创建的端口
(require 'popwin)
(popwin-mode 1)
;;关闭哔哔的提示音
;;(setq ring-bell-function 'ignore)
;;将yes改为y
(fset 'yes-or-no-p 'y-or-n-p)
;;代码缩进
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))
(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))
;;再绑定快捷键
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;;代码补全 psvm
(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; Shifu
					    ("8zl" "zilong shanren")
					    ;; Tudi
					    ("81xy" "lixinyang")))

;;Hippie补全 补充company
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))
;;绑定快捷键
(global-set-key (kbd "s-/") 'hipple-expand)

(provide 'init-better-defaults)

;;设置dired mode
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
;;配置dired buffer唯一
(put 'dired-find-alternate-file 'disabled nil)
;;主动加载Dired Mode
;;(require 'dired)
;;(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;;延迟加载
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
;;C-x C-j进入当前文件夹的所在路径
(require 'dired-x)

;;设置org-mode

;;设置不匹配'
;;(sp-local-pair 'emacs-lisp mode "'" nil :actions nil)
;;(sp-local-pair 'lisp-interaction-mode "'" nil :actions nil)
;;合并上面两句 有问题
;;(sp-local-pair '(emacs-lisp-mode lisp-interaction-mode) "'" nil :actions nil)

;;光标在括号内时高亮
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))
;;删除dos的换行符
(defun remove-dos-eol ()
  "Replace DOS eolns CR LF with Unix eolns CR"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

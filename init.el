;;相信的心就是你的魔法
;;引入子模块
(package-initialize)
(add-to-list 'load-path "/root/.emacs.d/lisp")
;;插件包管理
(require 'init-packages)
;;Scheme配置
(require 'init-scheme)
;;org配置
(require 'init-org)
;;编辑器配置
(require 'init-editor)
;;主题配置
(require 'init-theme)
;;js2mode
(require 'init-js2mode)
;;better-defaults
(require 'init-better-defaults)
;;web
(require 'init-web)
;;codelint
(require 'init-codelint)
;;evil
(require 'init-evil)

(put 'dired-find-alternate-file 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (js2-refactor web-mode company hungry-delete swiper counsel smartparens js2-mode nodejs-repl exec-path-from-shell monokai-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

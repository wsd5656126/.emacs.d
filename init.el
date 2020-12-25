;;相信的心就是你的魔法
;;引入子模块
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp")
;;
插件包管理
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



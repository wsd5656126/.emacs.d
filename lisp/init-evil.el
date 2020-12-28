(global-evil-leader-mode)
(evil-mode 1)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(evil-leader/set-key
 "ff" 'find-file
 "bb" 'switch-to-buffer
 "0" 'select-window-0
 "1" 'select-window-1
 "2" 'select-window-2
 "3" 'select-window-3
 "w1" 'split-window-below
 "w2" 'split-window-right
 "w0" 'delete-window
 ":" 'counsel-M-x
 "w4" 'delete-other-windows
 )
(provide 'init-evil)

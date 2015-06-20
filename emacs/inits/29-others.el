;; カーソル位置記憶
(require 'saveplace)
(setq-default save-place t)

;; コンパイルウインドウが自動で閉じるようにする
(require 'bury-successful-compilation)
(bury-successful-compilation 1)

;; 使い捨てファイルの設定
(require 'open-junk-file)
(setq open-junk-file-format "~/junk/%Y-%m/%d-%H%M%S.")

;; 十字ハイライト
(require 'crosshairs)
(crosshairs-toggle-when-idle 1)
(hl-line-when-idle-interval 0)
(col-highlight-set-interval 4)

;; ハイライトの色
(custom-set-faces
 '(col-highlight((t (:background "Forestgreen")))))
(custom-set-faces
 '(hl-line ((t (:background "Forestgreen")))))

;; undo,yank時にハイライト
(require 'volatile-highlights)
(volatile-highlights-mode t)

(require 'multi-eshell)
(require 'shell-history)

;; ido拡張
(require 'smex)
(smex-initialize)
(setq ido-enable-flex-matching t)       ;あいまいマッチ
(setq ido-max-window-height 1.0)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(defvar org-completion-use-ido t)
(defvar magit-completing-read-function 'magit-ido-completing-read)
(defvar ido-ubiquitous-mode 1)
;; 候補選択を縦に
(require 'ido-vertical-mode)
;; ido-anywhere
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-enable-flex-matching t)       ;あいまいマッチ
(global-set-key (kbd "C-.") 'ido-imenu-anywhere)

(defvar flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)

;; imenu-list
(require 'imenu-list)
(global-set-key (kbd "C-'") #'imenu-list-minor-mode)
(with-eval-after-load "imenu-list"
  (define-key imenu-list-major-mode-map (kbd "j") 'next-line)
  (define-key imenu-list-major-mode-map (kbd "k") 'previous-line))
(setq imenu-list-size 0.25)

;; image+
(require 'image+)
(imagex-auto-adjust-mode 1)
(imagex-global-sticky-mode 1)
;; C-c + / C-c -	拡大、縮小
;; C-c M-l / C-c M-r	画像の回転
;; C-c M-o	元画像の表示

;; emms
(require 'emms-setup)
(emms-standard)
(emms-default-players)

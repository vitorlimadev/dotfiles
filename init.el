;; ---------- GENERAL CONFIG ----------

; Remove startup page
(setq inhibit-startup-message t)
; Disable scrollbar
(scroll-bar-mode -1)
; Disable the toolbar
(tool-bar-mode -1)
; Disable tooltips
(tooltip-mode -1)
; Fringe mode
; (set-fringe-mode 10)
; Disable menubar
(menu-bar-mode -1)
; Enable line numbers
(global-display-line-numbers-mode t)
; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		eshell-mode-hook
		treemacs-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode -1))))
; Replace yes and no with y and n
(fset 'yes-or-no-p 'y-or-n-p)
; Setting font family and size for GUI
(set-face-attribute 'default nil :font "Source Code Pro" :height 150)
; Open eshell
(global-set-key (kbd "C-x t") 'term)
; Set folder for backup files. Without it, emacs clutters your folders with files ending with ~
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))





;; ---------- MELPA ----------

; Adding MELPA to package sources
(require 'package)
(customize-set-variable 'package-archives
			(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/")))

; Initializing package list
(package-initialize)

; Fetching available packages
(unless package-archive-contents
  (package-refresh-contents))

; Only evaluate this when compiling this file
(eval-when-compile
  ; For each package on the list do
  (dolist (package '(use-package diminish bind-key))
    ; Install if not yet installed
    (unless (package-installed-p package)
      (package-install package))
    ; Require package making it available on the rest of the configuration
    (require package)))

; Always ensure packages
(setq use-package-always-ensure t)





;; ---------- EXTERNAL PACKAGES ----------

; Git interface
(use-package magit
  :bind ("C-c m s" . magit-status))

; Fuzzy finder for minibuffers
(use-package ivy)
(ivy-mode 1)

; Enhances Ivy. Necessary to integrate Ivy with projectile.
(use-package counsel
  :bind (("C-x b" . counsel-ibuffer)
	 ("C-x f" . counsel-find-file))
  :config
  (setq ivy-initial-inputs-alist nil))

; Fuzzy finder for search in file
(use-package swiper
  :bind (("C-s" . swiper)))

; Makes Emacs understand programming projects
(use-package projectile
  :diminish projectile-mode
  :config
  (projectile-mode)
  (setq projectile-completion-system 'ivy)
  :bind-keymap
  ("C-c p" . projectile-command-map))

; Projectile / Counsel integration
(use-package counsel-projectile
  :config (counsel-projectile-mode))

; Better modeline
(use-package doom-modeline
    :init (doom-modeline-mode 1))

; Helper to find possible commands when pressing C or M
(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))

; Extended theme library
(use-package doom-themes
  :config
  ; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-nord t)
  ; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  (doom-themes-org-config))

; LSP client interface for Emacs
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook
  (elixir-mode . lsp-deferred)
  :config
  (setq
   lsp-clients-elixir-server-executable "~/elixir/elixir-ls/release/erl23/language_server.sh"
   lsp-auto-guess-root t)
  (setq lsp-file-watch-ignored
      '("[/\\\\]\\.git$"
        "[/\\\\]\\.elixir_ls$"
        "[/\\\\]_build$"
	"[/\\\\]deps$"
        "[/\\\\]assets$"
        "[/\\\\]cover$"
        "[/\\\\]node_modules$"
        "[/\\\\]submodules$"
        )))
  
; Auto-complete interface
(use-package company
  :ensure t
  :diminish company-mode
  :bind ("C-\\" . company-complete)  
  :config
  (global-company-mode))

; Functions/modules documentation on hover/key press
(use-package lsp-ui
  :commands lsp-ui-mode
  :after (lsp-mode)
;  :init
;  (setq lsp-ui-doc-enable nil
;        lsp-ui-doc-use-webkit t         
;        lsp-ui-sideline-enable nil
;        lsp-ui-peek-enable nil) 
  :bind
  ("M-d" . lsp-ui-doc-show)
  ("M-h" . lsp-ui-doc-hide)) 

; To work with Elixir
(use-package elixir-mode)

(use-package reformatter
  :ensure t
  :config
  ; Adds a reformatter configuration called "+elixir-format"
  ; This uses "mix format -"
  (reformatter-define +elixir-format
    :program "mix"
    :args '("format" "-"))
  ; defines a function that looks for the .formatter.exs file used by mix format
  (defun +set-default-directory-to-mix-project-root (original-fun &rest args)
    (if-let* ((mix-project-root (and buffer-file-name
                                     (locate-dominating-file buffer-file-name
                                                             ".formatter.exs"))))
        (let ((default-directory mix-project-root))
          (apply original-fun args))
      (apply original-fun args)))
  ; adds an advice to the generated function +elxir-format-region that sets the proper root dir
  ; mix format needs to be run from the root directory otherwise it wont use the formatter configuration
  (advice-add '+elixir-format-region :around #'+set-default-directory-to-mix-project-root)
  ; Adds a hook to the major-mode that will add the generated function +elixir-format-on-save-mode
  ; So, every time we save an elixir file it will try to find a .formatter.exs and then run mix format from
  ; that file's directory
  (add-hook 'elixir-mode-hook #'+elixir-format-on-save-mode))

; Sidebar navigation
(use-package treemacs
  :bind ("M-\\" . treemacs)  
  :config
  (treemacs-filewatch-mode t)
  (treemacs-git-mode 'extended)
  (treemacs-follow-mode -1))

; MaGIT / Treemacs integration
(use-package treemacs-magit
  :after (treemacs magit))

; Projectile / Treemacs integration
(use-package treemacs-projectile
  :after (treemacs projectile))




























;; ---------- AUTO ADDED BY CUSTOM ----------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   (quote
    (("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/"))))
 '(package-selected-packages
   (quote
    (vterm counsel-projectile counsel swiper ivy treemacs-projectile projectile company-lsp command-log-mode diminish use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

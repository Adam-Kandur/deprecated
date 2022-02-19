(define-module (sys vars)
  #:use-module (gnu)
  #:export (%my-main-user-groups
            %my-system-packages))

(define %my-pkgs
  (list emacs
	emacs-exwm
	emacs-stuff
	emacs-magit
	emacs-vscode-dark-plus
	emacs-desktop-environment
	nss-certs))

(define %my-main-user-groups
  '("wheel" "netdev" "audio" "video" "docker" "libvirt" "kvm"))

;; (define %my-system-packages
;;   '("emacs"
;;     "emacs-exwm"
;;     "emacs-desktop-environment"
;;     "emacs-magit"
;;     "emacs-stuff"
;;     "emacs-emojify"
;;     "emacs-editorconfig"
;;     "papirus-icon-theme"
;;     "nss-certs"))

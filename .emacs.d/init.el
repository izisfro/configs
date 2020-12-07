(defvar root-dir (file-name-directory load-file-name))
(defvar config-dir (concat root-dir "config/"))
(defvar vendor-dir (concat root-dir "vendor/"))

(setq custom-file (concat config-dir "custom.el"))

(add-to-list 'load-path config-dir)
(add-to-list 'load-path vendor-dir)

(require 'gnutls)
  (add-to-list 'gnutls-trustfiles
               (expand-file-name
                "~/etc/tls/certificates/comodo.rsa.ca.intermediate.crt"))

(require 'packages)
(require 'gui)
(require 'defuns)
(require 'plugins)
(require 'bindings)

(when (eq system-type 'darwin)
  (require 'osx))

;; Backup stuff
(setq make-backup-files t)
(setq version-control t)

(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/.backup")))
(setq backup-directory-alist '((".*" . "~/.emacs.d/.backup")))

(setq delete-old-versions t)



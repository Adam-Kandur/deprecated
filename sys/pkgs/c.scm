(define-module (sys pkgs c)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix utils)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system trivial)
  #:use-module (gnu packages)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages image)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages bootstrap)
  #:use-module (gnu packages bison)
  #:use-module (gnu packages check)
  #:use-module (gnu packages flex)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages texinfo)
  #:use-module (gnu packages guile)
  #:use-module (gnu packages lua)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages pcre)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages gettext)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages xml))

(define-public diff2dates
  (let ((home-page "https://github.com/AdamKaScripter/deprecated")
        (commit "40c5f202535ada3bea2bd06bbecfb32f98be5bdc")
        (revision "1"))
    (package
      (name "diff2dates")
      (version (git-version "1.0.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url home-page)
                      (commit commit)
                      (recursive? #t)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "1777di0ydbnqns4pfqv3km3j1bqj1zsd61j4iyrdya0kjh5zw7c9"))))
      (build-system gnu-build-system)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           ;; no autogen script
           (delete 'configure)
           (add-after 'unpack 'change-directory
             ;; diff2dates directory is not in root of the source.
             (lambda _
               (chdir "tools/diff2dates")))
           (replace 'install
             (lambda* (#:key outputs #:allow-other-keys)
               (let* ((out (assoc-ref outputs "out"))
                      (include-dir (string-append out "/include"))
                      (lib-dir (string-append out "/lib"))
                      (bin-dir (string-append out "/bin")))
                 (install-file "diff2dates.h" include-dir)
                 (install-file "libdiff2dates.so" lib-dir)
                 (install-file "diff2dates" bin-dir)
                 #t))))))
      (synopsis "")
      (description
       "")
      (home-page home-page)
      (license license:gpl3+))))

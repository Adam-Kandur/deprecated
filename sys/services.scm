(define-module (sys services)
  #:use-module (gnu services)
  #:use-module (gnu services shepherd)
  #:use-module (gnu services base)
  #:use-module (gnu services dbus)
  #:use-module (gnu services avahi)
  #:use-module (gnu services xorg)
  #:use-module (gnu services networking)
  #:use-module (gnu services sound)
  #:use-module ((gnu system file-systems)
                #:select (%elogind-file-systems file-system))
  #:autoload   (gnu services sddm) (sddm-service-type)
  #:use-module (gnu system)
  #:use-module (gnu system setuid)
  #:use-module (gnu system shadow)
  #:use-module (gnu system pam)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages cups)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages xfce)
  #:use-module (gnu packages avahi)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages scanner)
  #:use-module (gnu packages suckless)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages lxqt)
  #:use-module (gnu packages mate)
  #:use-module (gnu packages nfs)
  #:use-module (gnu packages enlightenment)
  #:use-module (guix deprecation)
  #:use-module (guix records)
  #:use-module (guix packages)
  #:use-module (guix store)
  #:use-module (guix utils)
  #:use-module (guix gexp)
  #:use-module (srfi srfi-1)
  #:use-module (ice-9 match)
  #:export (%my-desktop-services))

(define %my-desktop-services
  ;; (cons* (if (string-prefix? "x86_64" system)
  ;;            (service gdm-service-type)
  ;;            (service sddm-service-type))

  ;;        ;; Screen lockers are a pretty useful thing and these are small.
  ;;        (screen-locker-service slock)
  ;;        (screen-locker-service xlockmore "xlock")

  ;;        ;; Add udev rules for MTP devices so that non-root users can access
  ;;        ;; them.
  ;;        (simple-service 'mtp udev-service-type (list libmtp))
  ;;        ;; Add udev rules for scanners.
  ;;        (service sane-service-type)
  ;;        ;; Add polkit rules, so that non-root users in the wheel group can
  ;;        ;; perform administrative tasks (similar to "sudo").
  ;;        polkit-wheel-service

  ;;        ;; Allow desktop users to also mount NTFS and NFS file systems
  ;;        ;; without root.
  ;;        (simple-service 'mount-setuid-helpers setuid-program-service-type
  ;;                        (map (lambda (program)
  ;;                               (setuid-program
  ;;                                (program program)))
  ;;                             (list (file-append nfs-utils "/sbin/mount.nfs")
  ;;                              (file-append ntfs-3g "/sbin/mount.ntfs-3g"))))

  ;;        ;; The global fontconfig cache directory can sometimes contain
  ;;        ;; stale entries, possibly referencing fonts that have been GC'd,
  ;;        ;; so mount it read-only.
  ;;        fontconfig-file-system-service

  ;;        ;; NetworkManager and its applet.
  ;;        (service network-manager-service-type)
  ;;        (service wpa-supplicant-service-type)    ;needed by NetworkManager
  ;;        (simple-service 'network-manager-applet
  ;;                        profile-service-type
  ;;                        (list network-manager-applet))
  ;;        (service modem-manager-service-type)
  ;;        (service usb-modeswitch-service-type)

  ;;        ;; The D-Bus clique.
  ;;        (service avahi-service-type)
  ;;        (udisks-service)
  ;;        (service upower-service-type)
  ;;        (accountsservice-service)
  ;;        (service cups-pk-helper-service-type)
  ;;        (service colord-service-type)
  ;;        (geoclue-service)
  ;;        (service polkit-service-type)
  ;;        (elogind-service)
  ;;        (dbus-service)

  ;;        (service ntp-service-type)

  ;;        x11-socket-directory-service

  ;;        (service pulseaudio-service-type)
  ;;        (service alsa-service-type)

  ;;        %base-services))
  "haha")



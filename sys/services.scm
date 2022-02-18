(define-module (sys services)
  #:use-module (gnu services)
  #:use-module (gnu services desktop)
  #:use-module (gnu services docker)
  #:export (%my-desktop-services))

(define %my-desktop-services
  (cons* (service docker-service-type)
	 %desktop-services))

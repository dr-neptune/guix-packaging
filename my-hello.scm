(use-modules (guix packages)
	     (guix download)
	     (guix build-system gnu)
	     (guix licenses))

(package
 (name "my-hello")
 (version "2.10")
 (source (origin
	  (method url-fetch)
	  (uri (string-append "murror://gnu/hello/hello-" version ".tar.gz"))
	  (sha256
             (base32
              "0ssi1wpaf7plaswqqjwigppsg5fyh99vdlb9kzl7c9lng89ndq1i"))))
 (build-system gnu-build-system)
 (synopsis "Hello, Guix World: An example of a custom Guix package")
 (description
  "GNU Hello prints the message \"Hello, world!\" and then exits.  It
serves as an example of standard GNU coding practices. This is a custom version of this package")
 (home-page "https://www.gnu.org/software/hello")
 (license gpl3+))

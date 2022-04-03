(use-modules (guix packages)
	     (guix git-download)
	     (guix build-system emacs)
	     (guix licenses))

(package
 (name "emacs-pomodoro")
 (version "1.0")
 (source (origin
	  (method git-fetch)
	  (uri (git-reference
		(url "https://github.com/baudtack/pomodoro.el")
		(commit "ed888b24d0b89a5dec6f5278b1064c530c827321")))
	  (file-name (git-file-name "emacs-pomodoro" "1.0"))
	  (sha256
           (base32
	    "0yv1339q5s31wxw8y34pb09b0rlvz9m3gzqb4dc1q8ncq8xb8wl5"))))
 (build-system emacs-build-system)
 (synopsis "A timer for the Pomodoro Technique")
 (description
  "A timer for the Pomodoro Technique that is accessible from GNU Emacs. Runs a timer in your modeline.")
 (home-page "https://github.com/baudtack/pomodoro.el")
 (license gpl3+))

(use-modules (guix packages)
	     (guix git-download)
	     (guix build-system copy)
	     (guix licenses))

(package
 (name "gitwatch")
 (version "0.1")
 (source (origin
	  (method git-fetch)
	  (uri (git-reference
		(url "https://github.com/gitwatch/gitwatch")
		(commit "5edf4ce00476442eb31f00fcf880f7ef821760bf")))
	  (file-name (git-file-name "gitwatch" "0.1"))
	  (sha256
           (base32
	    "1n78iffrdpmzrkbr1hbip41g9ifcwi9f9gygfifdw19q7v842bqp"))))
 (build-system copy-build-system)
 (arguments '(#:install-plan '(("gitwatch.sh" "share/gitwatch/gitwatch.sh"))))
 (synopsis "A bash script to watch a file or folder and commit changes to a git repo")
 (description
  "A tool that allows you to watch something that is under version control by git and ensure that all changes made within the update window are committed.")
 (home-page "https://github.com/gitwatch/gitwatch")
 (license gpl3+))

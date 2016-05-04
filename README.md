# My Emacs config

This my emacs configuration system, largely inspired by Romain Ouabdelkader (Azkae)'s
configuration system, which you can find at https://github.com/Azkae/emacs-config.git

## Structure

This is what you can find in the `src/` folder:

* config-loader.el	`# General functions needed by the config system. Called by setup.el`
* configs/			`# Your modules configuration. Feel free to add your own.`
* modules/			`# Location of modules. Modules are mostly git repos corresponding to Elpa packages.`
* init-config.el	`# The one file to load from your .emacs.
					 Here you can add/remove files to load in your configs/ folder.`

A typical setup.el file should look like this:

```elisp

(require 'config)

(conf:load-config "autopair")
(conf:load-config "company")
(conf:load-config "helm")
(conf:load-config "file-in-config-folder")
;; ...

(provide 'setup)

```

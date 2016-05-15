# My Emacs config

This my emacs configuration system, largely inspired by Romain Ouabdelkader (Azkae)'s
configuration system, which you can find at https://github.com/Azkae/emacs-config.git


## Install

Add the two following lines to your .emacs (and clear out the rest):

(add-to-list 'load-path "~/.my-emacs-config/")
(require 'init-config)


## Adding modules

To add keep consistency when adding or updating a module, use [git-subrepo](https://github.com/ingydotnet/git-subrepo/).

To add a module, use git subrepo to clone that module's repo and
its dependencies in src/modules.

Most of the time, that repo will be an ELPA package.

Add the lines needed for activation and configuration of the module
in a .el file named after the module in src/config.


## Structure

This is what you can find in the root folder:

* config-loader.el      `# General functions needed by the config system. Called by setup.el`
* configs/              `# Your modules configuration. Feel free to add your own.`
* modules/              `# Location of modules. Modules are mostly git repos corresponding to Elpa packages.`
* init-config.el        `# The one file to load from your .emacs.
                           Here you can add/remove files to load in your configs/ folder.`

A typical init-config.el file should look like this:

```elisp

(require 'config-loader)

(conf:load-config "autopair")
(conf:load-config "company")
(conf:load-config "helm")
(conf:load-config "file-in-config-folder")
;; ...

(provide 'init-config)

```

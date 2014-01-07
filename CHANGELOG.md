# CHANGELOG for phpmyadmin

This file is used to list changes made in each version of phpmyadmin.

## 1.1.2-4

* Fix the phpmyadmin.conf creation and a2ensite

## 1.1.1

* Set the Apache2 webserver default

## 1.1.0

* Set up the Apache2 site configuration

## 1.0.9

* Don't hijack the user account chosen to own phpmyadmin files

## 1.0.8

* Allow check for FPM to accept 'yes', 'enable[d]', 1 and 'active'

## 1.0.7

* Version bump
* Include important PHP dependencies before running the default recipe

## 1.0.6

* Blowfish secret fix
* PMA version bump

## 1.0.5

* PMA major version bump in the 4.x series
* Fixed mirror string

## 1.0.4

* PMA version bump
* Fix for node save in order to run on chef-solo runs (credit: Ivan Tanev)
* Updated the upload directory permissions with more secure ones
* Othe small fixes here and there

## 1.0.2

* PMA version bump
* Updated some default attributes

## 1.0.1

* Updated blowfish hash creation method
* Added the pmadb LWRP for creating the PMA's databases to each needed node
* Updated LWRP idempotency
* Added new attributes

## 1.0.0:

* Initial release of phpmyadmin

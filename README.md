# Puppet module: lsb

## DEPRECATION NOTICE
This module is no more actively maintained and will hardly be updated.

Please find an alternative module from other authors or consider [Tiny Puppet](https://github.com/example42/puppet-tp) as replacement.

If you want to maintain this module, contact [Alessandro Franceschi](https://github.com/alvagante)


This is a Puppet module for lsb
It provides only package installation and management for minimal lsb setup
in order to have lsb based facts installing the minimun number of dependencies.

Based on Example42 layouts by Alessandro Franceschi / Lab42

Official site: http://www.example42.com

Official git repository: http://github.com/example42/puppet-lsb

Released under the terms of Apache 2 License.

This module requires the presence of Example42 Puppi module in your modulepath.


## USAGE - Basic management

* Install lsb

        class { 'lsb': }

* Install a specific version of lsb package

        class { 'lsb':
          version => '1.0.1',
        }

* Remove lsb

        class { 'lsb':
          absent => true
        }

* Module dry-run: Do not make any change on *all* the resources provided by the module

        class { 'lsb':
          noops => true
        }

* Automatically include a custom subclass

        class { 'lsb':
          my_class => 'example42::my_lsb',
        }


[![Build Status](https://travis-ci.org/example42/puppet-lsb.png?branch=master)](https://travis-ci.org/example42/puppet-lsb)

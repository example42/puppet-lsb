# Class: lsb::params
#
# This class defines default parameters used by the main module class lsb
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to lsb class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class lsb::params {

  ### Application related parameters

  $package = $::operatingsystem ? {
    /(?i:Ubuntu|Debian|Mint)/              => 'lsb-base',
    /(?i:RedHat|Centos|Scientific|Fedora)/ => 'redhat-lsb',
    /(?i:SLES|OpenSuSE)/                   => 'lsb-release',
  }

  # General Settings
  $my_class = ''
  $version = 'present'
  $absent = false
  $noops = false

}

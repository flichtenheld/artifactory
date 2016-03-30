# Class: artifactory
# ===========================
#
# Full description of class artifactory here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class artifactory(
  $is_pro       = $::artifactory::params::is_pro,
  $license_key  = $::artifactory::params::license_key,
  $package_name = $::artifactory::params::package_name,
  $service_name = $::artifactory::params::service_name,
) {
  include ::artifactory::params

  # validate parameters here

  class { '::artifactory::install': } ->
  class { '::artifactory::config': } ~>
  class { '::artifactory::service': } ->
  Class['::artifactory']
}

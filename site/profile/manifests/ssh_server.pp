class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCu/I/TAuGmoNO4PppneQqoh0AQmWgpPcm0qLtrM0vKXaT0iOu1dElSDEqbK/OLWnlWsxtBYv80vXJuCNTewA2lHh11WhlgWQvPxVqWS1wBHw5mNcmCBeuEXVKo6Wlzn44NcT58oGi4VXHbkNpZFnoQR70vjWZOwZtlM3B3zK2w+hTDP1BSK+GURayeCK7SrIbwBG9LLfuwyG8gQa2dBVJaYfN2R/+kW8p4YWfMXJUAsDVaf1bheXma2qg8zVc2novMJF2ATgrPTsHX73O+Dz5CFK/hkO6m+D6b2MOSHkQqUyBI08A1TSYSRKUuLoyUhrxOET16SZ8u/vVl8/W7TF//',
  }  
}

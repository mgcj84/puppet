class base {
		case $::osfamily{
			"Redhat": {
			$pacotes = ["epel-relase","git","vim","sl","figlet","cowsay"]
			$web = "httpd"
			}	
			"Debian": {
			$pacotes = ["git","vim","sl","figlet","cowsay","htop"]
			$web = "apache2"
				}
		}

package{$pacotes:
	ensure => present
	}	
file {"/root/.bashrc":
	source => "puppet:///modules/base/bash_base",
	ensure => present
	}
}

node 'node01.milenlab.vm' {
  	group { "puppet":
		ensure => present,
  	}

  	# to update outdated package list
  	exec { "refresh-packages":    
    	command => "/usr/bin/apt-get update",
    	before => Package["apache2"],
  	}

  	package { "apache2":
		ensure => installed,
	}
	  
	service { "apache2":
		ensure => running,
		require => Package["apache2"],
	}
	  
	file { "/var/www/index.html":
		ensure => file,
		content => "<html><body><h1>Vagrant and Puppet test!</h1></body></html>",
		require => Service["apache2"],
	}	
}

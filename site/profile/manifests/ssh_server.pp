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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDdeIJUBckYjqajaN/iX4HUVlqB4ywGaU6K17gFeEVBLZ4Vh2jecR/C68NwVgu6nMZcgzec/814GpCJFjqzLaQnniHqmdwB97DasuNFwlIozXjQ+XybDIlUnCKpooS9B+8WtSWyzvw+da6xONRQo3pnrlyFgpWwG2zmcPi9lMl8b6BxLIgnwBVRLD0uvq3iT/TM14AEcEj/mWtil/LF2JPKoHar01LlzWNKdSQTFdOFmi14q8298ThZNzgB1LjI7ASox8nJ3ZIZypWwWt6vDnbRXBHYBCSjypGTbZatKRneSNsb22301oNQ9DSRIRted4cqa37nGluh+6kBEN2Y5b3n',
	}  
}

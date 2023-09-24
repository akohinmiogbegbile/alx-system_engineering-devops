#!/usr/bin/env bash
# using puppet to make changes to our configuration file

file {'etc/ssh/ssh_config':
       ensure => present,

content =>"

	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
}

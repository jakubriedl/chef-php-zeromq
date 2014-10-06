default['php-zeromq']['url'] = 'https://github.com/mkoppanen/php-zmq/archive/master.tar.gz'

case platform_family
	when "rhel", "fedora"

		default['php']['conf_dirs'] = ['/etc/php.d']
		default['php-zeromq']['conf_file'] = 'zeromq.ini'

	when "debian"

		default['php']['conf_dirs'] = ['/etc/php.d']
		default['php-zeromq']['conf_file'] = '30-zeromq.ini'

end

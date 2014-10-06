default['php-zeromq']['url'] = 'https://github.com/mkoppanen/php-zmq/archive/master.tar.gz'

case platform_family
	when "rhel", "fedora"

		default['php-msgpack']['conf_dirs'] = ['/etc/php.d']
		default['php-msgpack']['conf_file'] = 'zeromq.ini'

	when "debian"

		default['php-msgpack']['conf_dirs'] = ['/etc/php.d']
		default['php-msgpack']['conf_file'] = '30-zeromq.ini'

end

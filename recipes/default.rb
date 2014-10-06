remote_file "#{Chef::Config[:file_cache_path]}/zeromq.tar.gz" do
  source "#{node['php-zeromq']['url']}"
end

bash 'make & install zeromq' do
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
	  tar zxf zeromq.tar.gz
	  cd php-zmq-master
	  phpize
	  ./configure --with-zmq=/usr/local
	  make && make install
  EOF
end

node['php-zeromq']['conf_dirs'].each do |conf_dir|
	file "#{conf_dir}/#{node['php-zeromq']['conf_file']}" do
		owner 'root'
		group 'root'
		mode '0644'
		content 'extension=zmq.so'
	end
end

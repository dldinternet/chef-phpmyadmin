include_recipe "apache2"

apache_site node[:phpmyadmin][:apache2][:site] do
	enable node[:phpmyadmin][:apache2][:site_enable]
end

link "#{node['apache']['dir']}/sites-available/phpmyadmin" do
	action :create
      to "#{node[:phpmyadmin][:apache2][:site_config]}"
	not_if { node[:phpmyadmin][:apache2][:site_enable].to_s.downcase.match(%r/^yes|1|enable|activ|true/) }
end

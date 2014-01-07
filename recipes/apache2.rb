include_recipe "apache2"

web_app node[:phpmyadmin][:apache2][:site] do
	docroot node[:phpmyadmin][:home]
	template node[:phpmyadmin][:apache2][:template]
	cookbook node[:phpmyadmin][:apache2][:cookbook] unless node[:phpmyadmin][:apache2][:cookbook].nil?
end

link "#{node[:apache][:dir]}/sites-available/#{node[:phpmyadmin][:apache2][:site]}.conf" do
	action :create
      to "#{node[:phpmyadmin][:apache2][:site_config]}"
end

apache_site node[:phpmyadmin][:apache2][:site] do
	enable node[:phpmyadmin][:apache2][:site_enable].to_s.downcase.match(%r/^yes|1|enable|activ|true/)
end


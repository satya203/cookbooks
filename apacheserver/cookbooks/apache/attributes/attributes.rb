case node['platform']
  when "RHEL","CENTOS"
    default["apache"]["package_name"] = 'httpd'
    default["apache"]["service_name"] = 'httpd'
    default["apache"]["directory_name"] = '/var/www/html'
  when "ubuntu","debian"
    default["apache"]["package_name"] = 'apache2'
    default["apache"]["service_name"] = 'apache2'
    default["apache"]["directory_name"] = '/var/www/html'
end
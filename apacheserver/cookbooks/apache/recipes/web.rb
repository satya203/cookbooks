##install apache package
node["package_name"] do
  action :install
end

##start the apache service
node["service_name"] do
    action [:start, :enable]
end

##update the template
template"{#node["directory_name"]}/welcome.html" do
   mode '0777'
   owner 'root'
   group 'root'
   source 'apache.erb'
   action :create
end
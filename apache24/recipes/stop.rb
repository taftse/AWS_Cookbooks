include_recipe "apache24::service"

service "apache2" do
  action :stop
end
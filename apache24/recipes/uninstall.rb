if File.exists?("/etc/init.d/apache2")
  include_recipe "apache24::service"

  service "apache2" do
    action :stop
  end

  package "apache2" do
    action :remove
  end
end
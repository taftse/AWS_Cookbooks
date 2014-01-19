include_recipe 'apache24'

node[:mod_php55_apache2][:packages].each do |pkg|
  package pkg do
    action :install
  end
end

include_recipe 'apache24::mod_php5'

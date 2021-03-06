require 'minitest/spec'

describe_recipe 'apache24::mod_php5' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  before :all do
    @prefix = case node[:platform_family]
              when 'rhel'
                node[:apache][:dir]
              when "debian"
                ".."
              end
  end

  it 'installs dependencies' do
    case node[:platform]
    when 'debian','ubuntu'
      package('libapache2-mod-php5').must_be_installed
    when 'centos','redhat','fedora','amazon'
      package('php55').must_be_installed
    end
  end

  it 'enables mod_php5' do
    link("#{node[:apache][:dir]}/mods-enabled/php5.load").must_exist.with(
         :link_type, :symbolic).and(:to, "#{@prefix}/mods-available/php5.load")
  end
end

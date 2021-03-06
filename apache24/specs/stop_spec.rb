require 'minitest/spec'

describe_recipe 'apache24::stop' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it 'stops apache2' do
    case node[:platform]
    when 'centos','redhat','fedora','amazon'
      service('httpd').wont_be_running
    when 'ubuntu','debian'
      service('apache2').wont_be_running
    end
  end
end

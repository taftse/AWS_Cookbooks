require 'minitest/spec'

describe_recipe 'apache24::mod_env' do
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

  it 'enables mod_env' do
    link("#{node[:apache][:dir]}/mods-enabled/env.load").must_exist.with(
         :link_type, :symbolic).and(:to, "#{@prefix}/mods-available/env.load")
  end
end

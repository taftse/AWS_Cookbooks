require 'minitest/spec'

describe_recipe 'mod_php55_apache2::default' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it 'installs a pile of php packages' do
    case node[:platform]
    when 'debian', 'ubuntu'
      packages = [
        'php5-xsl',
        'php5-curl',
        'php5-xmlrpc',
        'php5-sqlite',
        'php5-dev',
        'php5-gd',
        'php5-cli',
        'php5-sasl',
        'php5-mysql',
        'php5-mcrypt',
        'php5-memcache',
        'php-pear',
        'php-xml-parser',
        'php-mail-mime',
        'php-db',
        'php-mdb2',
        'php-html-common'
      ]

    when 'redhat', 'centos', 'fedora', 'amazon'
      packages = [
        'php55-xml',
        'php55-common',
        'php55-xmlrpc',
        'php55-devel',
        'php55-gd',
        'php55-cli',
        'php55-pear-Auth-SASL',
        'php55-mysql',
        'php55-mcrypt',
        'php55-pecl-memcache',
        'php55-pear',
        'php55-pear-XML-Parser',
        'php55-pear-Mail-Mime',
        'php55-pear-DB',
       'php55-pear-HTML-Common'
      ]
    end

    packages.each do |pkg|
      package(pkg).must_be_installed
    end
  end
end

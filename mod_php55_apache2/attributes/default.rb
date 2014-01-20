packages = []

case node[:platform_family]
when 'debian'
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
when 'rhel'
  packages = [
    'php55w-common-5.5.6',
    'php55w-xml-5.5.6',    
    'php55w-xmlrpc-5.5.6',
    'php55w-devel-5.5.6',
    'php55w-gd-5.5.6',
    'php55w-cli-5.5.6',
    'php55w-pear-Auth-SASL-5.5.6',
    'php55w-mysql-5.5.6',
    'php55w-mcrypt-5.5.6',
    'php55w-pecl-memcache-5.5.6',
    'php55w-pear-5.5.6',
    'php55w-pear-XML-Parser-5.5.6',
    'php55w-pear-Mail-Mime-5.5.6',
    'php55w-pear-DB-5.5.6',
    'php55w-pear-HTML-Common-5.5.6'
  ]
end

default[:mod_php55w_apache2][:packages] = packages
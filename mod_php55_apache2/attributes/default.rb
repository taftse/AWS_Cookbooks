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
    'php55',
    'php55-xml',    
    'php55-xmlrpc',
    'php55-devel',
    'php55-gd',
    'php55-cli',
    'php-pear-Auth-SASL',
   # 'php-mysql',
    'php55-pdo',
    'php55-mcrypt',
    'php55-pecl-memcache',
    'php-pear',
    'php-pear-XML-Parser',
    'php-pear-Mail-Mime',
    'php-pear-DB',
    'php-pear-HTML-Common'
  ]
end

default[:mod_php55_apache2][:packages] = packages
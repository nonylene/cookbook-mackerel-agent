name             'mackerel-agent'
maintainer       'Hatena Co., Ltd.'
maintainer_email 'mackerel-developers@hatena.ne.jp'
license          'Apache License, Version 2.0'
description      'Installs/Configures mackerel-agent'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.0.0'

depends 'apt'
depends 'yum'

%w(debian ubuntu redhat centos amazon).each do |os|
  supports os
end

chef_version '>= 12.1' if respond_to?(:chef_version)

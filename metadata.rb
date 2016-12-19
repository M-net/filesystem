name             'filesystem'
maintainer       'Alex Trull'
maintainer_email 'cookbooks.atrullmdsol@trull.org'
description      'Installs/Configures various filesystems'
license          'Apache 2.0'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.11.0"

%w/redhat centos xenserver ubuntu debian scientific amazon/.each do |os|
  supports os
end

depends 'xfs'
depends 'lvm', '~> 3.1'

attribute 'filesystems',
  :description => "Filesystems to be created and/or mounted",
  :type => "hash",
  :required => "recommended"


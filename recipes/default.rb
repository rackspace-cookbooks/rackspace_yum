# Author:: Sean OMeara (<someara@getchef.com>)
# Author:: Matthew Thode (<matt.thode@rackspace.com>)
# Recipe:: rackspace_yum::default
#
# Copyright 2013, Chef
# Copyright 2014, Rackspace, US Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

rackspace_yum_globalconfig '/etc/yum.conf' do
  cachedir node['rackspace_yum']['main']['cachedir']
  keepcache node['rackspace_yum']['main']['keepcache']
  debuglevel node['rackspace_yum']['main']['debuglevel']
  exclude node['rackspace_yum']['main']['exclude']
  logfile node['rackspace_yum']['main']['logfile']
  exactarch node['rackspace_yum']['main']['exactarch']
  obsoletes node['rackspace_yum']['main']['obsoletes']
  installonly_limit node['rackspace_yum']['main']['installonly_limit']
  installonlypkgs node['rackspace_yum']['main']['installonlypkgs']
  installroot node['rackspace_yum']['main']['installroot']
  distroverpkg node['rackspace_yum']['main']['distroverpkg']
  action :create
end

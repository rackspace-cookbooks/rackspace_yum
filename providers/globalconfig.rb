#
# Cookbook Name:: rackspace_yum
# Provider:: globalconfig
#
# Author:: Sean OMeara <someara@getchef.com>
# Author:: Matthew Thode <matt.thode@rackspace.com>
#
# Copyright 2013, Chef
# Copyright 2014, Rackspace, US Inc.
#
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
#

# Allow for Chef 10 support
use_inline_resources if defined?(use_inline_resources)

action :create  do
  template new_resource.path do
    source 'main.erb'
    cookbook node['rackspace_yum']['main']['cookbook_template_globalconfig']
    mode '0644'
    variables(:config => new_resource)
  end
end

action :delete do
  file new_resource.path do
    action :delete
  end
end

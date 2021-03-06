#
# Cookbook Name:: diamond
# Recipe:: example
#
# Copyright 2012, Scott M. Likens
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
diamond_install node['hostname'] do
  action :git
end
diamond_configure node['hostname'] do
  action :config
end
diamond_plugin "CPUCollector" do  
  action :enable  
  options({})  
end  
diamond_plugin "NetworkCollector" do
  action :enable
  options({})
end

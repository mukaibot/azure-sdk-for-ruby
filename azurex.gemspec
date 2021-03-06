#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "date"

require File.expand_path('../lib/azure/version', __FILE__)

Gem::Specification.new do |s|
  s.name    = "azurex"
  s.version = Azure::Version

  s.authors     = ["Microsoft Corporation", "various individuals"]
  s.email       = "timothy@mukaibo.com"
  s.description = "Microsoft Azure Client Library for Ruby"
  s.summary     = "Non-Official ruby client library to consume Windows Azure services. 
    As of June 2014, the official gem witten by Microsoft(0.6.4) only covers a few methods 
    from the vast Azure REST API. This gem has a number of enhancements over the under-developed
    official project. Contributions are welcome! See the readme for details.
    This project is a fork of https://github.com/azure/azure-sdk-for-ruby.git"
  s.homepage    = "https://github.com/mukaibot/azure-sdk-for-ruby.git"
  s.license     = 'Apache License, Version 2.0'
  s.files       = `git ls-files`.split("\n")

  s.required_ruby_version = '>= 2.0.0'

  s.add_runtime_dependency('nokogiri',   "~> 1.5")
  s.add_runtime_dependency("mime-types", "~> 1.0")
  s.add_runtime_dependency('json', '~> 1.8')
  s.add_runtime_dependency('uuid', '~> 2.0')
  s.add_runtime_dependency('systemu', '~> 2.6')

  s.add_development_dependency("rake", '~> 10.0')
  s.add_development_dependency("minitest", "~> 3.0")
  s.add_development_dependency('mocha', '~> 1.0')
  s.add_development_dependency('turn', '~> 0.9')
end

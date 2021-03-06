# -*- encoding: utf-8 -*-
# Copyright (c) 2009-2012 VMware, Inc.
version = File.read(File.expand_path('../../BOSH_VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.name         = 'ruby_vim_sdk'
  s.version      = version
  s.platform     = Gem::Platform::RUBY
  s.summary      = 'BOSH vSphere API client'
  s.description  = "BOSH vSphere API client\n#{`git rev-parse HEAD`[0, 6]}"
  s.author       = 'VMware'
  s.homepage     = 'https://github.com/cloudfoundry/bosh'
  s.license      = 'Apache 2.0'
  s.email        = 'support@cloudfoundry.com'
  s.required_ruby_version = Gem::Requirement.new('>= 1.9.3')

  s.files        = `git ls-files -- lib/*`.split("\n") + %w(README)
  s.require_path = 'lib'

  s.add_dependency('builder', '~>3.1.4')
  s.add_dependency('httpclient', '=2.2.4')
  s.add_dependency('nokogiri', '~>1.5.6')
end

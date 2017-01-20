Gem::Specification.new do |s|
  s.name        = 'gonebusy-ruby-client'
  s.version     = '0.0.5'
  s.summary     = 'GoneBusy API Ruby client'
  s.description = 'This is a Ruby client for communicating with the full GoneBusy API'
  s.authors     = ["Alex Agranov"]
  s.email       = 'alex@gonebusy.com'
  s.homepage    = 'http://www.gonebusy.com'
  s.license     = 'MIT'
  
  s.required_ruby_version = '~> 2.0'

  s.add_runtime_dependency('faraday', '~> 0.10.0')
  s.add_runtime_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_development_dependency('test-unit', '~> 3.1.5')

  s.files       = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']  
  s.require_paths = ['lib']
  
end

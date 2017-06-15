Gem::Specification.new do |s|
  s.name        = 'gonebusy-ruby-client'
  s.version     = '0.1.2'
  s.summary     = 'GoneBusy API Ruby client'
  s.description = 'This is a Ruby client for communicating with the full GoneBusy API'
  s.authors     = ["Alex Agranov"]
  s.email       = 'alex@gonebusy.com'
  s.homepage    = 'https://www.gonebusy.com'
  s.license     = 'MIT'
  
  s.required_ruby_version = '~> 2.0'

  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 0.10.0')
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')

  s.files       = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']  
  s.require_paths = ['lib']
  
end

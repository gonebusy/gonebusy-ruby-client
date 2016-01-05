Gem::Specification.new do |s|
  s.name        = 'gonebusy-ruby-client'
  s.version     = '0.0.1'
  s.summary     = 'GoneBusy API Ruby client'
  s.description = 'This is a Ruby client for communicating with the full GoneBusy API'
  s.authors     = ["Alex Agranov"]
  s.email       = 'alex@gonebusy.com'
  s.homepage    = 'http://www.gonebusy.com'
  s.license     = 'MIT'
  
  s.add_dependency('unirest', '~> 1.1.2')
  s.required_ruby_version = '~> 2.0'

  s.files       = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']  
  s.require_paths = ['lib']
  
end

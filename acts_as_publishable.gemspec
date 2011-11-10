lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "acts_as_publishable"
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Bruno Bornsztein", "Kelly Irvin"]
  s.email       = ["kelly.irvin@gmail.com"]
  s.homepage    = "http://github.com/kirvin/acts_as_publishable"
  s.summary     = "Provides a publishing lifecycle for ActiveRecord models"
  s.description = "Provides a publishing lifecycle for ActiveRecord models"
 
  s.required_rubygems_version = ">= 1.3.6"
 
  s.add_development_dependency "rspec"
 
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.markdown)
  s.require_path = 'lib'
end

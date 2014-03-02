# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','bookingit','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'bookingit'
  s.version = Bookingit::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','bookingit.rdoc']
  s.rdoc_options << '--title' << 'bookingit' << '--main' << 'README.rdoc' << '-ri'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_development_dependency('clean_test')
  s.add_runtime_dependency('gli')
  s.add_runtime_dependency('redcarpet')
end
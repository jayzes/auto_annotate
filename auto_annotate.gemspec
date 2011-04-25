$:.push File.expand_path("../lib", __FILE__)
require 'auto_annotate/version'

Gem::Specification.new do |s|
  s.name = 'auto_annotate'
  s.version = "0.2.0"
  s.platform = Gem::Platform::RUBY
  s.date = "2011-04-25"
  s.authors = ['Jay Zeschin']
  s.email = 'jay.zeschin@factorylabs.com'
  s.homepage = 'http://github.com/jayzes/auto_annotate'
  s.summary = %Q{Automatically annotate your Rails models whenever you run a db:migrate}
  s.description = %Q{Automatically annotate your Rails models whenever you run a db:migrate}
  s.extra_rdoc_files = [
    'LICENSE',
    'README.rdoc',
  ]

  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.6')
  s.rubygems_version = '1.3.7'
  s.specification_version = 3

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  
  s.add_dependency 'rails',       '>= 3.0.0'
  s.add_dependency 'rake-hooks',  '>= 0.1'
  s.add_dependency 'annotate',    '>= 2.4.0'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'bueller'
  s.add_development_dependency 'rake'
  
end


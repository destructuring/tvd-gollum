# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "tvd-gollum/version"

Gem::Specification.new do |s|
  s.name        = "tvd-gollum"
  s.version     = ENV['EDIT_gollum'] ? "#{TVDinner::Gollum::VERSION}.rc#{%x(git log --max-count=1 --pretty=format:%ct)}" : TVDinner::Gollum::VERSION
  s.homepage    = "http://destructuring.org/tvd-gollum"
  s.license     = "Apache 2.0"

  s.executables  = []
  s.test_files   = `git ls-files -- {spec,tasks}/*`.split("\n")
  s.files        = `git ls-files -- lib/* cookbooks/*`.split("\n") 

  s.files       += s.test_files
  s.files       += s.executables.map {|f| File.join("bin", f) }
  s.files       +=  %w(LICENSE NOTICE VERSION README.md)

  s.require_path = "lib"

  s.add_dependency "tvd-unicorn"
  s.add_dependency "gollum"

  s.author      = "Tom Bombadil"
  s.email       = "amanibhavam@destructuring.org"
  s.summary     = "Gollum service"
  s.description = "Gollum unicorn managed by runit"
end

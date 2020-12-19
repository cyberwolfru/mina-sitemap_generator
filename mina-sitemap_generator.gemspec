# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina/sitemap_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "mina-sitemap_generator"
  spec.version       = Mina::SitemapGenerator::VERSION
  spec.authors       = ["Vitaly Taras"]
  spec.email         = ["webinsurgut@gmail.com"]
  spec.summary       = %q{SitemapGenerator tasks for Mina.}
  spec.description   = %q{SitemapGenerator tasks for Mina.}
  spec.homepage      = "http://github.com/cyberwolfru/mina-sitemap_generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "mina", "~> 1.2.0"
end

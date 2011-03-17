require './lib/bsearch'
Gem::Specification.new do |spec|
  spec.author   = 'Satoru Takabayashi'
  spec.name     = "bsearch"
  spec.version  = Bsearch::VERSION::STRING
  spec.homepage = 'http://0xcc.net/ruby-bsearch/'
  spec.files    = Dir.glob("{doc,lib,test}/**/*") + ['ChangeLog']
  spec.license  = "Ruby's"
  spec.summary  = 'a binary search library for Ruby.'
  spec.description = "The binary search algorithm is extracted from Jon Bentley's # Programming Pearls 2nd ed. p.93"
  # packaged by http://twitter.com/yalab
end

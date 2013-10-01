# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ans-jp_index/version'

Gem::Specification.new do |gem|
  gem.name          = "ans-jp_index"
  gem.version       = Ans::JpIndex::VERSION
  gem.authors       = ["sakai shunsuke"]
  gem.email         = ["sakai@ans-web.co.jp"]
  gem.description   = %q{日本語五十音の「行」を取得}
  gem.summary       = %q{五十音の「行」を取得するメソッドを提供}
  gem.homepage      = "https://github.com/answer/ans-jp_index"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

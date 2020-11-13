Gem::Specification.new do |gem|
  gem.authors       = ["Joao Vortmann"]
  gem.summary       = %q{FastJsonparser middleware for Faraday}
  gem.description   = %q{Faraday middleware for parsing JSON using the FastJsonparser parser.}
  gem.homepage      = "https://github.com/globocom/faraday_middleware_fast_jsonparser"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "faraday_middleware_fast_jsonparser"
  gem.require_paths = ["lib"]
  gem.version       = "1.0.0"

  gem.add_runtime_dependency "faraday"
  gem.add_runtime_dependency "faraday_middleware"
  gem.add_runtime_dependency "fast_jsonparser", ">= 0.5"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
end

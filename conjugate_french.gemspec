require_relative 'lib/conjugate_french/version'

Gem::Specification.new do |spec|
  spec.name          = 'conjugate_french'
  spec.version       = ConjugateFrench::VERSION
  spec.authors       = ['Martfed']
  spec.email         = ['federicodm90@gmail.com']

  spec.summary       = 'Conjugate to quickly conjugate french verbes'
  spec.homepage      = 'https://rubygems.org/gems/conjugate_french'
  spec.license       = 'MIT'
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'json'
  spec.add_dependency 'terminal-table'
  spec.add_dependency 'thor'

  spec.add_development_dependency 'rake'
end

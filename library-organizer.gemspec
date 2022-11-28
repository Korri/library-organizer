require_relative 'lib/library/organizer/version'

Gem::Specification.new do |spec|
  spec.name          = "library-organizer"
  spec.version       = Library::Organizer::VERSION
  spec.authors       = ["Hugo Vacher"]
  spec.email         = ["korrigan33@gmail.com"]

  spec.summary       = %q{Organize your photo/video library}
  spec.description   = %q{Command line tool, used to organize your photo and video library based on file data only, and in an indempotent way.}
  spec.homepage      = "https://github.com/Korri/library-organizer"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Korri/library-organizer"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
end

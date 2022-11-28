# frozen_string_literal: true

require_relative 'lib/library/organizer/version'

Gem::Specification.new do |spec|
  spec.name          = 'library-organizer'
  spec.version       = Library::Organizer::VERSION
  spec.authors       = ['Hugo Vacher']
  spec.email         = ['korrigan33@gmail.com']

  spec.summary       = 'Organize your photo/video library'
  spec.description   = %(
    Command line tool, used to organize your photo and video library based on file data only, and in an indempotent way.
  )
  spec.homepage      = 'https://github.com/Korri/library-organizer'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Korri/library-organizer'
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-minitest'
  spec.add_development_dependency 'ruby-lsp'

  spec.add_dependency 'slop'
end

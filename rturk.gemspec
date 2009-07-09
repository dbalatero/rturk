Gem::Specification.new do |s|
  s.name = %q{rturk}
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mark Percival"]
  s.date = '2009-06-20'
  s.description = 'Mechanical Turk API wrapper - super simple'
  s.summary = %q{Mechanical Turk API wrapper}
  s.email = 'mark@markpercival.us'
  s.files = Dir['lib/**/*.rb'] + Dir['spec/**/*.rb'] + ['README.markdown'] + Dir['examples/**/*']
  # s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "README.txt"]
  s.has_rdoc = false
  s.homepage = 'http://github.com/markpercival/rturk'
  s.require_paths = ["lib"]
  s.rubygems_version = '1.3.1'
  s.summary = 'simple Twitter API wrapper'

  s.add_dependency(%q<rest-client>, [">= 0.9"])
  s.add_dependency(%q<xml-simple>, [">= 1.0.12"])

end
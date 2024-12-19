Gem::Specification.new do |spec|
  spec.name          = "mailtester-ninja"
  spec.version       = "0.1.0"
  spec.authors       = ["Michael Henson"]
  spec.email         = ["michael@example.com"]
  spec.summary       = "A Ruby wrapper for the MailTester Ninja API."
  spec.description   = "Provides an easy way to validate email addresses programmatically using MailTester Ninja's API."
  spec.homepage      = "https://github.com/michael-henson/mailtester-ninja"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"] + ["README.md", "LICENSE.txt"]
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.18"
end

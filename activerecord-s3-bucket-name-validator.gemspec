lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "activerecord/s3/bucket/name/validator/version"

Gem::Specification.new do |spec|
  spec.name = "activerecord-s3-bucket-name-validator"
  spec.version = Activerecord::S3::Bucket::Name::Validator::VERSION
  spec.authors = ["Claudio Poli"]
  spec.email = ["masterkain@gmail.com"]

  spec.summary = "ActiveModel/ActiveRecord validator for Amazon S3 bucket naming rules"
  spec.description = "Validate S3 bucket names on your models against the official AWS rules (general purpose, directory buckets, S3 Tables, and S3 Vectors)."
  spec.homepage = "https://github.com/icoretech/activerecord-s3-bucket-name-validator"
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "https://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/icoretech/activerecord-s3-bucket-name-validator"
    spec.metadata["bug_tracker_uri"] = "https://github.com/icoretech/activerecord-s3-bucket-name-validator/issues"
    spec.metadata["changelog_uri"] = "https://github.com/icoretech/activerecord-s3-bucket-name-validator/releases"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # Keep the package lean: include library code, locales, and top-level docs only.
  spec.files = Dir[
    "lib/**/*",
    "config/locales/**/*",
    "README*",
    "LICENSE*",
    "*.gemspec"
  ]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.1"

  # Runtime dependencies
  spec.add_dependency "activemodel", ">= 7.0", "< 9"
  spec.add_dependency "i18n", ">= 1.0"

  # Development and test dependencies
  spec.add_development_dependency "bundler", ">= 1.17"
  spec.add_development_dependency "rake", ">= 10.0"
  spec.add_development_dependency "minitest", ">= 5.0"
  spec.add_development_dependency "simplecov", ">= 0.22"
end

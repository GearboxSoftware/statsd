# -*- encoding: utf-8 -*-

Gem::Specification.new("statsd-ruby", "1.2.1.gbx1") do |s|
  s.authors = ["Rein Henrichs"]
  s.email = "reinh@reinh.com"

  s.summary = "A Ruby StatsD client"
  s.description = "A Ruby StatsD client (https://github.com/etsy/statsd)"

  s.homepage = "https://github.com/reinh/statsd"
  s.licenses = %w[MIT]

  s.extra_rdoc_files = %w[LICENSE.txt README.rdoc]

  if $0 =~ /gem/ # If running under rubygems (building), otherwise, just leave
    s.files         = %w(.document .travis.yml Gemfile LICENSE.txt README.rdoc Rakefile lib/statsd-ruby.rb lib/statsd.rb spec/helper.rb spec/statsd_admin_spec.rb spec/statsd_spec.rb statsd-ruby.gemspec)
    s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  end

  s.add_runtime_dependency "json"

  s.add_development_dependency "minitest", ">= 3.2.0"
  s.add_development_dependency "yard"
  s.add_development_dependency "simplecov", ">= 0.6.4"
  s.add_development_dependency "rake"
end


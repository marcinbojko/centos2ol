# frozen_string_literal: true

source 'https://rubygems.org'

gem 'bigdecimal', '< 4.0'
gem 'psych', '< 5'
gem 'racc', '< 1.8'
gem 'rake', '~> 13.0'

group :integration do
  gem 'kitchen-docker', '~> 3.0'
  gem 'kitchen-inspec', '~> 2.3'
  gem 'kitchen-vagrant', '~> 1.8'
  gem 'net-ssh', '>= 7.0'
  gem 'test-kitchen', '~> 3.4'
end

group :style do
  gem 'pronto', '~> 0.7'
  gem 'pronto-shellcheck', '~> 0.1'
  gem 'rubocop', '~> 1.10'
  gem 'rubocop-rake', '~> 0.5'
end

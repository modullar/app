# frozen_string_literal: true

require "gems"

Gems.configure do |config|
  config.key = ENV["RUBYGEMS_API_KEY"]
end

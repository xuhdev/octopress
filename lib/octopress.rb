$:.unshift File.expand_path(File.dirname(__FILE__)) # For use/testing when no gem is installed

require "octopress/core_ext"
require "octopress/configuration"
require "octopress/asset_helpers"

module Octopress

  # Static: Fetches the Octopress environment
  def self.env
    ENV["OCTOPRESS_ENV"] || Configuration.read_config("defaults/jekyll.yml")[:env]
  end
end

#begin
#  require "rubygems"
#  require "bundler"
#rescue LoadError
#  raise "Could not load the bundler gem. Install it with `gem install bundler`."
#end
#
#if Gem::Version.new(Bundler::VERSION) <= Gem::Version.new("0.9.24")
#  raise RuntimeError, "Your bundler version is too old." +
#   "Run `gem install bundler` to upgrade."
#end
#
#begin
#  # Set up load paths for all bundled gems
#  ENV["BUNDLE_GEMFILE"] = File.expand_path("../../Gemfile", __FILE__)
#  Bundler.setup
#rescue Bundler::GemNotFound
#  raise RuntimeError, "Bundler couldn't find some gems." +
#    "Did you run `bundle install`?"
#end

# If you have problems with the app loading under passenger, check the SpawnMethod
# The following currently does not work under the 'smart' method.
# However, the default is 'smart-lv2' which works just fine with the below.
# See comments at http://yehudakatz.com/2009/11/03/using-the-new-gem-bundler-today/
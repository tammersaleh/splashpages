require "bundler"
require './lib/splashpages'

use Rack::Static, :urls => ["/stylesheets", "/images"],
                  :root => "public"

run Splashpages


require 'rack/reverse_proxy'
require './lib/parser'

use Rack::ReverseProxy do
  parse_sites.each do |site|
    proxy_path = %r{^/#{site[:from]}(/.*)$}
    forward_path = "#{site[:to]}$1"

    reverse_proxy proxy_path, forward_path
  end
end

app = ->(env) { [ 404, { 'Content-Type' => 'text/plain' }, [ "Not Found" ] ] }

run app

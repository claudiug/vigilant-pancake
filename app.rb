require 'roda'
require 'tilt/erubis'
require 'rack/unreloader'

require_relative 'db'

class App < Roda
  plugin :default_headers,
         'Content-Type'=>'text/html',
         'X-Frame-Options'=>'deny',
         'X-Content-Type-Options'=>'nosniff',
         'X-XSS-Protection'=>'1; mode=block'


  route do |r|

    r.root do
      "root"
    end

    r.is 'template/:id' do |template_id|

      r.get do
        "#{template_id} on get"
      end

      r.post do
        "#{template_id} on post"
      end
    end
  end
end
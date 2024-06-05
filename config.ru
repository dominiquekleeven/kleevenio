require "roda"

class App < Roda
  plugin :render, escape: true, layout: 'layout' # render plugin is required to use view
  plugin :public # public plugin is required to use static files


  route do |r|

    r.public # serve static files from public directory

    r.root do
      view "index"
    end
  end
end

run App.freeze.app
require "roda"
require "logger"

logger = Logger.new(STDOUT)
logger.info "Starting server..."

# App class - main entry point
class App < Roda
  plugin :render, escape: true, layout: 'layout'
  plugin :public

  route do |r|
    r.public
    r.root do
      view "index"
    end
  end
end


run App.freeze.app
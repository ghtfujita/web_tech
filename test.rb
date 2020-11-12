require 'webrick'
server = WEBrick::HTTPServer.new ({
  :DOcumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '3000',
})
['INT', 'TERM'].each {|signal|
Signal.trap(signal){ server.shutdown }
}
server.mount('/test', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')
server.start
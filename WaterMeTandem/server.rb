require "webrick"

#https://stackoverflow.com/questions/38523345/how-to-display-ruby-output-in-browser
root = File.expand_path 'public_html'
server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root
# server.mount_proc "/" do |req, res|
#   res.body = "Hello, world!\n"
# end

trap 'INT' do server.shutdown end

server.start
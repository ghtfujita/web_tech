require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
    get = cgi['goya']
    "<html>
        <body>
        <p>ゴーヤの大きさと売った相手の情報(品質不良品)は下記になります</p>
        文字列：#{get}
        </body>
    </html>"
}
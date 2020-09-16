import sys.io.File;
import haxe.Json;
import haxe.io.Bytes;
import uwebsockets.js.UWebSockets as Server;
class UWebSockets
{
    public static function main()
    {
        final path = "data";
		function min(string:String):String
		{
			string = StringTools.replace(string," ","");
			string = StringTools.replace(string,"\r\n","");
			return string;
		}
		final dataBig = min(File.getContent('$path/dataBig.json'));
		final dataSmall = min(File.getContent('$path/dataSmall.json'));
        final hello = Json.stringify({hello: "world"});

        Server.App().get("/*",(res, req) -> {
            var url = req.getUrl();
            //trace(url);
            res.writeHeader("Content-Type","text/html; charset=utf8");
            switch (url)
            {
                case "/big" | "/bigschema": res.end(dataBig);
                case "/small": res.end(dataSmall);
                case "/hello": res.end(hello);
                default: //res.end("KO");
            }
            return;
        }).listen(3000,(listenSocket) -> {

        });
    }
}
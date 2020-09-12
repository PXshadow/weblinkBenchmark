import haxe.io.Bytes;
import haxe.Json;
import sys.io.File;
import weblink.Weblink;
class Main {
	static function main() {
		//optimize minifier
		final path = "frameworks-benchmark/data";
		function min(string:String):Bytes
		{
			string = StringTools.replace(string," ","");
			string = StringTools.replace(string,"\r\n","");
			return Bytes.ofString(string);
		}
		final dataBig = min(File.getContent('$path/dataBig.json'));
		final dataSmall = min(File.getContent('$path/dataSmall.json'));
		final hello = Bytes.ofString(Json.stringify({hello: "world"}));
		//app
		var app = new Weblink();
		app.get(function(request,response)
		{
			response.contentType = "application/json; charset=utf-8";
			switch (request.path)
			{
				case "/big" | "/bigschema":
				response.sendBytes(dataBig);
				case "/small":
				response.sendBytes(dataSmall);
				case "/hello":
				response.sendBytes(hello);
			}
		});
		app.listen(3000);
	}
}

import haxe.io.Path;
import sys.FileSystem;
import sys.io.File;
class Graph
{
    public static function main()
    {
        final path = "raw_data";
        final req = "Req/Sec";
        var index = 0;
        for (name in FileSystem.readDirectory("raw_data"))
        {
            var content = File.getContent('$path/$name');
            var name = Path.withoutExtension(name);
            Sys.println(name + ":");
            index = 0;
            for (i in 0...4)
            {
                index = content.indexOf(req,index) + req.length + 6; //6 for spaces
                var value = Std.parseFloat(content.substring(index,index = content.indexOf(" ",index)));
                Sys.println(value);
            }
        }
        
    } 
}
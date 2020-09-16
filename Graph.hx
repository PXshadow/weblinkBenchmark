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
        var buffer = new StringBuf();
        var names = new StringBuf();
        for (name in FileSystem.readDirectory("raw_data"))
        {
            var content = File.getContent('$path/$name');
            var name = Path.withoutExtension(name);
            names.add(name + "\r\n");
            index = 0;
            var values:Array<Float> = [];
            for (i in 0...4)
            {
                index = content.indexOf(req,index) + req.length + 6; //6 for spaces
                var value = Std.parseFloat(content.substring(index,index = content.indexOf(" ",index)));
                if (i == 1) continue;
                values.push(value);
            }
            buffer.add(values.join("	") + "\r\n");
            //819.8	17589.6	20270.41
        }
        File.saveContent("graph.txt",buffer.toString() + "\r\n" + names.toString());
    } 
}
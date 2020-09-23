function min(string)
{
    string = string.replace("\r\n","");
    string = string.replace(" ","");
    return string;
}
const dataBig = min(JSON.stringify(require('./data/dataBig')));
const dataSmall = min(JSON.stringify(require('./data/dataSmall')));
const hello = min(JSON.stringify({hello: 'world'}));
const uwebsockts = require('uWebSockets.js');
// Declare a route
uwebsockts.App().get("/*",(res,req) => {
    var url = req.getUrl();
    res.writeHeader("Content-Type","text/html; charset=utf8");
    switch (url)
    {
        case "/big": 
        res.end(dataBig);
        break;
        case "/bigschema":
        res.end(dataBig);
        break;
        case "/small": 
        res.end(dataSmall);
        break;
        case "/hello": 
        res.end(hello);
        break;
        default:
        throw("error!");
        res.end("KO");
        break;
    }
    return;
}).listen(3000,(listenSocket) => {

});
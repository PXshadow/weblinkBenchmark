function min(string)
{
    string = string.replace("\r\n","");
    string = string.replace(" ","");
    return string;
}
const dataBig = min(JSON.stringify(require('./data/dataBig')));
const dataSmall = min(JSON.stringify(require('./data/dataSmall')));
const hello = min(JSON.stringify({hello: 'world'}));

const fastify = require('fastify')();
const options = require('./data/fastifyOptions');
// Declare a route
fastify.get('/big', function(_req, res) {
    res.send(dataBig);
});
fastify.get('/bigschema', options, function(_req, res) {
    res.send(dataBig);
});
fastify.get('/small', function(_req, res) {
    res.send(dataSmall);
});
fastify.get('/hello', function(_req, res) {
    res.send(hello);
});

fastify.listen(3000, function(err) {
    if (err) { throw err; }
    console.log(`server listening on ${fastify.server.address().port}`);
});
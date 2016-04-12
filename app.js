var request = require("request");
var WebSocket = require("ws");

var url = "https://slack.com/api/rtm.start?token=" + process.env.token;
request( url, function( err, response, body ){
    var websocketUrl = JSON.parse( body ).url;
    var ws = new WebSocket(websocketUrl);
    ws.on("message", function(message){
      console.log(message);
      if(msg.type == "message" && msg.channel.substr(0,1) == "D"){
        reply(msg.channel, msg.text.split(" ").reverse().join(" "))
      }
    })
});

function reply(channel, message){
  var url = "https://slack.com/api/chat.postMessage?token=" + process.env.token + "&text=" + encodeURIComponent(message) + "&channel=" + channel;
  request(url, function(err,res,body){
    console.log(body)
  })
}

blocktrail = require('blocktrail-sdk');
client = blocktrail.BlocktrailSDK({apiKey: "MY_APIKEY", apiSecret: "MY_APISECRET", network: "BTC", testnet: true});

client.address('2NFmQG8bPRF2HAeBunjkvcMTLX7WoNhmNF7',
    function(err, address) { 
    	console.log(address.balance);     	
    });
/* client.blockLatest(
    function(err, block) { console.log(block.hash); }); */

console.log("123456789 Satoshi to BTC: ", blocktrail.toBTC(123456789));
console.log("1.23456789 BTC to Satoshi: ", blocktrail.toSatoshi(1.23456789));

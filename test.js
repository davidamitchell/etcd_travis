console.log("TESTING STARTED")

assert = require('assert');
Etcd = require('node-etcd');

etcd = new Etcd('127.0.0.1', '4001');
etcd.set("mykey", "value");
console.log("SET KEY");

etcd.get("mykey", function(err, val){
  console.log(err);
  console.log(val);


  console.log(val.node.value);

  assert.equal("value", val.node.value, 'expected to get "value" for key "mykey"');
});

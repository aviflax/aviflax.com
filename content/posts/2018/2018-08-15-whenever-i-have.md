---
date: '2018-08-15T15:54:17-05:00'
---
Whenever I have trouble with an Avro schema, a good way I’ve found to debug it is by trying to generate “random” example data using avro-tools.jar, like so:

`java -jar avro-tools-1.8.2.jar random --schema-file TimeZone.avsc --count 1 -`

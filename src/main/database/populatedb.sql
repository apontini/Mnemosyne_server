INSERT INTO mnemosyne.user(email, password) VALUES('asd@asd.it', crypt('password', gen_salt('bf', 8)));
INSERT INTO mnemosyne.user(email, password) VALUES('asd2@asd.it', crypt('password', gen_salt('bf', 8)));
INSERT INTO mnemosyne.user(email, password) VALUES('asd3@asd.it', crypt('password', gen_salt('bf', 8)));

INSERT INTO mnemosyne.parameter(pname) VALUES('location_house');
INSERT INTO mnemosyne.parameter(pname) VALUES('location_work');
INSERT INTO mnemosyne.parameter(pname) VALUES('location_item');
INSERT INTO mnemosyne.parameter(pname) VALUES('location_any');
INSERT INTO mnemosyne.parameter(pname) VALUES('time_lunch');
INSERT INTO mnemosyne.parameter(pname) VALUES('time_bed');
INSERT INTO mnemosyne.parameter(pname) VALUES('time_work');
INSERT INTO mnemosyne.parameter(pname) VALUES('time_dinner');
INSERT INTO mnemosyne.parameter(pname) VALUES('time_closure');
INSERT INTO mnemosyne.parameter(pname) VALUES('time_specified');

INSERT INTO mnemosyne.defines(email, parameter, type, location_cellID, from_time, to_time) VALUES ('asd@asd.it','time_lunch','time',-1,'12:00', '13:00');
INSERT INTO mnemosyne.defines(email, parameter, type, location_cellID, from_time, to_time) VALUES ('asd@asd.it','time_bed','time',-1,'23:00','7:00');
INSERT INTO mnemosyne.defines(email, parameter, type, location_cellID, from_time, to_time) VALUES ('asd@asd.it','time_work','time',-1,'9:00','18:00');
INSERT INTO mnemosyne.defines(email, parameter, type, location, location_SSID, location_cellID, from_time, to_time) VALUES ('asd@asd.it','location_house','location', point(45.703280,11.356476),'telecom',123,NULL,NULL);
INSERT INTO mnemosyne.defines(email, parameter, type, location, location_SSID,location_cellID, from_time, to_time) VALUES ('asd@asd.it','location_work','location', point(45.722881, 11.434073),'telecom',124,NULL,NULL);

INSERT INTO mnemosyne.task (id, useremail, name, constr, possibleatwork, repeatable, donetoday, failed, placestosatisfy) VALUES (1, 'asd@asd.it', 'Prova task time', '\xaced00057372002961702e6d6e656d6f73796e652e7265736f75726365732e5461736b54696d65436f6e73747261696e74bb4d8d0a497ce7ff0200024c000866726f6d54696d657400154c6a6176612f74696d652f4c6f63616c54696d653b4c0006746f54696d6571007e00017872002561702e6d6e656d6f73796e652e7265736f75726365732e5461736b436f6e73747261696e74263c35cc9355ceb80200024c0009706172616d4e616d6574001f4c61702f6d6e656d6f73796e652f656e756d732f506172616d734e616d653b4c00047479706574002b4c61702f6d6e656d6f73796e652f656e756d732f436f6e73747261696e7454656d706f72616c547970653b78707e72001d61702e6d6e656d6f73796e652e656e756d732e506172616d734e616d6500000000000000001200007872000e6a6176612e6c616e672e456e756d0000000000000000120000787074000874696d655f6265647e72002961702e6d6e656d6f73796e652e656e756d732e436f6e73747261696e7454656d706f72616c5479706500000000000000001200007871007e000774000561667465727372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770204ef7870', false, false, false, false, '\xaced0005737200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f400000000000017372001c61702e6d6e656d6f73796e652e7265736f75726365732e506c616365291d3a384295334f02000a49000b686f7573654e756d6265724c0007636c6f73696e677400154c6a6176612f74696d652f4c6f63616c54696d653b4c000b636f6f7264696e6174657374001e4c61702f6d6e656d6f73796e652f7265736f75726365732f506f696e743b4c0007636f756e7472797400124c6a6176612f6c616e672f537472696e673b4c00046e616d6571007e00054c00076f70656e696e6771007e00034c0009706c6163655479706571007e00054c0005737461746571007e00054c000673756275726271007e00054c0004746f776e71007e00057870000000027372000d6a6176612e74696d652e536572955d84ba1b2248b20c0000787077030414e1787372001c61702e6d6e656d6f73796e652e7265736f75726365732e506f696e74e2a0f8ff050bd7720200024400036c61744400036c6f6e78704046db64bec679cc4026b4e13f4a98ab7400056974616c7974000646616d696c617371007e0007770204f67874000b73757065726d61726b657474000676656e65746f7400066d616772c3a9740005736368696f78');
INSERT INTO mnemosyne.task (id, useremail, name, constr, possibleatwork, repeatable, donetoday, failed, placestosatisfy) VALUES (2, 'asd@asd.it', 'prova task place', '\xaced00057372002a61702e6d6e656d6f73796e652e7265736f75726365732e5461736b506c616365436f6e73747261696e74c6413e47a60d984f0200024c000f636f6e73747261696e74506c61636574001e4c61702f6d6e656d6f73796e652f7265736f75726365732f506c6163653b4c00106e6f726d616c697a6564416374696f6e7400264c61702f6d6e656d6f73796e652f656e756d732f4e6f726d616c697a6564416374696f6e733b7872002561702e6d6e656d6f73796e652e7265736f75726365732e5461736b436f6e73747261696e74263c35cc9355ceb80200024c0009706172616d4e616d6574001f4c61702f6d6e656d6f73796e652f656e756d732f506172616d734e616d653b4c00047479706574002b4c61702f6d6e656d6f73796e652f656e756d732f436f6e73747261696e7454656d706f72616c547970653b78707e72001d61702e6d6e656d6f73796e652e656e756d732e506172616d734e616d6500000000000000001200007872000e6a6176612e6c616e672e456e756d0000000000000000120000787074000e6c6f636174696f6e5f686f7573657e72002961702e6d6e656d6f73796e652e656e756d732e436f6e73747261696e7454656d706f72616c5479706500000000000000001200007871007e00087400066265666f72657372001c61702e6d6e656d6f73796e652e7265736f75726365732e506c616365291d3a384295334f02000a49000b686f7573654e756d6265724c0007636c6f73696e677400154c6a6176612f74696d652f4c6f63616c54696d653b4c000b636f6f7264696e6174657374001e4c61702f6d6e656d6f73796e652f7265736f75726365732f506f696e743b4c0007636f756e7472797400124c6a6176612f6c616e672f537472696e673b4c00046e616d6571007e00114c00076f70656e696e6771007e000f4c0009706c6163655479706571007e00114c0005737461746571007e00114c000673756275726271007e00114c0004746f776e71007e0011787000000002707372001c61702e6d6e656d6f73796e652e7265736f75726365732e506f696e74e2a0f8ff050bd7720200024400036c61744400036c6f6e78704046da06e9ff0cbb4026b686c6583e857400056974616c797400046361736170740007686f7573696e6774000676656e65746f7400066d616772c3a9740005736368696f7e72002461702e6d6e656d6f73796e652e656e756d732e4e6f726d616c697a6564416374696f6e7300000000000000001200007871007e0008740003676574', false, false, false, false, '\xaced0005737200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f400000000000017372001c61702e6d6e656d6f73796e652e7265736f75726365732e506c616365291d3a384295334f02000a49000b686f7573654e756d6265724c0007636c6f73696e677400154c6a6176612f74696d652f4c6f63616c54696d653b4c000b636f6f7264696e6174657374001e4c61702f6d6e656d6f73796e652f7265736f75726365732f506f696e743b4c0007636f756e7472797400124c6a6176612f6c616e672f537472696e673b4c00046e616d6571007e00054c00076f70656e696e6771007e00034c0009706c6163655479706571007e00054c0005737461746571007e00054c000673756275726271007e00054c0004746f776e71007e00057870000000027372000d6a6176612e74696d652e536572955d84ba1b2248b20c0000787077030414e1787372001c61702e6d6e656d6f73796e652e7265736f75726365732e506f696e74e2a0f8ff050bd7720200024400036c61744400036c6f6e78704046db64bec679cc4026b4e13f4a98ab7400056974616c7974000646616d696c617371007e0007770204f67874000b73757065726d61726b657474000676656e65746f7400066d616772c3a9740005736368696f78');

INSERT INTO mnemosyne.verb(word) VALUES ('prendere');
INSERT INTO mnemosyne.verb(word) VALUES ('comprare');
INSERT INTO mnemosyne.verb(word) VALUES ('pagare');
INSERT INTO mnemosyne.verb(word) VALUES ('prenotare');
INSERT INTO mnemosyne.verb(word) VALUES ('dare_mangiare');
INSERT INTO mnemosyne.verb(word) VALUES ('fare');
INSERT INTO mnemosyne.verb(word) VALUES ('mettere');
INSERT INTO mnemosyne.verb(word) VALUES ('null');
INSERT INTO mnemosyne.verb(word,normalized_action) VALUES ('arrivare', 'get');
INSERT INTO mnemosyne.verb(word,normalized_action) VALUES ('tornare', 'get');
INSERT INTO mnemosyne.verb(word,normalized_action) VALUES ('uscire', 'leave');
INSERT INTO mnemosyne.verb(word,normalized_action) VALUES ('andare', 'get');

INSERT INTO mnemosyne.item(name) VALUES ('pane');
INSERT INTO mnemosyne.item(name) VALUES ('medicine');
INSERT INTO mnemosyne.item(name) VALUES ('medicina');
INSERT INTO mnemosyne.item(name) VALUES ('dottore');
INSERT INTO mnemosyne.item(name) VALUES ('gatto');
INSERT INTO mnemosyne.item(name) VALUES ('gatti');
INSERT INTO mnemosyne.item(name) VALUES ('cane');
INSERT INTO mnemosyne.item(name) VALUES ('cani');
INSERT INTO mnemosyne.item(name) VALUES ('crema');
INSERT INTO mnemosyne.item(name) VALUES ('latte');
INSERT INTO mnemosyne.item(name) VALUES ('bollo');
INSERT INTO mnemosyne.item(name) VALUES ('lavatrice');

INSERT INTO mnemosyne.place_type(type) VALUES ('bakery');
INSERT INTO mnemosyne.place_type(type) VALUES ('supermarket');
INSERT INTO mnemosyne.place_type(type) VALUES ('pharmacy');
INSERT INTO mnemosyne.place_type(type) VALUES ('bar');
INSERT INTO mnemosyne.place_type(type) VALUES ('greengrocer');
INSERT INTO mnemosyne.place_type(type) VALUES ('fuel');
INSERT INTO mnemosyne.place_type(type) VALUES ('hardware');
INSERT INTO mnemosyne.place_type(type) VALUES ('post office');
INSERT INTO mnemosyne.place_type(type) VALUES ('post box');
INSERT INTO mnemosyne.place_type(type) VALUES ('pastry');
INSERT INTO mnemosyne.place_type(type) VALUES ('fast food');
INSERT INTO mnemosyne.place_type(type) VALUES ('clinic');
INSERT INTO mnemosyne.place_type(type) VALUES ('butcher');
INSERT INTO mnemosyne.place_type(type) VALUES ('dairy');
INSERT INTO mnemosyne.place_type(type) VALUES ('mall');
INSERT INTO mnemosyne.place_type(type) VALUES ('medical_supply');
INSERT INTO mnemosyne.place_type(type) VALUES ('electronics');

INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('pane', 'bakery');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('pane', 'supermarket');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('medicina', 'pharmacy');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('medicina', 'medical_supply');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('medicina', 'mall');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('medicina', 'supermarket');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('latte', 'dairy');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('latte', 'supermarket');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('latte', 'mall');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('crema', 'mall');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('crema', 'supermarket');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('crema', 'pharmacy');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('bollo', 'bar');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('bollo', 'post office');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('lavatrice', 'mall');
INSERT INTO mnemosyne.found_in(item,place_type) VALUES ('lavatrice', 'electronics');

INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('prendere','pane','location_item');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('prendere','latte','location_item');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('prendere','medicina','location_house');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('prendere','medicine','location_house');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('prendere','crema','location_item');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('prendere','lavatrice','location_item');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('comprare','pane','location_item');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('comprare','latte','location_item');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('comprare','medicina','location_item');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('comprare','medicine','location_item');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('comprare','crema','location_item');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('comprare','lavatrice','location_item');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('pagare','bollo','location_item');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('prenotare','dottore','location_any');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('dare_mangiare','gatto','location_house');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('dare_mangiare','cane','location_house');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('dare_mangiare','gatti','location_house');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('dare_mangiare','cani','location_house');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('fare','lavatrice','location_house');
INSERT INTO mnemosyne.requires(verb,item,parameter) VALUES ('mettere','crema','location_house');

INSERT INTO mnemosyne.constraint_marker(marker, timing) VALUES ('quando', 'at');
INSERT INTO mnemosyne.constraint_marker(marker, timing) VALUES ('entro', 'before');
INSERT INTO mnemosyne.constraint_marker(marker, timing) VALUES ('prima', 'before');
INSERT INTO mnemosyne.constraint_marker(marker, timing) VALUES ('dopo', 'after');
INSERT INTO mnemosyne.constraint_marker(marker, timing) VALUES ('per le', 'at');
INSERT INTO mnemosyne.constraint_marker(marker, timing) VALUES ('alle', 'at');

INSERT INTO mnemosyne.constraint_word(word) VALUES ('domani');
INSERT INTO mnemosyne.constraint_word(word) VALUES ('pranzo');
INSERT INTO mnemosyne.constraint_word(word) VALUES ('mangio');
INSERT INTO mnemosyne.constraint_word(word) VALUES ('casa');
INSERT INTO mnemosyne.constraint_word(word) VALUES ('letto');
INSERT INTO mnemosyne.constraint_word(word) VALUES ('ANY');

INSERT INTO mnemosyne.wants(constraint_marker,verb,constraint_word,parameter) VALUES ('quando', 'arrivare', 'casa', 'location_house');
INSERT INTO mnemosyne.wants(constraint_marker,verb,constraint_word,parameter) VALUES ('quando', 'tornare', 'casa', 'location_house');
INSERT INTO mnemosyne.wants(constraint_marker,verb,constraint_word,parameter) VALUES ('prima', 'arrivare', 'casa', 'location_house');
INSERT INTO mnemosyne.wants(constraint_marker,verb,constraint_word,parameter) VALUES ('quando', 'uscire', 'casa', 'location_house');
INSERT INTO mnemosyne.wants(constraint_marker,verb,constraint_word,parameter) VALUES ('prima', 'null', 'pranzo', 'time_lunch');
INSERT INTO mnemosyne.wants(constraint_marker,verb,constraint_word,parameter) VALUES ('dopo', 'null', 'pranzo', 'time_lunch');
INSERT INTO mnemosyne.wants(constraint_marker,verb,constraint_word,parameter) VALUES ('quando', 'null', 'mangio', 'time_lunch');
INSERT INTO mnemosyne.wants(constraint_marker,verb,constraint_word,parameter) VALUES ('quando', 'andare', 'letto', 'time_bed');
INSERT INTO mnemosyne.wants(constraint_marker,verb,constraint_word,parameter) VALUES ('prima', 'andare', 'letto', 'time_bed');
INSERT INTO mnemosyne.wants(constraint_marker,verb,constraint_word,parameter) VALUES ('prima', 'null', 'domani', 'time_bed');
INSERT INTO mnemosyne.wants(constraint_marker,verb,constraint_word,parameter) VALUES ('entro', 'null', 'domani', 'time_bed');
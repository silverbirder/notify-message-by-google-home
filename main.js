const googlehome = require('google-home-notifier');
const message = "hello";

googlehome.device('Google Home', 'ja');
googlehome.ip('192.168.3.17'); // (例:192.168.1.20)
googlehome.accent('ja');
googlehome.notify(message, res => console.log(res));
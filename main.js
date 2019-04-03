const googlehome = require('google-home-notifier');
const message = process.env.MESSAGE;

googlehome.device('Google Home', 'ja');
googlehome.ip(process.env.IP_ADDRESS);
googlehome.accent('ja');
googlehome.notify(message, res => console.log(res));
const crongit = require('cron-git')({dir: __dirname+'\\..\\..\\'});

setInterval(()=>{
	crongit.sync();
}, 1000*60*3);

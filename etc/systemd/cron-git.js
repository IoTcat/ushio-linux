const crongit = require('cron-git')({dir: __dirname + '/../../'});

//crongit.schedule("* */3 * * * *", ()=>console.log('sycn ok..'), ()=>console.log('sync err...'));
setInterval(()=>{
	crongit.sync();
}, 1000*60*3);

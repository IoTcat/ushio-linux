const crongit = require('cron-git')({dir: __dirname+'\\..\\..\\'});

crongit.schedule("* */3 * * * *", ()=>console.log('test ok!!!\nuse Ctrl+C to exit!!'), ()=>console.log('pull err err err err!!!!'));

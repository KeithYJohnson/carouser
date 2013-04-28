process.stdin.resume();
process.stdin.setEncoding('utf8');
process.stdout.write("Hi there, what's your name? ");

process.stdin.on('data', function(chunk){
	process.stdout.write('Hi' + chunk);
	process.exit();
});
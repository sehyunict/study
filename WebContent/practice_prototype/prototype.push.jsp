<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Array.prototype.push</title>
</head>
<body>

<h1>Array.prototype.push</h1>

<script>
	
	let arr = ['first', 'second', 'third', 'fourth', 'fifth'];
	console.log(JSON.stringify(arr));
	
	arr.push('sixth');
	console.log(JSON.stringify(arr));
	
	
	// 연습
	arr.splice(arr.indexOf('second'), 0, '1.5');
	arr.push('7');
	console.log(JSON.stringify(arr));
	
	const slice = arr.slice(arr.indexOf('second'), arr.length);
	arr.push(slice);
	console.log(JSON.stringify(arr));

</script>

</body>
</html>
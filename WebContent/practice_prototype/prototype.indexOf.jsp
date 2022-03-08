<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>indexOf</title>


</head>
<body>

	<h1> Array.prototype.indexOf </h1>
	<script>
	/* Array.prototype.indexOf */
	let array = [1, 2, 3, 4, 5];
	console.log(array.indexOf(3)); 
	// 3번째 index의 값을 표시하는 것이 아니라,
	// 3의 값을 가진 index를 찾아서 표시한다.
	
	console.log('----- 값 확인용 -----');
	console.log(array.indexOf(0)); // -1
	console.log(array.indexOf(1)); // 0
	console.log(array.indexOf(2)); // 1
	console.log(array.indexOf(3)); // 2
	console.log(array.indexOf(4)); // 3
	console.log(array.indexOf(5)); // 4
	console.log(array.indexOf(6)); // -1 
	
	console.log('----- 연습확인 -----');
	let staff = ['지민', '소정', 'jimin', 'sojeong'];
	console.log(staff.indexOf('지민')); 	// 0
	console.log(staff.indexOf('소정')); 	// 1
	console.log(staff.indexOf('JIMIN')); 	// -1
	console.log(staff.indexOf('sojeong'));  // 3
	
	console.log('----- for -----');
	for (let i = 0; i <= array.length; i++) {
		console.log(array.indexOf(i));
	}
	
	</script>
	

</body>
</html>
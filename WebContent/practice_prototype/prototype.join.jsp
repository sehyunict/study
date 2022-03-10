<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Array.prototype.join</title>
</head>
<body>
<h1>Array.prototype.join</h1>

<script>
console.log('------ arr1 ------');
let arr1 = [1, 2, 3, 4, 5];
let copied1 = arr1.join();	 // 구분자 : ','
console.log(JSON.stringify(copied1));
console.log(copied1);

console.log('------ arr2 ------');
let arr2 = [1, 2, 3, 4, 5];
let copied2 = arr2.join('');  // 구분자 없음 - 빈 문자열로 구분하므로
console.log(JSON.stringify(copied2));
console.log(copied2);

console.log('------ arr3 ------');
let arr3 = [1, 2, 3, 4, 5];
let copied3 = arr3.join(':'); // 구분자 : ':' 
console.log(JSON.stringify(copied3));
console.log(copied3);

console.log('------ arr4 ------');
let arr4 = [1, 2, 3, 4, 5];
let copied4 = arr4.join('-'); // 구분자 : '-'
console.log(JSON.stringify(copied4));
console.log(copied4);

console.log('------ arr5 ------');
let arr5 = [1, 2, 3, 4, 5];
let copied5 = arr5.join('구분자');
console.log(arr5);
console.log(copied5);
console.log(typeof(copied5));
console.log(typeof(arr5)); // object

console.log(typeof(arr5) == 'object' ? 'true' : 'false');
console.log(typeof(copied5) == 'string' ? 'true' : 'false');

// 연습
const emp = ['소정', '지민', 'JIMIN', 'SOJEONG'];
const list = emp.join('\n');
const list2 = emp.join(' ');
console.log(list);
console.log(list2);
console.log(typeof(emp));
console.log(typeof(list)); // string
console.log(typeof(list2)); // string


</script>

</body>
</html>
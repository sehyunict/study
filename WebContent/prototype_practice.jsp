<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


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
	
	
	<h1> Array.prototype.slice </h1>
	<script>
		let fruits = ['Banana', 'Orange', 'Lemon', 'Apple', 'Mango'];
		let citrus = fruits.slice(1,3);
		let threeFruits =fruits.slice(0,3);
		console.log('--- Arra.prototype.slice ---')
		console.log(citrus);
		console.log(threeFruits);
		console.log(fruits);
		
		// Using slice, create newCar from myCar.
		let myHonda = { color: 'red', wheels: 4, engine: { cylinders: 4, size: 2.2 } }
		console.log('---myHonda Info---')
		console.log(myHonda);
		console.log(myHonda.color);
		console.log(myHonda.wheels);
		console.log(myHonda.engine);
		
		let myCar = [myHonda, 2, 'cherry condition', 'purchased 1997']
		console.log('---myCar Info---');
		console.log(myCar);
		
		let newCar = myCar.slice(0, 2)
		console.log('---newCar Info---');
		console.log(newCar);
		console.log(newCar[0]);
		console.log(newCar[1]);
		console.log(newCar[0].color);
		console.log(newCar[0].wheels);
		console.log(newCar[2]); // undefined : myHonda의 idx 0,1만 복사함 -> 두번째 idx는 안나와야함.
		
		console.log('--- End Info ---');
		// Display the values of myCar, newCar, and the color of myHonda
		// referenced from both arrays.
		console.log('myCar = ' + JSON.stringify(myCar))

		console.log('red?' + myCar[0].color); // red
		console.log(myCar[0].engine); // {cylinders:4, size:2.2}
		console.log(myCar[0].engine.cylinders); // 4
		console.log(myCar[0].engine.size); // 2.2
		console.log(myCar[1]); // 2
		console.log(myCar[2]); // cherry condition
		console.log(myCar[3]); // purchased 1997
		
		console.log('newCar = ' + JSON.stringify(newCar)); // + 문자열을 해서 값 확인할 때, JSON.stringify()해야 객체 모양이 보임
		console.log(newCar + 'newCar Info'); // 안하면 [object, Object]로 보임
				
		console.log('myCar[0].color = ' + myCar[0].color)
		console.log('newCar[0].color = ' + newCar[0].color)

		// Change the color of myHonda.
		myHonda.color = 'purple'
		console.log('The new color of my Honda is ' + myHonda.color)

		// Display the color of myHonda referenced from both arrays.
		console.log('myCar[0].color = ' + myCar[0].color)
		console.log('newCar[0].color = ' + newCar[0].color)
	</script>
	

</body>
</html>
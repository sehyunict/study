<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>slice</title>


</head>
<body>

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
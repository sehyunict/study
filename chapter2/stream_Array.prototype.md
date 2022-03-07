## Array prototype (stream)

#### Array.prototype.indexOf
* 배열에서 지정된 요소를 찾는 메서드.
* 있으면 해당 값의 index를 반환하고, 없으면 -1을 반환 함.

```javascript
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
	
	console.log('----- for -----');
	for (let i = 0; i <= array.length; i++) {
		console.log(array.indexOf(i));
	}
	// 결과 : -1, 0, 1, 2, 3, 4 
	// --> array 배열에서 0~4 숫자 찾은거임.
	// 0은 없으니까 -1 반환
	// 1은 첫번째 index이므로 0반환 
	
	let staff = ['지민', '소정', 'jimin', 'sojeong'];
	console.log('----- 연습확인 -----');
	console.log(staff.indexOf('지민')); 	// 0
	console.log(staff.indexOf('소정')); 	// 1
	console.log(staff.indexOf('JIMIN')); 	// -1
	console.log(staff.indexOf('sojeong'));  // 3
	
```

#### Array.prototype.slice
* 어떤 배열의 begin부터 end까지(end 미포함)에 대한 얕은 복사본을 새로운 배열 객체로 반환한다. <br>
	ex) variable.slice(0,3) : 0~2번째 index의 값, 3개
	ex) variable.slice(1,4) : 1~3번째 index의 값, 3개
	**뒤의 index 전까지의 값. end는 포함되지 않는다**
* 원본 배열은 바뀌지 않는다.
```javascript
		let fruits = ['Banana', 'Orange', 'Lemon', 'Apple', 'Mango'];
		let citrus = fruits.slice(1,3);
		let threeFruits = fruits.slice(0,3);
		console.log('--- Arra.prototype.slice ---')
		console.log(citrus); // ['Orange', 'Lemon'] 
		console.log(threeFruits); // ['Banana', 'Orange', 'Lemon']
		console.log(fruits); // ['Banana', 'Orange', 'Lemon', 'Apple', 'Mango']
```


#### Array.prototype.splice
#### Array.prototype.join
#### Array.prototype.push
#### Array.prototype.pop
#### Array.prototype.unshift
#### Array.prototype.shift
#### Array.prototype.fill

<br>

#### Array.prototype.forEach
#### Array.prototype.find
#### Array.prototype.filter
#### Array.prototype.map
#### Array.prototype.some
#### Array.prototype.every
#### Array.prototype.reduce
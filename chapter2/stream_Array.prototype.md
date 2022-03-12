# Array prototype (stream)

### Array.prototype.indexOf
* 배열에서 지정된 요소를 찾는 메서드.
* 있으면 해당 값의 index를 반환하고, 없으면 -1을 반환 함.

###### 문법
```javascript
.indexOf(찾고자 하는 값);
```

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

<br>
<hr>
<br>

### Array.prototype.slice : 부분, 몫
* 어떤 배열의 begin부터 end까지(end 미포함)에 대한 얕은 복사본을 새로운 배열 객체로 반환한다. <br>
	ex) variable.slice(0,3) : 0-2번째 index의 값, 3개 <br>
	ex) variable.slice(1,4) : 1-3번째 index의 값, 3개 <br>
	**뒤의 index 전까지의 값. end는 포함되지 않는다**

###### 문법
```javascript
.slice(시작 인덱스, 마지막인덱스+1); 
// (배열의 마지막 인덱스 end는 미포함이므로 보고싶은 인덱스의 다음 자리 수를 생각 할 것)
```	
	
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

<br>
<hr>
<br>

### Array.prototype.splice
* 배열의 기존 요소를 삭제 또는 교체하거나 새요소를 추가하여 배열의 내용을 변경한다. <br>

###### 문법
```javascript
	splice(시작인덱스, 삭제할요소의갯수, 배열에추가할요소1, 배열에추가할요소2, ...);
```
(1) 시작인덱스 : 변경을 시작할 인덱스 // 기준점  (-n : 뒤에서 몇 번째 : 0을 기준으로 뒤로 돌아감) <br>
(2) 삭제할 요소의 갯수 <br>
	- n : n개 요소를 삭제한다. <br>
	- 0 또는 음수 : 삭제하지 않는다. <br>
(3) 배열에 추가할 요소 : 생략하면 추가되지 않는다. <br>

```javascript
//연습
	let foods = ['라면', '초밥', '김밥', '족발', '마라탕'];
	console.log(foods); 
	// ['라면', '초밥', '김밥', '족발', '마라탕']
	
	
	// 추가하기
	foods.splice(1, 0, '감자탕', '파스타');
	console.log(foods);
	// ['라면', '감자탕', '파스타', '초밥', '김밥', '족발', '마라탕']
	// 시작인덱스를 기준으로 삽입하고, 원래 있던 데이터는 뒤로 밀려남
	foods.splice(-1, 0, '-1에넣기');
	console.log(foods);
	// ['라면', '감자탕', '파스타', '초밥', '김밥', '족발', '-1에넣기', '마라탕']
	// 뒤에서 첫번째 자리에 들어감
	
	foods.splice(foods.length, 0, '맨뒤에 넣기');
	console.log(foods);

	
	// 삭제하기
	foods.splice(foods.length - 1, 1);
	console.log(foods);
	// ['라면', '감자탕', '파스타', '초밥', '김밥', '족발', '-1에넣기', '마라탕']
	
	foods.splice(-1, 1);
	console.log(foods);
	// ['라면', '감자탕', '파스타', '초밥', '김밥', '족발', '-1에넣기']
	
	foods.splice(foods.indexOf('-1에넣기'), 1);
	console.log(foods);
	// ['라면', '감자탕', '파스타', '초밥', '김밥', '족발']


	// 수정하기 : 라면 -> 감자탕
	foods.splice(0, 1,'감자탕');
	console.log(foods);
	//['감자탕', '감자탕', '파스타', '초밥', '김밥', '족발']
```

<br>
<hr>
<br>

### Array.prototype.join
* 원본 배열의 모든 요소를 문자열로 변환한 후, 인수로 전달받은 문자열을 구분자로 연결하여 반환 -> String type으로 바뀜
* 구분자는 생략 가능하며 기본 구분자는 콤마(',')이다.

###### 문법
```javascript
console.log('------ arr1 ------');
let arr1 = [1, 2, 3, 4, 5];
let copied1 = arr1.join('구분자');	 // default 구분자 : ','
console.log(copied1); // 1, 2, 3, 4, 5
```

```javascript
// obejct -> string 으로 바뀜
console.log(typeof(arr5) == 'object' ? 'true' : 'false'); 	 // true
console.log(typeof(copied5) == 'string' ? 'true' : 'false'); // true
```


<br>
<hr>
<br>

### Array.prototype.push
* 배열 끝에 새로운 요소를 추가한다.
	- 말 그대로 배열 마지막 index에다 push해 넣음.

###### 예시

```javascript
	
let arr = ['first', 'second', 'third', 'fourth', 'fifth'];
console.log(JSON.stringify(arr)); // ['first', 'second', 'third', 'fourth', 'fifth']

arr.push('sixth');
console.log(JSON.stringify(arr)); // ['first', 'second', 'third', 'fourth', 'fifth', 'sixth']

```

<br>
<hr>
<br>

### Array.prototype.pop
* 기존 배열의 마지막 요소 선택, 제거

###### 예시
```javascript
const lastName = ['김', '박', '이', '윤', '황'];
const poped = lastName.pop();
console.log(poped); // '황'
console.log(lastName); // ['김', '박', '이', '윤'];
// 마지막 요소를 선택하여 다른 변수에 저장하고 기존 배열에서는 삭제됨
```

### Array.prototype.unshift
*  기존 배열의 첫 idx에 새로운 요소를 추가 함
*  배열 형태를 가진 객체가 **호출**하거나 **객체**에 적용가능
*  length 속성을 가지지 않고, <br> 대신 마지막 요소를 0부터 시작하는 순차적 idx로만 나타내는 객체에서는 의도한 것과 다르게 적용될 수 있다.

###### 예시
```javascript
const num = [1, 2, 3];
num.unshift(4, 5);

console.log(num); // [4, 5, 1, 2, 3];
```

<br>
<hr>
<br>

### Array.prototype.shift
* 배열의 첫 번째 요소를 제거하고, 제거된 요소를 반환한다.
* 길이를 변하게 한다
* 빈 배열의 경우 undefined 반환

###### 예시
```javascript
const arr = [1, 2, 3, 4, 5];
const firstElement = arr.shift();
console.log(firstElement); // 1
console.log(arr); // [2, 3, 4, 5];
```

```javascript
// while문에서의 사용
const arr2 = [1, 2, 3, 4, 5];
while(i=arr2.shift() !== undefined) {
	console.log(i);
}
```

<br>
<hr>
<br>

### Array.prototype.fill
* 배열의 시작인덱스부터 끝 인덱스 이전까지 정적인 값 하나로 채운다

###### 문법
```javascript
array.fill(채울 값, 시작 인덱스, 마지막 인덱스);
// 마지막 인덱스 이전 값까지 이므로, +1 값을 생각하자 
```

<br>
<hr>
<br>

### Array.prototype.forEach
### Array.prototype.find
### Array.prototype.filter
### Array.prototype.map
### Array.prototype.some
### Array.prototype.every
### Array.prototype.reduce

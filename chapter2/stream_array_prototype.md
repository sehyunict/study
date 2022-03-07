## prototype?
* 프로토타입이 거의 자바스크립트 그 자체

#### `prototype` VS `class`
* Class는 Java, Python, Ruby등 객체 지향에서 빠질 수 없는 개념.
* 자바스크립트도 객체지향언어이나, 클래스개념 대신 <u>프로토타입(prototype)</u>이 존재함.
  ‣‣ 자바스크립트는 프로토타입 기반 언어라고 불림.
* 클래스가 없으므로 기본적으로 상속 기능도 없음.
* 프로토타입을 기반으로 하여 상속을 흉내내도록 구현해 사용 함.

###### 참고
* 최근 ECMA6표준에서는 Class문법이 추가되었음.
* 그러나 문법이 추가되었다는 것이지 클래스 기반으로 바뀐 것은 아님.

#### Prototype 사용
* javascript에 class는 없지만 함수(function)와 new를 통해 클래스를 비스무리하게 흉내낼 수 있다.

```javascript
function Person() {
	this.eyes = 2;
	this.nose = 1;
}

var yoon = new Person();
var kim = new Person();

console.log(yoon.eyes); // 2
console.log(kim.eyes);  // 2

console.log(yoon.nose); // 1
console.log(kim.nose);  // 1
```
‣‣ yoon과 kim은 eyes와 nose를 공통적으로 가지고 있는데, <br> 
   메모리에는 eyes와 nose가 두개씩 총 4개가 할당된다. <br>
   객체를 100개 만들면 200개의 변수가 메모리에 할당된다. <br>
   이럴 경우, 프로토타입으로 해결할 수 있다.

```javascript
function Person() {}
Person.prototype.eyes = 2;
Person.prototype.nose = 1;

var yoon = new Person();
var kim = new Person();

console.log(yoon.eyes); // 2
```
‣‣ yoon과 kim이 공통적으로 가지고 있는 eyes / nose를 공유해서 사용. <br>

⁂ Person 함수로부터 생성된 객체(yoon, kim)들은 어딘가에 존재하는 Ojbect에 들어있는 값을 모두 갖다 쓸 수 있음<br>
  ‣‣ <u>공통된 값을 묶어두고 공유하여 받아 씀</u>
  
<br>

#### `Prototype Link` / `Prototype Object`
* JS에는 Prototype Link와 Prototype Object가 존재하고, 이 둘을 통틀어 Prototype이라고 부름. 
 
##### Prototype Object
* 객체는 언제나 함수(Function)로 생성된다.

```javascript
	function Person() {} // 함수
	var yoon = new Person(); // 함수로 객체를 생성 함
```
‣‣ yoon 객체는 Person이라는 함수로 생성된 객체이다. <br>
   언제나 객체는 함수에서 시작된다.

```javascript
	var obj = {}; // 이 코드는
	var obj = new Object(); // 이 코드와 같다
```
‣‣ Object가 JS에서 기본적으로 제공하는 함수 <br>	
<nbsp><nbsp> Object와 마찬가지로 Function, Array도 모두 함수로 정의되어 있음.


<br>

## Array prototype (stream)

#### Array.prototype.indexOf
#### Array.prototype.slice
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
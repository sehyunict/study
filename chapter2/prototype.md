## prototype?
* 프로토타입이 거의 자바스크립트 그 자체
* 객체들이 공유하는 하나의 메모리 공간
* 공통적으로 가지는 값, 공통 함수는 프로토타입에 저장하는것이 좋음(공유하니까)

// 객체가 공유하는 함수

### `prototype` VS `class`
* Class는 Java, Python, Ruby등 객체 지향에서 빠질 수 없는 개념.
* 자바스크립트도 객체지향언어이나, 클래스개념 대신 <u>프로토타입(prototype)</u>이 존재함.
  ‣‣ 자바스크립트는 프로토타입 기반 언어라고 불림.
* 클래스가 없으므로 기본적으로 상속 기능도 없음.
* 프로토타입을 기반으로 하여 상속을 흉내내도록 구현해 사용 함.

###### 참고
* 최근 ECMA6표준에서는 Class문법이 추가되었음.
* 그러나 문법이 추가되었다는 것이지 클래스 기반으로 바뀐 것은 아님.

### Prototype 사용
* javascript에 class는 없지만 함수(function)와 new를 통해 클래스를 비스무리하게 흉내낼 수 있다.

###### 사용방법
	* 객체
		1. 객체.prototype.속성 = 값
		2. 객체.prototype.속성 = function(){};
	* 생성자함수
		1. this.__proto__.속성 = 값
		2. this.__proto__.속성 = function(){};
		
###### Prototype 사용 이유
Prototype Object는 일반적인 객체이므로 속성을 마음대로 추가/삭제 할 수 있다. <br>
아래 코드에서 yoon과 kim은 Person함수를 통해 생성되었으므로 Person.prototype을 참조할 수 있게 된다.


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
‣‣ yoon과 kim은 eyes와 nose를 공통적으로 가지고 있는데, 메모리에는 eyes와 nose가 두개씩 총 4개가 할당된다. <br>
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

### `Prototype Link` / `Prototype Object`
* JS에는 Prototype Link와 Prototype Object가 존재하고, 이 둘을 통틀어 Prototype이라고 부름. 
 
### Prototype Object
* 객체는 언제나 함수(Function)로 생성된다.
	
	###### 생성자 함수
	1. 생성자 함수는 일반 함수와의 구분을 위해 관례상 첫 글자를 대문자로 만든다.
	2. 객체 생성은 new 키워드로 한다.
	3. 전달된 매개변수를 속성으로 저장하기 위해서 this 키워드를 활용한다.
		- this
			1. 객체 자신을 의미하는 키워드이다.
			2. 객체 내부에서만 사용된다.
			3. this.속성 또는 this['속성'] 중 한 가지 방법을 사용한다.				

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
Object와 마찬가지로 Function, Array도 모두 함수로 정의되어 있음. <br>
	
* 함수가 정의될 때는 두 가지 일이 동시에 이뤄진다. <br>
	1. 해당 함수에 Constructor(생성자) 자격부여 <br>
	‣‣ Constructor 자격이 부여되면 new를 통해 객체 생성 가능. <br>
		이것이 함수만 new 키워드를 사용할 수 있는 이유. <br>
		‣‣ 객체를 직접 생성하는 것도 가능하지만 객체는 new 키워드를 사용할 수 없고, <br> 
			new 키워드를 사용하여 객체생성을 하고자 할 경우 함수를 통해 생성해야 함. <br>
			함수가 정의되면서 Object의 Constructor 자격을 부여받기 때문. <br>
	2. 해당 함수의 Prototype Object 생성 및 연결 <br>
	‣‣ 함수를 정의하면 함수만 생성되는 것이 아니라 Prototype Object도 같이 생성 된다. <br>
		그리고 생성된 함수는 prototype이라는 속성을 통해 Prototype Object에 접근할 수 있다. <br>
		Prototype Object는 일반적인 객체와 같으며 기본적인 속성으로 constructor와 __proto__를 가지고 있다.

<br>

### Prototype Link
* prototype 속성은 함수만 가지고 있던 것과는 달리 __proto__속성은 모든 객체가 빠짐없이 가지고 있는 속성이다. <br>
	ex) yoon에는 eyes라는 속성이 없는데도 yoon.eyes를 실행하면 2라는 값을 참조 함  <br>
		‣‣ Prototype Object에 존재하는 eyes 속성을 참조한 것. <br>
<p align="center">
<img src="https://miro.medium.com/max/1400/1*jMTxqTYDZGhykJQoimmb0A.png">

<br>

* __proto__는 객체가 생성될 때 조상이었던 함수의 Prototype Object를 가리킨다. <br>
	‣‣ yoon객체는 Person함수로부터 생성되었으므로 Person함수의 Prototype object를 가리키는 것. <br>

<br><br>

<p align="center">
<img src="https://miro.medium.com/max/1400/1*mwPfPuTeiQiGoPmcAXB-Kg.png">

<br>

###### 프로토타입 체인, 최상위는 Object
	
* Prototype Chain <br>
	yoon 객체가 eyes를 직접 갖고 있지 않기 때문에 eyes속성을 찾을 때 까지 상위 prototype을 탐색함. <br>
	최상위인 Object의 Prototype Object까지 도달했는데도 못 찾았을 경우 undefined를 return. <br>
	이와 같이 __proto__속성을 통해 상위 프로토타입과 연결되어있는 형태를 프로토타입 체인(prototype chain)이라고 한다. <br><br>
⁂ 이런 프로토타입 체인 구조 때문에 모든 객체는 Obejct의 자식이라 불리고, <br>
	Object Prototype Object에 있는 모든 속성을 사용할 수 있다.<br>
	ex) toString

<br>
<br>
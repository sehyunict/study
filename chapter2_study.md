###### Chapter2를 시작하기 전에
* git desktop과 eclipse 연동이 어려워서 방법 찾음 <br>
[참고링크](https://sso-feeling.tistory.com/121)
* markdown 표 생성링크 <br>
[바로가기](https://www.tablesgenerator.com/markdown_tables)
<br>

# chapter2

> ## 데이터 타입
> **프로그래밍 언어에서 사용할 수 있는 데이터(숫자, 문자열, 불리언 등)의 종류 **
>
> #### Data Type - java
>> #### 기본타입 / 참조타입
>> ###### 기본타입(primitive type) : 변수에 실제 값들을 저장함 
>>
>> ###### 정수 타입 (byte, short, int, long)
>>| **TYPE** | **SIZE** | **RANGE**                                | **기본값** |
>>|----------|----------|------------------------------------------|------------------|
>>| byte     | 1byte    | -128~127                                 | 0                |
>>| short    | 2byte    | -32768~32767                             | 0                |
>>| int      | 4byte    | -2147483648~2147483647                   | 0                |
>>| long     | 8byte    | -9223372036854775808~9223372036854775807 | 0                |
>>
>> ###### 실수 타입 (float, double)
>>| **TYPE** | **SIZE** | **RANGE**                                | **기본값** | 
>>|----------|----------|------------------------------------------|----------|
>>| float     | 4byte    | -3.4E+38 ~ 3.4E+38                      | 0.0      |
>>| double    | 8byte    | -1.7E+308 ~ 1.7E+308                    | 0.0      |
>> 
>> ###### 논리 타입 (boolean) - true or false
>>| **TYPE** | **SIZE** | **RANGE**                     | **기본값** |
>>|----------|----------|-------------------------------|----------|
>>| boolean  | 1byte    | true 또는 false                 | false |
>>
>> ###### 문자 타입 (char)
>>| **TYPE** | **SIZE** | **RANGE** | **DefaultValue** |
>>|----------|----------|-----------|------------------|
>>| char     | 2byte    | 0 ~ 65535 | \u0000           |
>>
> <br>
>>
>> #####참조타입(reference type)
>>	* 배열
>>	* 열거 타입
>>	* 클래스
>>	* 인터페이스
>
> <br>
>
> #### Data Type - JavaScript
> #### 원시타입 / 객체타입
>> ###### 원시타입 (primitive data type) : 원시 타입의 값은 변결 불가능한 값(immutable value)이며 pass-by-value(값에 의한 전달)이다.
>>
>> 
>> #### 1. Number(숫자형) : 숫자를 이용하여 덧셈/뺄셈/곱셈/나눗셈 등의 연산을 할 수 있다.
>> ###### NaN : Not A Number
>> * 유효하지 않은 숫자 연산을 실행했을 때 생성
>> * 만약 어떤 값이 NaN인지 판별하고 싶다면 isNaN이라는 함수를 사용하여 판별 가능
>> 	``` javascript
>>		// ex)
>>		var d = NaN;
>> 		var e = isNaN;
>>		console.log(e); //true
>> 
>> ###### 숫자 판별하기
>> * typeOf : 어떤 종류의 값인지 판단할 때 사용함
>>
>
>> #### 2. String(문자열) : 텍스트 데이터를 나타내는데 사용 <br>
>> * `+` 기호를 사용하여 문자열을 붙일 수 있음.
>> * `==` 또는 `===`을 사용하여 같은 값인지 비교 가능.
>>
>> ###### 문자열 길이
>> `.length`를 이용하여 문자열의 길이에 대한 정보를 알 수 있다. 
>> ###### 문자열 메서드
>> ```javascript
>> '6'.repeat(3);
>> 'hi surim'.includes(' surim');
>> 'what are you doing'.startsWith('what ');
>> 'I am doing FiNe'.endsWith('iNe');
>> 'Are you sure?'.indexOf(' yo');
>> 'Yeah I am sure'.slice(2, 5);
>> 'I?doubt?that'.split('?');
>> 'Why would you doubt my word?'.split('');
>> 'You hAve BeEn DiSHonest'.toLowerCase();
>> 'no wAy!'.toUpperCase();
>> ```
>
> <br>
>
>> #### 3. Boolean(논리형) : 논리적 참, 거짓을 나타내는 `true` 또는 `false`
>> **주로 조건문에 자주 사용하며 0, -0, null, false, NaN, undefined, 빈 문자열("")은 false로 간주됨.** <br>
>> **문자열 "false"를 포함한 그 외 모든 다른 값은 초기값을 true로 설정한다.**
>> | **TYPE**  | **true로 변환되는 값** | **false로 변환되는 값** |
>> |-----------|------------------------|--------------|
>> | boolean   | true                   | false        |
>> | char      | 비어 있지 않은 모든 문자열                  | ""(빈 문자열)   |
>> | 숫자                 | 0이 아닌 모든 숫자(무한대 포함)    | 0, NaN      |
>> | 객체                 |       모든 객체                           | null        |
>> | Undefined |           해당없음                   | undefined   |
>
>> #### 4. null : 의도적으로 변수에 값이 없다는 것을 명시할 때 사용
>> **JavaScript는 대소문자를 구별하므로 null은 Null, NULL 등과 다르다.** <br>
>> **타입을 나타내는 문자열을 반환하는 `typeOf` 연산자로 null 값을 연산해보면 null이 아닌 object가 나온다.** <br>
>> **따라서 null타입을 확인할 때는 `typeOf`연산자 대신 일치 연산자(===)를 사용하여야 한다.** <br>
>> ```javascript
>>	var foo = null;
>>	console.log(typeof foo === null); // false
>>	console.log(foo === null);		  // true
>> ```
>
>> #### 5. undefined : 선언 이후 값을 할당하지 않은 변수는 undefined 값을 가진다.
>> **어떤 변수를 만들고 그 값을 정의해 주지 않았을 때나 존재하지 않는 객체 property에 접근할 경우 `undefined`가 반환 됨.**
>> ###### null vs undefined 용도의 차이
>> `null`
>> * 의도적으로 값이 없음을 표현하고 싶을 때 대입 <br>
>>
>> `undefined`
>> * 정의되지 않음이라는 뜻. 
>> * 값이 대입되지 않은 상태
>> ```javascript
>> /* ------------ ex) null -------------- */ 
>> var obj = { name : 'ken' };
>> obj = null;
>> // obj를 이용한 작업이 모두 종료되고, 더 이상 사용하지 않을 때 obj를 의도적으로 없다고 표현.
>>
>> /* ------------ ex) undefined -------------- */ 
>> var k;
>> console.log(k); // undefined
>> var o = undefined;
>> console.log(o); // undefined
>> ```
>>
>
>> #### 6. symbol (ES6에서 추가됨)
>>
#### 메모리 사용 영역 `java`
#### wrapper class `java`

<br>

> ## 변수
> 
> #### 변수란?
> #### 변수 선언 방법
> #### 스코프
> #### JavaScript - Scope
> * 자바스크립트 코드의 범위.
> * 스코프는 전역 스코프(GlobalScope)와 지역스코프(LocalScope)로 나눌 수 있다.
>>
>> 	* **전역 스코프 (Global Scope)**
>>		* 프로그램 시작 후, 어떤 함수도 호출하지 않았을 때, 실행 흐름은 전역 스코프에 있다.
>>		* 중괄호 {}의 밖을 전역 스코프라 하고, 전역 스코프에서 선언된 것들을 전역 변수라고 한다.
>>		* 전역 변수를 많이 이용하면 부작용이 발생할 수 있다. <br>
>>
>>	* **지역 스코프 (Local Scope)**
>>		* 중괄호 {}안을 지역 스코프라고 한다.
>>		* 지역 스코프에는 함수 스코프, 블록 스코프 두 가지가 있다.
>>			* **함수 스코프(Function Scope)**
>>				* 함수 스코프는 ES6 이전(let, const 나오기 전)까지 자바스크립트가 따르던 스코프이다.
>>				* 함수 내부에서 선언한 변수는 지역변수 이며 함수외부에서 선언한 변수는 모두 전역 변수로 취급. >> <br>
>>			* **블록 스코프(Block Scope)**
>>				* 블록 스코프는 대부분의 프로그래밍에서 따르던 스코프이다. <br>
>>
>>
>> 

> #### 호이스팅 `javascript`
> #### 변수 네이밍

<br>

>## Array prototype (stream)
>#### Array.prototype.indexOf
>#### Array.prototype.slice
>#### Array.prototype.splice
>#### Array.prototype.join
>#### Array.prototype.push
>#### Array.prototype.pop
>#### Array.prototype.unshift
>#### Array.prototype.shift
>#### Array.prototype.fill
>
> <br>
>
>#### Array.prototype.forEach
>#### Array.prototype.find
>#### Array.prototype.filter
>#### Array.prototype.map
>#### Array.prototype.some
>#### Array.prototype.every
>#### Array.prototype.reduce
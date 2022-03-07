###### Chapter2를 시작하기 전에
* git desktop과 eclipse 연동이 어려워서 방법 찾음 <br>
[참고링크](https://sso-feeling.tistory.com/121)
* markdown 표 생성링크 <br>
[바로가기](https://www.tablesgenerator.com/markdown_tables)
<br>

# chapter2

> ## 데이터 타입
>
> **프로그래밍 언어에서 사용할 수 있는 데이터(숫자, 문자열, 불리언 등)의 종류 **
>
>> ### Data Type `java`
>> #### 기본타입 / 참조타입
>> ###### 기본타입(primitive type) : 변수에 실제 값들을 저장함 
>>
>> ###### * 정수 타입 (byte, short, int, long)
>>| **TYPE** | **SIZE** | **RANGE**                                | **기본값** |
>>|----------|----------|------------------------------------------|------------------|
>>| byte     | 1byte    | -128~127                                 | 0                |
>>| short    | 2byte    | -32768~32767                             | 0                |
>>| int      | 4byte    | -2147483648~2147483647                   | 0                |
>>| long     | 8byte    | -9223372036854775808~9223372036854775807 | 0                |
>>
>> ###### * 실수 타입 (float, double)
>>| **TYPE** | **SIZE** | **RANGE**                                | **기본값** | 
>>|----------|----------|------------------------------------------|----------|
>>| float     | 4byte    | -3.4E+38 ~ 3.4E+38                      | 0.0      |
>>| double    | 8byte    | -1.7E+308 ~ 1.7E+308                    | 0.0      |
>> 
>> ###### * 논리 타입 (boolean) - true or false
>>| **TYPE** | **SIZE** | **RANGE**                     | **기본값** |
>>|----------|----------|-------------------------------|----------|
>>| boolean  | 1byte    | true 또는 false                 | false |
>>
>> ###### * 문자 타입 (char)
>>| **TYPE** | **SIZE** | **RANGE** | **DefaultValue** |
>>|----------|----------|-----------|------------------|
>>| char     | 2byte    | 0 ~ 65535 | \u0000           |
>>
> <br>
>
>> ###### 참조타입(reference type) <br>
>>	* 배열 <br>
>>	* 열거 타입 <br>
>>	* 클래스 <br>
>>	* 인터페이스 <br>
>
>
>
>
>> ### Data Type `JavaScript`
>> #### 원시타입 / 객체타입
>> #### 원시타입 (primitive data type) 
>> : 원시 타입의 값은 변결 불가능한 값(immutable value)이며 pass-by-value(값에 의한 전달)이다.
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
>> ```
>>
>> ###### 숫자 판별하기
>> * typeOf : 어떤 종류의 값인지 판단할 때 사용함
>>
>
> <br>
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
>
>> #### 3. Boolean(논리형) : 논리적 참, 거짓을 나타내는 `true` 또는 `false`
>> **주로 조건문에 자주 사용하며 0, -0, null, false, NaN, undefined, 빈 문자열("")은 false로 간주됨.** <br>
>> **문자열 "false"를 포함한 그 외 모든 다른 값은 초기값을 true로 설정한다.**
>> | **TYPE**  |      **true로 변환되는 값**        | **false로 변환되는 값** |
>> |-----------|------------------------------------|-------------------------|
>> | boolean   | true                               | false                   |
>> | char      | 비어 있지 않은 모든 문자열         | ""(빈 문자열)           |
>> | 숫자      | 0이 아닌 모든 숫자(무한대 포함)    | 0, NaN                  |
>> | 객체      |    모든 객체                       | null                    |
>> | Undefined | 해당없음                           | undefined               |

>
><br>
>
>> #### 4. null : 의도적으로 변수에 값이 없다는 것을 명시할 때 사용
>> * JavaScript는 대소문자를 구별하므로 null은 Null, NULL 등과 다르다.
>> * 타입을 나타내는 문자열을 반환하는 `typeOf` 연산자로 null 값을 연산해보면 null이 아닌 object가 나온다.
>> * 따라서 null타입을 확인할 때는 `typeOf`연산자 대신 일치 연산자(===)를 사용하여야 한다.
>>
>> ```javascript
>>	var foo = null;
>>	console.log(typeof foo === null); // false
>>	console.log(foo === null);		  // true
>> ```
>
><br>
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
><br>
>
>>
>> #### 객체 타입(Object type, Reference type)
>> * 객체는 데이터와 그 데이터에 관련한 동작(절차, 방법, 기능)을 모두 포함할 수 있는 개념
>> * Property와 Method를 포함할 수 있는 독립적 주체이다.
>> * JavaScript를 이루고 있는 거의 모든 것이 객체이다.
>> * 객체는 참조에 의한 전달(pass-by-reference)방식으로 전달된다.
>> 
<br>
<br>
<br>

> ## 메모리 사용 영역 `java`
>> #### 스테틱(Static) 영역
>> * 메소드 영역과 같은 말
>>	 * Class(클래스) 영역
>>	 * Code(코드) 영역
>>	 * Method(메소드) 영역
>> * JVM이 동작해서 **클래스가 로딩될 때 생성**한다.
>> * 특정 클래스가 사용(호출)되면 해당 클래스의 클래스 파일(*.class)을 읽어들여
>>   해당 클래스에 대한 정보를 스테틱 영역에 저장.
>> * **스테틱 영역에 저장되는 정보**
>>	 * 클래스정보(멤버변수의 이름)
>>	 * 변수정보(데이터타입, 접근제어자정보)
>>	 * 메소드정보(메소드 이름, 리턴타입, 파라미터, 접근제어자 정보)
>>	 * static변수(정적 멤버변수, static이 붙은 자료형)
>>	 * final class 변수
>>	 * Constant pool(상수풀 : 문자상수, 타입, 필드, 객체참조가 저장됨)
>> * 저장되는 정보는 **JVM이 종료될 때까지 사라지지 않고 고정된(Static)상태로 유지**된다.
>> * **어떤 곳에서나 접근이 가능**해지기 때문에 '전역'이라는 키워드를 사용 함.
>> * **프로그램이 종료될 때까지 어디서든 사용 가능**
>> * 전역변수를 무분별하게 사용하다 보면 메모리가 부족할 우려가 있다.
>>
>
>> 
>> #### 힙(Heap) 영역
>> * 모든 객체(Integer, String, ArrayList, ...)타입이 생성되는 영역.
>> * JVM은 자바 프로그램에서 new 키워드를 사용하여 인스턴스가 생성되면
>>	 해당 인스턴스의 정보를 힙 영역에 저장
>> * 스레드의 갯수와 상관없이 하나의 heap 영역만 존재한다.
>> * 힙영역에 생기는 객체들의 레퍼런스 변수는 스택영역에 생긴다.
>> * 참조 변수나 필드가 없다면 의미없는 객체가 되어 JVM이 쓰레기로 취급하고 GC를 실행시켜 자동으로 제거한다.
>>   GC : Garbage Collector
>> * 크기가 정해져 있지 않는 타입이다.(메모리 크기가 크다.)
>> * 힙 영역이 가득 차면 OutOfMemoryError가 발생한다.
>>
>
>>
>> #### 스택(Stack) 영역
>> * JVM은 자바 프로그램에서 블럭을 만나면 스택 프레임이 생기고, 블럭이 끝나면 스택 프레임이 사라진다.
>>   해당 메소드(메소드라고 표현했지만 메소드 포함 하나의 블럭)와 관련된 지역변수, 파라미터, 리턴 값, 연산에 사용되는 
>>   임시 값들은 스택 영역에 올라간다.
>> * 기본형 타입 변수의 값들은 stack영역에 저장되고,
>>   참조형 타입 변수는 참조값(heap)영역에 존재하는 인스턴스(객체)를 가르키는 역할만 저장된다.
>> * 크기가 정해져 있는 타입이다.(메모리 크기가 작다.)
>> * 쓰레드마다 고유의 스택 영역을 가지고 있으므로, 쓰레드가 안전하다.
>> * 스텍 영역이 가득차면 StackOverFlowError가 발생한다.
>> * 메모리 엑세스 속도가 가장 빠르다.
>>


> ## wrapper class `java`
> * **기본 자료타입(primitive type)을 객체로 다루기 위해서 사용**하는 클래스들을 래퍼 클래스(wrapper class)라고 한다.
> * 기본 타입의 값을 내부에 두고 포장하기 때문에 포장 객체라고도 함.
> * 래퍼 클래스로 감싸고 있는 기본 타입 값은 외부에서 변경할 수 없다.
>   만약 변경하고 싶다면 새로운 포장 객체를 만들어야 한다.
>
> #### 레퍼 클래스의 종류
> | **기본타입(primitive type)** | **래퍼클래스(wrapper class)** |
> |---------|-----------|
> | byte    | Byte      |
> | char    | Character |
> | int     | Integer   |
> | float   | Float     |
> | double  | Double    |
> | boolean | Boolean   |
> | long    | Long      |
> | short   | Short     |
>
> <p align="center">
> <a href="https://coding-factory.tistory.com/547">
> <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F38MsL%2FbtqEbRcxIfZ%2FfOMbL4b3wCzqeO1aKKbFZ0%2Fimg.png" width="300px"> 
> </a>

<br>

> ## 변수
> 
>> #### 변수(Variable)
>> * 프로그래밍에서 변수란 **하나의 값을 저장할 수 있는 저장공간**
>>	* 변수의 선언 : 박스를 조립하고 라벨을 붙이는 것
>>	* 변수에 값 할당 : 박스에 내용물을 넣는 것
>> 
>
>> #### 변수 선언(Variable declare) 방법
>> 1. 변수 선언(Declare)
>> * 변수를 사용하기 위해서는 변수 선언이 필요 함
>> * 값을 저장하는 공간을 확보하겠다는 의미
>>   -> 메모리를 사용하겠다고 미리 컴퓨터에게 알려줌
>> ```java
>> // 변수 선언하기 : String type / message라는 이름을 가진 변수 선언
>> String message;
>> 
>> // 다중 변수 선언 : String type / message1, message2 이름을 가진 두 변수 선언
>> String message1, message2;
>> ```
>
>> 
>> 2. 변수 초기화(Initialize)
>> * 변수 선언 후 값 할당을 해주어야 사용할 수 있다.
>>   -> 초기화란 선언된 변수에 값을 채워 넣는다는 의미
>> ```java
>> // String type / message 변수에 Hello World라는 값을 넣음
>> String message = "Hello World";
>> ```
>> 
>
>>
>> 3. 변수 명 규칙
>> * keyword는 사용할 수 없음 [ex : true(x), True(o)]
>> * 첫 글자는 숫자로 시작할 수 없음 [ex : 1step(x), step1(o)]
>> * 특수문자는 '_', '$'만 사용할 수 있음 [ex : %step(x), _step1(o)]
>> * 대소문자는 구별되며 길이에 제한두지 않음 [ex : true와 True는 다름]
>> 
>> ##### 관례 `java`
>> * 클래스명의 첫 글자는 대문자로 한다.
>> * 메서드명, 변수명의 첫 글자는 소문자로 한다.
>> * 1개 이상의 단어로 이루어진 경우 단어의 첫 글자는 대문자로 한다. [ex : camelCase]
>> * 상수의 이름은 모두 대문자로 하며, 1개 이상의 단어로 이루어진 경우 "_"로 구분한다.[ex : COUNT_OF_WORDS]
>>
>> [참고](https://7942yongdae.tistory.com/22)
>>
>>
 
> ## 스코프(Scope) - 유효범위
> * 변수와 매개변수의 생존 기간을 제어 : 변수를 사용할 수 있는 범위
> * scope는 이름이 충돌하는 문제를 줄여주고, 자동으로 메모리를 관리함
> * {}안에서 변수를 선언했을 경우 영역이 끝나기 전까지는 어디서든 사용가능
> * 변수 라이프타임(variable life time) : 변수가 메모리에서 살아있는 기간
>
>> ### Scope `Java` - [참고](https://wakestand.tistory.com/179)
>> ##### Instance Variables
>> * 클래스 내부와 모든 메소드 및 블록 외부에서 선언된 변수
>> * scope : **정적 메서드를 제외한 클래스 전체**
>> * 라이프타임 : 객체가 메모리에 남아있을 때까지
>>
>> ##### Class Variables
>> * 클래스 내부, 모든 블록 외부에서 선언되고 static으로 표시된 변수
>> * scope : **클래스 전체**
>> * 라이프타임 : 프로그램이 끝날때까지 또는 클래스가 메모리에 로드 되는 동안
>>
>> ##### Local Variables
>> * 인스턴스 및 클래스 변수가 아닌 모든 변수
>> * scope : **선언된 블록내**
>> * 라이프타임 : 컨트롤이 선언 된 블록을 떠날때까지
>>
>
> <br>
>
>> ### Scope `JavaScript`
>> * 자바스크립트 코드의 범위.
>> * 본래 자바스크립트에서는 block scope가 없다. function scope가 존재
>> * 함수에서 사용하는 모든 변수를 함수 첫 부분에서 선언 하는 것이 최선의 방법
>> * 유효범위 개념을 잘 알고 있다면 변수와 매개변수의 접근성과 생존기간을 제어할 수 있다.
>> * 스코프는 전역 스코프(GlobalScope)와 지역스코프(LocalScope)로 나눌 수 있다
>>
>> 	* **전역 스코프 (Global Scope)**
>>		* 프로그램 시작 후, 어떤 함수도 호출하지 않았을 때, 실행 흐름은 전역 스코프에 있다.
>>		* 웹페이지의 모든 script와 function에서 접근할 수 있는 영역
>>		* 중괄호 {}의 밖을 전역 스코프라 하고, 전역 스코프에서 선언된 것들을 전역 변수라고 한다.
>>			-> 함수 밖에서 정의 된 scope
>>		* 전역 변수를 많이 이용하면 부작용이 발생할 수 있다. 
>> 
>>	* **지역 스코프 (Local Scope)**
>>		* 중괄호 {}안을 지역 스코프라고 한다.
>>		* 지역 스코프에는 함수 스코프, 블록 스코프 두 가지가 있다.
>>			* **함수 스코프(Function Scope)**
>>				* 함수 스코프는 ES6 이전(let, const 나오기 전)까지 자바스크립트가 따르던 스코프이다.
>>				* 함수 내부에서 선언한 변수는 지역변수 이며 함수외부에서 선언한 변수는 모두 전역 변수로 취급. >> <br>
>>			* **블록 스코프(Block Scope)**
>>				* 블록 스코프는 대부분의 프로그래밍에서 따르던 스코프이다. 
>>				* `{}`으로 표현하며 block 밖에서 block 안 쪽에 있는 변수를 접근할 수 없다.
>>				* 안쪽에서 밖으로의 접근은 가능하다.
>>
>> <br>
>> 
>> ### 호이스팅(Hoisting) `javascript`
>> * 함수와 변수는 코드를 실행하기 전에 실행 컨텍스트를 위해 메모리에 저장
>>   즉, **선언이 코드 실행보다 먼저 메모리에 저장되는 과정으로 인한 현상**
>>	* JS 엔진은 코드를 실행하기 전 실행 가능한 코드를 형상화하고 구분하는 과정을 거친다
>>	* 실행 컨텍스트를 위한과정에서 모든 선언(var, let, const, function, class)을 스코프에 등록한다.
>>	* 코드 실행 전 이미 변수선언/함수선언이 저장되어 있기 때문에 **선언문보다 참조/호출이 먼저 나와도 오류없이 동작한다**
>>    -- 정확히는 var키워드로 선언한 변수와 함수 선언문일 경우 오류없이 동작.
>>  		 이는 선언이 파일의 맨 위로 끌어올려진 것 처럼 보이게 함.
>> * 함수는 전체 함수에 대한 참조와 함께 저장되고, var키워드가 있는 변수는 undefined,
>>   let 및 const 키워드가 있는 변수는 초기화되지 않은 상태로 메모리에 저장 됨.
>> 
>> **호이스팅 왜 알아야 할까?**
>> * 호이스팅 메커니즘을 적절히 이해하는 것은 호이스팅에 의해 발생하는 잠재적 버그와 혼란을 피하도록 도와줌.
>> * undefined나 reference error와 같이 호이스팅의 사이드 이펙트(Side Effect)를 피하기 위해서는 
>>   항상 변수를 **현재 스코프 최상단**에서 **선언**하도록 하고, **선언과 함께 초기화**를 해야한다.

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
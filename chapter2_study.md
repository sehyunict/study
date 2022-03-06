###### Chapter2를 시작하기 전에
* git desktop과 eclipse 연동이 어려워서 방법 찾음 <br>
[참고링크](https://sso-feeling.tistory.com/121)

# chapter2

> ## 데이터 타입
> #### 기본타입 / 참조타입
> ##### `Data Type - java`
> ###### 기본타입(primitive type) <br>
> ** 변수에 실제 값들을 저장함.** 
> <br>
>
>	정수 타입 (byte, short, int, long)<br>
		|**TYPE**|**SIZE**|**RANGE**|**기본값**|
		|:---:|:---:|:---:|:---:|
		|byte|1byte|`-128~127`|0|
		|short|2byte|`-32768~32767`|0|
		|int|4byte|`-2147483648~2147483647`|0|
		|long|8byte|`-9223372036854775808~9223372036854775807`|0|
> <br>
>	* 실수 타입 (float, double)
>	* 논리 타입 (boolean) - true or false
>	* 문자 타입 (char)
> **참조타입(reference type)**
>	* 배열
>	* 열거 타입
>	* 클래스
>	* 인터페이스
<br>

#### 메모리 사용 영역 `java`
#### wrapper class `java`

<br>

> ## 변수
> 
> #### 변수란?
> #### 변수 선언 방법
> #### 스코프
> ##### `JavaScript - Scope`
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
>>				* 함수 내부에서 선언한 변수는 지역변수 이며 함수외부에서 선언한 변수는 모두 전역 변수로 취급. <br>
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
<br>
>#### Array.prototype.forEach
>#### Array.prototype.find
>#### Array.prototype.filter
>#### Array.prototype.map
>#### Array.prototype.some
>#### Array.prototype.every
>#### Array.prototype.reduce
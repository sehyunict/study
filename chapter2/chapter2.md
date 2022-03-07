# chapter2

#### 데이터 타입

#### 기본 타입 / 참조 타입 <br>
1) 기본 타입 <br>
	- 정수 타입(byte, short, int, long) 
	- 실수 타입(float, double)
	- 논리 타입(boolean)
	- 문자 타입(char)


<table>
	<tr>
		<th>종류</th>
		<th>기본타입</th>
		<th>타입크기(byte)</th>
	</tr>
	<tr>
		<td rowspan="5">정수</td>
		<td>byte</td>
		<td>1byte</td>
	</tr>
	<tr>
		<td>char</td>
		<td>2byte</td>
	</tr>
	<tr>
		<td>short</td>
		<td>2byte</td>
	</tr>
	<tr>
		<td>int</td>
		<td>4byte</td>
	</tr>
	<tr>
		<td>long</td>
		<td>8byte</td>
	</tr>
	<tr>
		<td rowspan="2">실수</td>
		<td>float</td>
		<td>4byte</td>
	</tr>
	<tr>
		<td>double</td>
		<td>8byte</td>
	</tr>
	<tr>
		<td>논리</td>
		<td>boolean</td>
		<td>1byte</td>
	</tr>		
</table>
	
2) 참조 타입 
<br>
객체의 번지를 참조하는 타입으로 기본 타입과의 차이는 '저장되는 값이 무엇인가'에 있다. 기본 타입으로 선언된 변수는 실제 값을 변수에 저장하지만 참조 타입은 배열, 열거, 클래스, 인터페이스를 이용해서 선언된 변수로 메모리에 번지를 값으로 갖게 된다. 즉 __번지를 통해 객체를 참조__한다는 뜻으로 참조타입이라고 부른다. <br>
또한 기본 데이터 타입은 데이터가 생성되는 위치가 스택 영역이지만 참조 데이터 타입은 힙 영역에 생성된다. <br>
ex) int num = 10; <br>
	double price = 10.5; <br>
	String name = "지민"; <br>
	String hobby = "영화"; <br>
	<br>
	|스택 영역  		| 힙 영역 		  |
	| ---- 				| ----	  		  |
	| num = 10;			| 15번지 : "지민" |		
	| price = 10.5  	| 200번지 : "영화"|
	| name = 15번지		|				  |
	| hobby = 200번지 	|				  |
	<br>
	- 배열 <br>
	- 열거 타입 <br>
	- 클래스 <br>
	- 인터페이스 <br>
			
- 메모리 사용 영역 `java`
	- JVM (자바 가상 머신)이 사용하는 메모리 영역(Runtime Data Area)
	- java.exe로 java 프로그램을 실행하게 되면 운영체제로부터 JVM(Java Vitural Machine)은 메모리를 할당받고 이를 몇가지 영역으로 세분화하여 	  	  관리하게 된다. JVM은 메모리를 __메소드 영역__, __힙 영역__, __스레드 단위__로 구분하여 관리하게 된다.
	<br> <br> <br>
	__메소드 영역__ <br>
	- 코드에서 사용되는 클래스(.class) 들을 로더로 읽어서 클래스 별로 런타임 상수풀(상수풀 : 문자상수, 타입, 필드, 객체참조가 저장됨), 필드 	  	  데이터, 메소드 데이터, 메소드 코드, 생성자 코드 등으로 분류해서 저장하게 된다. 일반적으로 static으로 선언된 값들 역시 이 과정에서 메소드 영역에 저장된다.
	  <br> <br>
	  이 곳에 생성된 데이터는 JVM이 실행되는 순간에 자동으로 생성된다. 프로그래밍 과정에서 아직 수행되지 않은 static 영역의 데이터에 접근할     
	  수 있는 이유도 static으로 선언된 값이 JVM이 실행되는 순간에 메모리에 올라가기 때문이다. <br>
	  여기에 저장된 값들은 모든 쓰레드가 공유하는 값이다.
	<br> <br> <br>
	__힙 영역__
	- new 키워드로 생성된 객체(Object)와 배열(Array)이 생성되는 영역, 생성된 객체는 스택 영역의 변수나 다른 객체 필드에서 참조한다.
	- 참조하는 변수나 필드가 없다면, 의미 없는 객체(쓰레기)로 분류되어 가비지 컬렉터가 자동으로 제거한다. (객체를 직접 제거하는 방법 제공X)
	- 런타임시 할당된다.
	<br> <br> <br>
	__스택 영역__
	- 각 스레드마다 하나씩 존재, 스레드가 시작할 때 할당된다.
	- 추가적으로 스레드를 생성하지 않았다면, main 스레드만 존재한다.
	- 메소드를 호출할 때마다 프레임을 추가(push)하고, 메소드 종료 시 해당 프레임 제거
	- 프레임 안에는 로컬 변수 스택이 있다. 변수가 최초로 초기화될 때 로컬 변수 스택에 생성된다. (변수는 선언된 블록 안에서만 스택에 존재, 블록을 벗어나면 스택에서 제거된다.)
	- 컴파일 타임 시 할당된다.
	<br> <br> <br>
** 참고
``` 
스레드 : 한 프로그램의 작업 단위를 의미한다.
컴파일 타임 : 소스코드가 기계어로 변환되어 실행가능한 프로그램이 되는 과정(systenx Error, 파일 참조 오류, 타입 체크 오류 등)
런타임 : 컴파일 타임 이후 프로그램이 실행되는 때(0 나누기 오류, null 참조 오류, 메모리 부족 오류)
```
	
** 멀티스레드 시 공유되는 메모리 영역은?
```
1,2번인 메소드 영역과 힙 영역은 모든 스레드가 공유한다.
3,4,5번은 각각의 스레드마다 생성되고 공유되지 않는다.
```
	
	
- wrapper class `java`
	- 자바 API 클래스 중 하나이다.
	- 자바의 기본 타입 8개(byte, short, char, int, long, float, double, boolean)에 해당하는 데이터를 객체로 표현해야 하는 경우 __기본 자료타입을 객체로 다루기 위해서 사용하는 클래스들을 래퍼 클래스(wrapper class)__라고 한다. 래퍼 클래스로 감싸고 있는 기본 타입 값은 외부에서 변경할 수 없다. 만약 값을 변경하고 싶다면 새로운 포장 객체를 만들어야 한다.
	
	```
	ex) 메소드의 파라미터로 객체 타입만이 요구될 경우
		- 기본 타입의 데이터를 그대로 사용할 수도 있지만(AutoBoxing을 통해 가능해진다.) 
		기본 타입의 데이터를 먼저 객체로 변환 후 작업을 수행해야 한다.
	```			


#### 변수

- 변수란?
- 변수 선언 방법
- 스코프
- 지역변수 / 전역변수
- 호이스팅 `javascript`
- 변수 네이밍

<br>

#### Array prototype ( Stream )

- Array.prototype.indexOf
- Array.prototype.slice
- Array.prototype.splice
- Array.prototype.join
- Array.prototype.push
- Array.prototype.pop
- Array.prototype.unshift
- Array.prototype.shift
- Array.prototype.fill

<br>

- Array.prototype.forEach
- Array.prototype.find
- Array.prototype.filter
- Array.prototype.map
- Array.prototype.some
- Array.prototype.every
- Array.prototype.reduce

# markdown .md

## 마크다운이란?

> 
> <br>
> 마크다운(markdown)은 일반 텍스트 문서의 양식을 편집하는 문법이다.<br>
> README파일이나 온라인 문서, 혹은 일반 텍스트 편집기로 문서 양식을 편집할 때 쓰인다.<br>
> 마크다운을 이용해 작성된 문서는 쉽게 HTML 등 다른 문서형태로 변환이 가능하다.
> <br>
> 

## 마크다운 작성법?

### 1. 제목

`h1-h6 : #-######`
<br>

### 2. 인용문 - BlockQuote

`>,>>,>>>`
<br>

### 3. 목록 - List

- 순서가 없는 목록
`(*, -, +)`

##### 예시

* 첫번째 아이템
- 두번째 아이템
+ 세번째 아이템

### 링크 - Link

`[Title](link)`
[Google] [https://www.google.com](https://www.google.com/), "GO Google"

`<link Address>`[https://www.google.com](https://www.google.com/)

`[link keyword][id][id]:URL "Optional Title here"`
[googleLink] : [https://www.google.com](https://www.google.com/) "GoGoogle"
<br>

### 4. 글씨 강조 - Emphasis

#### 본문에 특정 문자에 서식(볼드, 이텔릭, 밑줄, 취소선)을 적용해 강조할 수 있다.

- *이텔릭체* *이텔릭체*
<br>`content*` `_content_`
- **볼드체** **볼드체**
<br>`*content**` `__content__`
- ***이텔릭+볼드*** ***이텔릭+볼드***
<br>`**content***` `___content___`
- ~취소선~ ~~취소선~~
<br>`~content~` `~~content~~`
- **~~볼드+취소선~~**
<br>`*~~content~~**`
- <u>밑줄</u>
<br>`<u>content</u>`

<br>

### 5. 코드 - Code

- 인라인(inline) 코드 강조
`(Grave)문자를 입력하여 본문의 내용중 코드강조 처리할 수 있다.
##### 예시
`inline code`
<br>

- 블록(Block) 코드 강조
`(Grave)문자를 3번 연속 입력해서 코드 블럭을 삽입할 수 있다.
###### 예시
```java
public static void main (String[] args) {
	System.out.println("Java에서 가장 먼저 실행되는 Class");
} // ```java Code``` 사용하여 java code block 만들기
```
<br>

### 6. 이미지 - Image
#### 본문에 이미지를 삽입할 수 있다.
#### ![대체텍스트](이미지URL or Path "이미지설명")
#### 사이즈 및 정렬을 조정하기 위해서는 HTML <img> Tag를 이용하면 된다. Link와 문법이 흡사함. 단, 앞에 !을 추가
<br>

##### 예시 
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBSxtd13l67qMFF_fetV-MywM1YN1qdeeLyg&usqp=CAU" width="300px">

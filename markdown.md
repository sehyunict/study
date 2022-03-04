# markdown .md

## 마크다운이란?

> 마크다운(markdown)은 일반 텍스트 문서의 양식을 편집하는 문법이다.
README파일이나 온라인 문서, 혹은 일반 텍스트 편집기로 문서 양식을 편집할 때 쓰인다.
마크다운을 이용해 작성된 문서는 쉽게 HTML 등 다른 문서형태로 변환이 가능하다.
<br><br>
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

### 예시

- 첫번째 아이템
- 두번째 아이템
- 세번째 아이템
<br>

### 링크 - Link

`[Title](link)`
[Google] ([https://www.google.com](https://www.google.com/), "GO Google"

`<link Address>`[https://www.google.com](https://www.google.com/)

`[link keyword][id][id]:URL "Optional Title here"`
[googleLink] : [https://www.google.com](https://www.google.com/) "GoGoogle"
<br>

### 4. 글씨 강조 - Emphasis

### 본문에 특정 문자에 서식(볼드, 이텔릭, 밑줄, 취소선)을 적용해 강조할 수 있다.

- *이텔릭체* *이텔릭체*`content*` `_content_`
- **볼드체** **볼드체**`*content**` `__content__`
- ***이텔릭+볼드*** ***이텔릭+볼드***`**content***` `___content___`
- ~취소선~ ~~취소선~~`~content~` `~~content~~`
- **~~볼드+취소선~~**`*~~content~~**`
- <u>밑줄</u>
`<u>content</u>`

### 5. 코드 - Code

- 인라인(inline) 코드 강조
`(Grave)문자를 입력하여 본문의 내용중 코드강조 처리할 수 있다.
- 블록(Block) 코드 강조
# A.L.T(Agricultural products Livestock transaction)
# 농축산 직거래 쇼핑몰 
### 2021.02.22. ~ 2021-03-19 (31일 주말 및 공휴일포함)

***
대부분 고객들은 농축산물을 구매할 때 시장, 정육점, 마트에서 직접 구매하는 경우가 많습니다. 이 경우 이미 유통을 거친 단계라서 가격이 조금 더 올라 가는 경우나 이미 기간이 지난 상품들을 구매하는 경우가 발생 합니다. 저희 A.L.T에서는 농축산물을 직접 재배하는 업체 쪽과 거래/문의를 하여 좀 더 싱싱하고, 조금 더 낮은 가격으로 상품을 구매할 수 있습니다.
***
### 타 프로젝트 차별화
1. 실시간 채팅으로 소비자와 판매자 간에 소통
2. 제품 가격 협의하여 저렴한 가격으로 상품 구매 가능
3. 직거래로 신선하고 질 좋은 상품 구매 가능

***
### A.L.T 서비스 목적
- 소비자
    - 직거래로 신선하고, 질 좋은 상품과 저렴한 가격으로 제품 구매 가능<br>
    - 시간과 지역의 제한 없이 손쉽게 농축산물 구매 가능
- 판매자
    - 저렴한 가격으로 홍보 효과로 매출 상승<br>
    - 시간과 지역의 제한 없이 손쉽게 농축산물 

***
### 사용버전(Version)

+ Java JDK 1.8
+ Mybatis 3.5 mybatis-spring
+ HTML5/CSS3/JavaScript
+ BootStrap 3 / BootStrap 4
+ J-Query(ajax), Spring Rest API
+ Servlet/JSP Servlet 4.0
+ Spring- framework(AOP, MVC)  v5.2.13
   + Spring task/ Spring tx/ Spring WebSocket
+ Spring security
   + Oracle DatatBase 11g 기준
   + SQL/저장공간 구성

***
### 목차
* 공지사항
  - 전체목록리스트
    + Paging 사용
    + Search 사용
  - 게시글 등록 및 수정, 삭제
    + Image attach 사용
    + SpringSecurity 사용

* 마이페이지(업체)
  - 내정보 조회, 수정
  - 판매글목록
  - 회원탈퇴

* 실시간 채팅
  - 채팅방목록
  - 채팅

***

* 공지사항
  - spring-security로 ‘admin’ 계정만 글 작성, 수정, 삭제 가능
  - 파일업로드와 다운로드는 Ajax를 비동기방식으로 json 데이터를 MyBatis를 통해 CRUD 작업
  - 정규표현식과 JavaScript로 첨부파일의 사이즈와 종류 제한 
  - 이미지파일‘I’와 일반파일‘F’로 데이터베이스를 구분해 JavaScript를 사용해 이미지파일일 경우, 사진을 보여주고 파일일 경우, 첨부파일 아이콘과 파일의 이름을 출력

* 업체 마이페이지
  - 업체 id를 기준으로 데이터베이스를 연결해 마이페이지 기존 정보 데이터를 가져옴
  - 업체 id를 기준으로 데이터베이스와 연결해 데이터 수정
  - 회원탈퇴는 탈퇴여부 컬럼의 기본값인 ‘N’을 ‘Y’로 수정, 하지만 회원의 권한은 삭제해 로그인 불가

* 채팅
  - Spring Web Socket을 이용
  - 판매자와 연락하기를 클릭 시 기존의 방이 있으면, 데이터베이스와 연결해 기존의 데이터를 불러오고 기존의 방이 없을시, 새로운 방을 만들어 채팅창으로 바로 접속
  - WebSocketConfigurer을 상속받아 config에서 socketHandler를 이용해 URL처리
  - controller단에서 방에 대한 생성, 삭제, 이동 처리
  - Handler에서 ArrayList와 HashMap을 이용해 채팅 메시지처리와 소켓 연결 및 종료 처리
  
- 판매자와채팅연결

<img src="https://user-images.githubusercontent.com/69239555/114127399-4e3eff80-9935-11eb-9e51-66a1ebf63a19.png" width="50%" height="50%" title="판매자와채팅연결" alt="판매자와채팅연결"></img><br>
- 채팅방목록

<img src="https://user-images.githubusercontent.com/69239555/114126684-e3d98f80-9933-11eb-9d13-0e04ac07a103.png" width="50%" height="30%" title="채팅방목록" alt="채팅방목록"></img><br>
- 채팅

<img src="https://user-images.githubusercontent.com/69239555/114127554-7cbcda80-9935-11eb-905e-2d0d262450a8.png" width="50%" height="30%" title="채팅" alt="채팅"></img>


***
## 기여자
### 고지영, 김용민, 윤성환, 임정민, 정서영 (총 5명)

[네이버](www.naver.com, "네이버 링크 설명")
_링크를 기울임_

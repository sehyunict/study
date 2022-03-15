
## Union all

* 동일한 컬럼을 가지고 있는 두 테이블은 **join**과 **on**절을 이용해서 합칠 수 있다.
* 하지만 동일한 컬럼을 가지고 있지 않은데 검색결과를 함께 보고 싶다면 고려해봐야할 것이 바로 **union all**이다.
	* JOIN : 수직결합
	* UNION : 수평결합
		* UNION : 중복데이터 제거
		* UNION ALL : 중복여부와 상관없이 모든 데이터 출력

		
## ORACEL - MERGE
* 테이블에 데이터가 이미 존재하면 업데이트 하고, 존재하지 않으면 입력을 해야 하는 경우 사용.
* MERGE INTO 
```oracle
MERGE 
 INTO job_history a {TABLE | VIEW}
USING emp b {TABLE | VIEW | SUBQUERY}
   ON (a.empno = b.empno) // 조건절
 WHEN MATCHED THEN // 일치하는 경우 {UPDATE | DELETE}
 	  UPDATE SET a.job = b.job
 	  DELETE
 WHEN NOT MATCHED THEN // 불일치하는 경우 INSERT
 	  INSERT ()
 	  VALUES
```
CREATE UNIQUE INDEX uix_thread ON ThreadBoard(thread)
Go
-------------------------------------------------------------------------------------
--입력되는 글이 질문 글인 경우
--현재 DB에 존재하는 thread값중 가장 큰 값에 +1000한 값을 thread값으로 줌
INSERT INTO ThreadBoard (thread, depth, writer, pwd, title, mode, content) 
Values (1000, 0, 'admin', 'pwd', '첫번 째 글입니다.', 1, '본문 내용입니다.')

INSERT INTO ThreadBoard (thread, depth, writer, pwd, title, mode, content) 
Values (2000, 0, 'admin', 'pwd', '두번 째 글입니다.', 1, '본문 내용입니다.')

INSERT INTO ThreadBoard (thread, depth, writer, pwd, title, mode, content)
Values (1999, 1, 'admin', 'pwd', '두번 째 글의 답변입니다.', 1, '본문 내용입니다.')


SELECT * FROM ThreadBoard ORDER BY Thread DESC

----------------------------------------------------------------------------------------------------
--입력되는 글이 답변인 경우
--자신의 부모글의 thread값보다 -1, 
--이전 질문 글의 thread값 사이에 위치한 모든 글의 thread값을 -1, 
--현재 입력되는 글의 thread값을 부모글의 thread값 -1, 
--depth는 부모글의 depth값에 +1
UPDATE ThreadBoard SET thread = thread - 1 Where (thread < 2000) and (thread > 1000)

INSERT INTO ThreadBoard (thread, depth, writer, pwd, title, mode, content)
VALUES (1999, 1, 'admin', 'pwd', '두번 째 글의 답변2입니다.', 1, '본문 내용')

SELECT * FROM ThreadBoard ORDER BY Thread DESC
---------------------------------------------------------------------------------------
INSERT INTO ThreadBoard (thread, depth, writer, pwd, title, mode, content)
Values (1998, 2, 'admin', 'pwd', '두번 째 글의 답변2에 대한 답변입니다', 1, '본문 내용')

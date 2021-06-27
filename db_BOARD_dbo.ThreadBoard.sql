CREATE UNIQUE INDEX uix_thread ON ThreadBoard(thread)
Go
-------------------------------------------------------------------------------------
--�ԷµǴ� ���� ���� ���� ���
--���� DB�� �����ϴ� thread���� ���� ū ���� +1000�� ���� thread������ ��
INSERT INTO ThreadBoard (thread, depth, writer, pwd, title, mode, content) 
Values (1000, 0, 'admin', 'pwd', 'ù�� ° ���Դϴ�.', 1, '���� �����Դϴ�.')

INSERT INTO ThreadBoard (thread, depth, writer, pwd, title, mode, content) 
Values (2000, 0, 'admin', 'pwd', '�ι� ° ���Դϴ�.', 1, '���� �����Դϴ�.')

INSERT INTO ThreadBoard (thread, depth, writer, pwd, title, mode, content)
Values (1999, 1, 'admin', 'pwd', '�ι� ° ���� �亯�Դϴ�.', 1, '���� �����Դϴ�.')


SELECT * FROM ThreadBoard ORDER BY Thread DESC

----------------------------------------------------------------------------------------------------
--�ԷµǴ� ���� �亯�� ���
--�ڽ��� �θ���� thread������ -1, 
--���� ���� ���� thread�� ���̿� ��ġ�� ��� ���� thread���� -1, 
--���� �ԷµǴ� ���� thread���� �θ���� thread�� -1, 
--depth�� �θ���� depth���� +1
UPDATE ThreadBoard SET thread = thread - 1 Where (thread < 2000) and (thread > 1000)

INSERT INTO ThreadBoard (thread, depth, writer, pwd, title, mode, content)
VALUES (1999, 1, 'admin', 'pwd', '�ι� ° ���� �亯2�Դϴ�.', 1, '���� ����')

SELECT * FROM ThreadBoard ORDER BY Thread DESC
---------------------------------------------------------------------------------------
INSERT INTO ThreadBoard (thread, depth, writer, pwd, title, mode, content)
Values (1998, 2, 'admin', 'pwd', '�ι� ° ���� �亯2�� ���� �亯�Դϴ�', 1, '���� ����')

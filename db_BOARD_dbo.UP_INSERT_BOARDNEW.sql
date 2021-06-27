CREATE PROC dbo.UP_INSERT_BOARDNEW
    @Writer    Varchar(20),
    @Pwd       Varchar(20),
    @Email     Varchar(100),
    @Title       Varchar(100),
    @Mode     Bit,
    @Ip         Varchar(15),
    @Content    Text
AS
    SET NOCOUNT ON
    DECLARE	@NewThread int
    SELECT @NewThread = MAX(Thread) + 1000 FROM ThreadBoard

    INSERT INTO ThreadBoard
        (thread, depth, writer, pwd, email, title, mode, ip, content)
    Values
        (@NewThread, 0, @Writer, @Pwd, @Email, @Title, @Mode, @Ip, @Content)

GO
create procedure Spinsert(@ID int,@UserName varchar(20),@Email varchar(20),@Password varchar(15),@Country varchar(20) )
AS
insert into UserData values(@ID,@UserName,@Email,@Password,@Country)

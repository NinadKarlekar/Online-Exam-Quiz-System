USE [onlineexam]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_name] [nvarchar](500) NULL,
	[admin_email] [nvarchar](50) NULL,
	[admin_password] [nvarchar](50) NULL,
 CONSTRAINT [PK__admin__43AA4141D3FA0030] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Que_ID] [nvarchar](max) NULL,
	[Que] [nvarchar](max) NULL,
	[Opt_Selected] [nvarchar](max) NULL,
	[Ans] [nvarchar](max) NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exam]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exam](
	[exam_id] [int] IDENTITY(1,1) NOT NULL,
	[exam_name] [nvarchar](max) NULL,
	[exam_description] [nvarchar](max) NULL,
	[exam_date] [date] NULL,
	[exam_duration] [int] NULL,
	[exam_marks] [int] NULL,
	[exam_negativemarks] [int] NULL,
	[exam_totalquestion] [int] NULL,
	[category_fid] [int] NULL,
	[subject_fid] [int] NULL,
	[exampass_marks] [int] NULL,
 CONSTRAINT [PK_exam] PRIMARY KEY CLUSTERED 
(
	[exam_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Java]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Java](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](500) NULL,
	[Option1] [varchar](500) NULL,
	[Option2] [varchar](500) NULL,
	[Option3] [varchar](500) NULL,
	[Option4] [varchar](500) NULL,
	[Answer] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Que_temp]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Que_temp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Que_Id] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[question_name] [nvarchar](max) NULL,
	[option_one] [nvarchar](max) NULL,
	[option_two] [nvarchar](max) NULL,
	[option_three] [nvarchar](max) NULL,
	[option_four] [nvarchar](max) NULL,
	[question_answer] [int] NULL,
	[exam_fid] [int] NULL,
 CONSTRAINT [PK_question] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Role] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[result]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[result](
	[result_id] [int] IDENTITY(1,1) NOT NULL,
	[result_status] [nvarchar](max) NULL,
	[result_score] [int] NULL,
	[user_email] [nvarchar](50) NULL,
	[totalquestion] [int] NULL,
	[exam_fid] [int] NULL,
	[exam_date] [datetime] NULL,
 CONSTRAINT [PK_result] PRIMARY KEY CLUSTERED 
(
	[result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject](
	[subject_id] [int] IDENTITY(1,1) NOT NULL,
	[subject_name] [nvarchar](50) NULL,
	[category_fid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_fname] [nvarchar](50) NULL,
	[user_lname] [nvarchar](50) NULL,
	[user_email] [nvarchar](50) NULL,
	[user_password] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spaddexam]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spaddexam]

@examname nvarchar(500),
@examdis nvarchar(MAX),
@examdate date,
@examduration int,
@exampassmarks int,
@exammarks int,
@examsubjectfid int,
@examcategoryfid int
as
begin
      insert into exam
	  (exam_name,exam_description,exam_date,exam_duration,exampass_marks,exam_marks,subject_fid,category_fid) values
	  (@examname,@examdis,@examdate,@examduration,@exampassmarks,@exammarks,@examsubjectfid,@examcategoryfid)
	  
	  
	  
end
GO
/****** Object:  StoredProcedure [dbo].[spAddquestion]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAddquestion]
@questionname nvarchar(MAX),
@optionone nvarchar(MAX),
@optiontwo nvarchar(MAX),
@optionthree nvarchar(MAX),
@optionfour nvarchar(MAX),
@questionanswer int,
@examfid int
as
begin
        insert into question( question_name,option_one,option_two,option_three,option_four,question_answer,exam_fid) values
		(@questionname,@optionone,@optiontwo,@optionthree,@optionfour,@questionanswer,@examfid)
		

end
GO
/****** Object:  StoredProcedure [dbo].[spAdminlogin]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAdminlogin]
@admin_email nvarchar(50),
@admin_password nvarchar(50)
as begin
declare @count int
select @count=COUNT(admin_email)
from admin
where admin_email=@admin_email and admin_password=@admin_password
if (@count=1)
begin
select 1 as retunvalue
end
else
begin
select -1 as retunvalue
end
end
GO
/****** Object:  StoredProcedure [dbo].[spAdminRegisterinsert]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spAdminRegisterinsert]
@admin_name nvarchar(50),
@admin_email nvarchar(50),
@password  nvarchar(100)
as
begin
      declare @count int
	  declare @returnvalue int
	  select @count = COUNT(admin_email) from admin where admin_email=@admin_email
	      if @count>0
		      begin
			     set @returnvalue = -1
				 end
				 
				 
			else
			  begin
			     set @returnvalue = 1
				 insert into admin(admin_name,admin_email,admin_password) values
				 (@admin_name,@admin_email,@password)
				 end
		select @returnvalue as returnvalue
end
GO
/****** Object:  StoredProcedure [dbo].[spEditexam]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[spEditexam]
@examid int,
@examname nvarchar(100),
@examdiscription nvarchar(MAX),
@examdate date,
@examduration int,
@exampassmarks int,
@examnmarks int,
@categoryfid int,
@subjectfid int
as
begin
     update exam set exam_name = @examname, exam_description = @examdiscription,exam_date= @examdate,exam_duration = @examduration, exampass_marks = @exampassmarks ,exam_marks =@examnmarks, category_fid =@categoryfid , subject_fid =@subjectfid 
	 where exam_id=@examid
	 
	 end
GO
/****** Object:  StoredProcedure [dbo].[spEditexamfill]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spEditexamfill]
	 @examid int
	 as
	 begin
	     select * from exam where exam_id =@examid
		 
	end
GO
/****** Object:  StoredProcedure [dbo].[spEditquestion]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spEditquestion]
	@questionid int,
	@questionname nvarchar(MAX),
	@optionone nvarchar(MAX),
	@optiontwo nvarchar(MAX),
	@optionthree nvarchar(MAX),
	@optionfour nvarchar(MAX),
	@questionanswer int,
	@examfid int
	as
	begin
	  update question set question_name=@questionname, option_one=@optionone,option_two=@optiontwo, option_three=@optionthree, option_four=@optionfour,question_answer=@questionanswer, exam_fid=@examfid 
	  where question_id=@questionid
	  
	  end
GO
/****** Object:  StoredProcedure [dbo].[spEditquestionfill]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spEditquestionfill]
	  @questionid int
	  as 
	  
	  begin
	     select * from question
		 left join exam on
		 question.exam_fid =exam.exam_id
		 where question_id= @questionid
end
GO
/****** Object:  StoredProcedure [dbo].[spExamList]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spExamList]
as 

begin
     select *  from exam
	 left join subject on exam.subject_fid = subject.subject_id
	 left join category on exam.category_fid =category.category_id
end
GO
/****** Object:  StoredProcedure [dbo].[spExamListDetails]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spExamListDetails]
@exam_id int
as
begin
     select * from exam
	 left join subject on exam.subject_fid=subject.subject_id
	 left join category on exam.category_fid =category.category_id
	 where exam_id =@exam_id
end
GO
/****** Object:  StoredProcedure [dbo].[spExamquestion]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spExamquestion]
@examfid int
as
begin
     select * from question
	 left join exam on
	 question.exam_fid =exam.exam_id
	where exam_fid=@examfid
	
end
GO
/****** Object:  StoredProcedure [dbo].[spExamserachcategory]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spExamserachcategory]
@subjectid int
as
begin
     select * from subject
	 join exam
	 on
	 subject.subject_id = exam.subject_fid
	 where subject_id = @subjectid
end
GO
/****** Object:  StoredProcedure [dbo].[spgetallquestion]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spgetallquestion]
as

begin 
      select * from question
	  left join exam on
	  question.exam_fid = exam.exam_id
	  
end
GO
/****** Object:  StoredProcedure [dbo].[spQuestionserachexam]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spQuestionserachexam]
@examid int
as
begin
     select * from question
	 join exam
	 on
	 exam.exam_id = question.exam_fid
	 where exam_fid = @examid
	 
end
GO
/****** Object:  StoredProcedure [dbo].[spResultinsert]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spResultinsert]
@examfid nvarchar(150),
@resultstatus nvarchar(150),
@resultscore int,
@totalquestion int,
@username nvarchar(50)
as
begin
      insert into result (exam_fid,result_status,result_score,totalquestion,user_email) values
	  (@examfid,@resultstatus,@resultscore,@totalquestion,@username)
	  
end
GO
/****** Object:  StoredProcedure [dbo].[spSubjectedit]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spSubjectedit]
@subject_name nvarchar(50),
@category_id int,
@subject_id int
as
begin
     update subject set subject_name= @subject_name, category_fid=@category_id where subject_id=@subject_id 
	 
	 
end
GO
/****** Object:  StoredProcedure [dbo].[spSubjecteditfill]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spSubjecteditfill]
@id int
as
begin
     select * from subject
	 left join category
	 on
	 subject.category_fid=category.category_id where subject_id=@id
	 
end
GO
/****** Object:  StoredProcedure [dbo].[spSubjectList]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spSubjectList]
as
begin
select * from subject
left join category
on
subject.category_fid=category.category_id

end
GO
/****** Object:  StoredProcedure [dbo].[spUserlogin]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spUserlogin]
@user_email nvarchar(50),
@password nvarchar(100)
as
begin
      declare @count int
	  select @count =COUNT(user_email) from users
	  where user_email= @user_email and user_password=@password
	  if (@count = 1)
	         begin
			      select 1 as retunvalue
			end
			
	   else
	       begin
		       select -1 as retunvalue
			end
end
GO
/****** Object:  StoredProcedure [dbo].[spUserresult]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spUserresult]
@email nvarchar(50)
as 
begin
     select * from result
	 join exam
	 on
	 result.exam_fid = exam.exam_id
	 where user_email= @email
end
GO
/****** Object:  StoredProcedure [dbo].[spUserslogin]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spUserslogin]
@user_email nvarchar(50),
@password nvarchar(100)
as
begin
      Declare @count int
	  select @count =COUNT(user_email) from users
	  where user_email= @user_email and user_password=@password
	  if (@count = 1)
	         begin
			      select 1 as retunvalue
			end
			
	   else
	       begin
		       select -1 as retunvalue
			end
end
GO
/****** Object:  StoredProcedure [dbo].[spUsersRegisterinsert]    Script Date: 31-10-2021 16:51:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spUsersRegisterinsert]
@user_fname nvarchar(50),
@user_lname nvarchar(50),
@email nvarchar(50),
@password nvarchar(100)
as
begin
     declare @count int
	 declare @returnvalue int
	 select @count = COUNT(user_email) from users where user_email = @email
	     if @count>0
		      begin
			      set @returnvalue =-1
				  
			   end
			   
		else
		  begin
		      set @returnvalue =1
			  insert into users (user_fname,user_lname,user_password,user_email) values
			  (@user_fname,@user_lname,@password,@email)
			 end
		select @returnvalue as returnvalue
end
GO

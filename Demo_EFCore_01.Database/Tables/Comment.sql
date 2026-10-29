CREATE TABLE [dbo].[Comment]
(
	[Id] INT IDENTITY,
	[Content] NVARCHAR(4000) NOT NULL,
	[CreateAt] DATETIME2 NOT NULL,
	[PlayerId] INT NOT NULL,
	CONSTRAINT [PK_Comment] PRIMARY KEY ([Id]),
	CONSTRAINT [FK_Comment__PlayerAccount] 
		FOREIGN KEY ([PlayerId]) 
		REFERENCES [PlayerAccount](Id)
)

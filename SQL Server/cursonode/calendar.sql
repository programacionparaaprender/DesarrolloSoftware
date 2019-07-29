
--USE master;
--GO

--CREATE DATABASE calendar; -- change this to whatever database name you desire
--GO

-- Dropping events table...
DROP TABLE IF EXISTS events;

-- Create events table...
CREATE TABLE events (
   id int IDENTITY(1, 1) PRIMARY KEY CLUSTERED NOT NULL
   , userId nvarchar(50) NOT NULL
   , title nvarchar(200) NOT NULL
   , description nvarchar(1000) NULL
   , startDate date NOT NULL
   , startTime time(0) NULL
   , endDate date NULL
   , endTime time(0) NULL
   , INDEX idx_events_userId ( userId )
);

INSERT INTO [dbo].[events]
( userId, title, description, startDate, startTime, endDate, endTime )
VALUES
( 'user1234', N'doctor appt', N'Stuff', '2019-10-03', '14:30', NULL, NULL )
, ( 'user1234', N'conference', N'', '2019-09-17', NULL, '2019-09-20', NULL )
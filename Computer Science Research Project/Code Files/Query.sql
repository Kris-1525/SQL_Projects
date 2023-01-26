SET GLOBAL local_infile=1;

USE mathematics;
CREATE TABLE IF NOT EXISTS posts (
	IndexId INT NOT NULL AUTO_INCREMENT,
    Id INT,
    PostTypeId INT,
    AcceptedAnswerId INT,
    CreationDate TIMESTAMP,
    Score INT,
    ViewCount INT,
    Body TEXT,
    OwnerUserId INT,
    LastEditorUserId INT,
    LastEditorDisplayName TEXT,
    LastEditDate TIMESTAMP,
    LastActivityDate TIMESTAMP,
    Title TEXT,
    Tags TEXT,
    AnswerCount INT,
    CommentCount INT,
    FavoriteCount INT,
    ContentLicense TEXT,
    CommunityOwnedDate TIMESTAMP,
    ParentId INT,
    ClosedDate TIMESTAMP,
    OwnerDisplayName Text,
    PRIMARY KEY (IndexId)
);
LOAD XML LOCAL INFILE 'D:/UoA/Sem2/Research Methods in CS and SE/Posts.xml'
    INTO TABLE posts
    ROWS IDENTIFIED BY '<row>';
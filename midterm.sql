--DROP TABLE [User];
--DROP TABLE Follows;

CREATE TABLE [User] (
    uid varchar(20) PRIMARY KEY,
    name varchar(20),
    company varchar(20)
)

CREATE TABLE Follows (
    uid varchar(20),
    followsid varchar(20), 
    weight varchar(20)
    FOREIGN KEY(uid) REFERENCES [User](uid),
    FOREIGN KEY(followsid) REFERENCES [User](uid)
)

--SELECT * FROM User;

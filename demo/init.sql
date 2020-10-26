USE example;

CREATE TABLE msgs (
    msgid int,
    subject varchar(255),
    msgtext text);

CREATE TABLE is_public (
    msgid int);

INSERT INTO is_public (msgid) VALUES(1);

INSERT INTO msgs (msgid, subject, msgtext) 
VALUES 
    (0, "Hello", "It is me");

INSERT INTO msgs (msgid, subject, msgtext) 
VALUES 
    (1, "Internships available", "Just kidding!");

INSERT INTO msgs (msgid, subject, msgtext) 
VALUES 
    (2, "I thought we had something...", "Was it all a lie?");

INSERT INTO msgs (msgid, subject, msgtext) 
VALUES 
    (3, "Does this P/E ratio make me look fat?", "Shoutout to abstrusegoose!");

INSERT INTO msgs (msgid, subject, msgtext)
VALUES
        (3, "Evil message with duplicate message id", "Happy Halloween!");

INSERT INTO msgs (msgid, subject)
VALUES
        (5, "The text for this message is null");

SELECT * FROM msgs;
SELECT * FROM is_public;
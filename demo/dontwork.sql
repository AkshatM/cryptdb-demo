USE example;
SELECT DISTINCT msgtext FROM msgs;
SELECT msgtext FROM msgs WHERE msgtext LIKE '% is %';
SELECT msgtext FROM msgs WHERE msgtext LIKE 'is';

# All enc_for, speaks_for and princtype queries I tried 
# were invalid according to the CryptDB proxy :)
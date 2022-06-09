CREATE TABLE MOVIE (
    MovieID INTEGER, 
    Rating CHAR(5),
    Title VARCHAR2(255),
    MovieLengthMin INTEGER,
    ReleaseDate DATE,
    OnlineScore NUMBER(3, 1),
    Budget NUMBER(11, 2),
    OpeningWeekendNet NUMBER(11, 2),
    ScoreReviewer VARCHAR2(20)
);
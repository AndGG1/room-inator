insert into country (name, id ) values ('India', 'IN');
insert into country (name, id ) values ('France', 'FN');
insert into country (name, id ) values ('Germany', 'GM');
insert into country (name, id ) values ('Italy', 'IT');
insert into country (name, id ) values ('Japan', 'JP');
insert into country (name, id ) values ('Korea', 'KR');
insert into country (name, id ) values ('Mexico', 'MX');

INSERT INTO LOCATION (COUNTRY_ID, ID, NAME) VALUES ('IN', 'MUM', 'Mumbai');
INSERT INTO LOCATION (COUNTRY_ID, ID, NAME) VALUES ('IN', 'DL', 'Delhi');
INSERT INTO LOCATION (COUNTRY_ID, ID, NAME) VALUES ('IN', 'BGLR', 'Bangalore');
INSERT INTO LOCATION (COUNTRY_ID, ID, NAME) VALUES ('IN', 'CH', 'Chennai');
INSERT INTO LOCATION (COUNTRY_ID, ID, NAME) VALUES ('FN', 'PAR', 'Paris');
INSERT INTO LOCATION (COUNTRY_ID, ID, NAME) VALUES ('FN', 'STR', 'Strasbourg');

INSERT INTO BUILDING (LOCATION_ID, ID, NAME) VALUES ('MUM', 'MUM-B1', 'Building 1');
INSERT INTO BUILDING (LOCATION_ID, ID, NAME) VALUES ('MUM', 'MUM-B2', 'Building 2');
INSERT INTO BUILDING (LOCATION_ID, ID, NAME) VALUES ('BGLR', 'BGLR-B1', 'Building 3');
INSERT INTO BUILDING (LOCATION_ID, ID, NAME) VALUES ('BGLR', 'BGLR-B3', 'Building 4');
INSERT INTO BUILDING (LOCATION_ID, ID, NAME) VALUES ('PAR', 'PAR-B1', 'Paris Building 1');
INSERT INTO BUILDING (LOCATION_ID, ID, NAME) VALUES ('STR', 'STR-B1', 'Strasbourg Building 1');

INSERT INTO ROOM (FLOOR, CAPACITY, BUILDING_ID, ID, NAME, DIRECTIONS, IMAGES, STATIONERY) VALUES ('1', '100', 'MUM-B1', 'BGLR-B1-ID1', 'Room 1', 'Room 1 Directions', ARRAY ['https://picsum.photos/1024/1024', 'https://picsum.photos/1024/1024', 'https://picsum.photos/1024/1024', 'https://picsum.photos/1024/1024'], ARRAY ['whiteboard', 'projector']);

INSERT INTO ROOM (FLOOR, CAPACITY, BUILDING_ID, ID, NAME, DIRECTIONS, IMAGES, STATIONERY) VALUES ('1', '100', 'MUM-B2', 'BGLR-B2-ID1', 'Room 2', 'Room 2 Directions', ARRAY ['https://picsum.photos/1024/1024', 'https://picsum.photos/1024/1024', 'https://picsum.photos/1024/1024', 'https://picsum.photos/1024/1024'], ARRAY ['whiteboard']);

INSERT INTO ROOM (FLOOR, CAPACITY, BUILDING_ID, ID, NAME, DIRECTIONS, IMAGES, STATIONERY) VALUES ('15', '100', 'PAR-B1', 'PAR-B1-ID1', 'Paris Building Room 1', 'Paris Building Room 1 Directions', ARRAY ['https://picsum.photos/1024/1024', 'https://picsum.photos/1024/1024', 'https://picsum.photos/1024/1024', 'https://picsum.photos/1024/1024'], ARRAY ['projector']);

CREATE TABLE TestTable([001]);
INSERT INTO TestTable([001]) VALUES ();

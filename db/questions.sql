INSERT INTO questions( question )
VALUES ( 'What is the airspeed velocity of an unladen swallow?' );
INSERT INTO answers( question_id, answer, is_correct, casts_keeper )
VALUES (1, 'I don''t know...', FALSE, FALSE );
INSERT INTO answers( question_id, answer, is_correct, casts_keeper )
VALUES (1, 'What kind? African or European?', TRUE, TRUE );

INSERT INTO questions( question )
VALUES ( 'What is your favorite color?' );
INSERT INTO answers( question_id, answer, is_correct, casts_keeper )
VALUES (2, 'I don''t know...', FALSE, FALSE );
INSERT INTO answers( question_id, answer, is_correct, casts_keeper )
VALUES (2, 'Blue', TRUE, FALSE );
INSERT INTO answers( question_id, answer, is_correct, casts_keeper )
VALUES (2, 'Yellow', TRUE, FALSE );
INSERT INTO answers( question_id, answer, is_correct, casts_keeper )
VALUES (2, 'Green', TRUE, FALSE );

INSERT INTO questions( question )
VALUES ( 'What is the capital of Assyria?' );
INSERT INTO answers( question_id, answer, is_correct, casts_keeper )
VALUES (3, 'I don''t know that!', FALSE, FALSE );
INSERT INTO answers( question_id, answer, is_correct, casts_keeper )
VALUES (3, 'Nineveh', TRUE, FALSE );


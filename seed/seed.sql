-- This file is used to seed sample data for references/testing purposes.


BEGIN;

INSERT INTO public."user"(age, "isActive", "firstName", "lastName")VALUES (2, true, 'testFirstName', 'testLastName');
INSERT INTO public."user"(age, "isActive", "firstName", "lastName")VALUES (50, true, 'testFirstNameTwo', 'testLastNameTwo');

END;
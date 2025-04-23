-- Table: SavingThrows.Cleric

CREATE SCHEMA IF NOT EXISTS "SavingThrows";

DROP TABLE IF EXISTS "SavingThrows"."Cleric";

CREATE TABLE IF NOT EXISTS "SavingThrows"."Cleric"
(
    "SavingThrowkeyClr" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 0 MINVALUE 0 MAXVALUE 2147483647 CACHE 1 ),
    "LvlMin" integer,
    "LvlMax" integer,
    "RSW" integer,
    "BrthW" integer,
    "PPD" integer,
    "PetPol" integer,
    "Spells" integer,
            
    CONSTRAINT "SavingThrowkeyClr_pkey" PRIMARY KEY ("SavingThrowkeyClr")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SavingThrows"."Cleric"
    OWNER to steven;
    
    
INSERT INTO "SavingThrows"."Cleric" ("LvlMin","LvlMax","RSW","BrthW","PPD","PetPol","Spells") VALUES
(0,0,0,0,0,0,0),
(1,3,14,16,10,13,15),
(4,6,13,15,9,12,14),
(7,9,11,13,7,10,12),
(10,12,10,12,6,9,11),
(13,15,9,11,5,8,10),
(16,18,8,10,4,7,9),
(19,100,6,8,2,5,7);

(SELECT *
FROM "Cleric"
WHERE "Cleric"."LvlMax" >= 11
ORDER BY "Cleric"."LvlMax" ASC
LIMIT 1)
UNION
(SELECT *
FROM "Cleric"
WHERE "Cleric"."LvlMin" <= 11
ORDER BY "Cleric"."LvlMin" DESC
LIMIT 1);

(SELECT * 
FROM "Cleric"
WHERE "Cleric"."LvlMin" = -1)
UNION
(SELECT *
FROM "Cleric"
WHERE "Cleric"."LvlMin" <= 9 AND "Cleric"."LvlMax" >= 9);


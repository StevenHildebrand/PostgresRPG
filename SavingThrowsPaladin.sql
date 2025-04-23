-- Table: SavingThrows.Paladin

CREATE SCHEMA IF NOT EXISTS "SavingThrows";

DROP TABLE IF EXISTS "SavingThrows"."Paladin";

CREATE TABLE IF NOT EXISTS "SavingThrows"."Paladin"
(
    "SavingThrowkeyPal" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 0 MINVALUE 0 MAXVALUE 2147483647 CACHE 1 ),
    "LvlMin" integer,
    "LvlMax" integer,
    "RSW" integer,
    "BrthW" integer,
    "PPD" integer,
    "PetPol" integer,
    "Spells" integer,
            
    CONSTRAINT "SavingThrowPal_pkey" PRIMARY KEY ("SavingThrowkeyPal")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SavingThrows"."Paladin"
    OWNER to steven;
    
    
INSERT INTO "SavingThrows"."Paladin" ("LvlMin","LvlMax","RSW","BrthW","PPD","PetPol","Spells") VALUES
(0,0,0,0,0,0,0),
(1,2,14,15,12,13,15),
(3,4,13,14,11,12,14),
(5,6,11,11,9,10,12),
(7,8,10,10,8,9,11),
(9,10,8,7,6,7,9),
(11,12,7,6,5,6,8),
(13,14,5,3,3,4,6),
(15,16,4,2,2,3,5),
(17,18,3,2,2,2,4),
(19,100,2,2,2,2,3);

(SELECT *
FROM "Paladin"
WHERE "Paladin"."LvlMax" >= 11
ORDER BY "Paladin"."LvlMax" ASC
LIMIT 1)
UNION
(SELECT *
FROM "Paladin"
WHERE "Paladin"."LvlMin" <= 11
ORDER BY "Paladin"."LvlMin" DESC
LIMIT 1);

(SELECT * 
FROM "Paladin"
WHERE "Paladin"."LvlMin" = -1)
UNION
(SELECT *
FROM "Paladin"
WHERE "Paladin"."LvlMin" <= 9 AND "Paladin"."LvlMax" >= 9);


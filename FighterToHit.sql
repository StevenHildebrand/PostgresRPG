-- Table: Combat.Fighters

-- Let your plans be dark and impenetrable as night, and when you move, fall like a thunderbolt.
-- ― Sun Tzu, The Art of War

CREATE SCHEMA IF NOT EXISTS "Combat";

DROP TABLE IF EXISTS "Combat"."Fighters";

CREATE TABLE IF NOT EXISTS "Combat"."Fighters"
(
    "ToHitkeyFtr" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 0 MINVALUE 0 MAXVALUE 2147483647 CACHE 1 ),
    "LvlMin" integer,
    "LvlMax" integer,
    "NTen" integer,
    "NNine" integer,
    "NEight" integer,
    "NSeven" integer,
    "NSix" integer,
    "NFive" integer,
    "NFour" integer,
    "NThree" integer,
    "NTwo" integer,
    "NOne" integer,
    "Zero" integer,
    "One" integer,
    "Two" integer,
    "Three" integer,
    "Four" integer,
    "Five" integer,
    "Six" integer,
    "Seven" integer,
    "Eight" integer,
    "Nine" integer,
    "Ten" integer,
    
    CONSTRAINT "ToHitFtr_pkey" PRIMARY KEY ("ToHitkeyFtr")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Combat"."Fighters"
    OWNER to steven;
    
    
INSERT INTO "Combat"."Fighters" ("LvlMin","LvlMax","NTen","NNine","NEight","NSeven","NSix","NFive","NFour","NThree","NTwo","NOne","Zero","One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten") VALUES
(-1,-1,-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10),
(0,0,26,25,24,23,22,21,20,20,20,20,20,20,19,18,17,16,15,14,13,12,11),
(1,1,25,24,23,22,21,20,20,20,20,20,20,19,18,17,16,15,14,13,12,11,10),
(2,2,24,23,22,21,20,20,20,20,20,20,19,18,17,16,15,14,13,12,11,10,9),
(3,3,23,22,21,20,20,20,20,20,20,19,18,17,16,15,14,13,12,11,10,9,8),
(4,4,22,21,20,20,20,20,20,20,19,18,17,16,15,14,13,12,11,10,9,8,7),
(5,5,21,20,20,20,20,20,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6),
(6,6,20,20,20,20,20,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5),
(7,7,20,20,20,20,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4),
(8,8,20,20,20,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3),
(9,9,20,20,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2),
(10,10,20,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1),
(11,11,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0),
(12,12,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,-1),
(13,13,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,-1,-2),
(14,14,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,-1,-2,-3),
(15,15,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,-1,-2,-3,-4),
(16,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,-1,-2,-3,-4,-5),
(17,17,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,-1,-2,-3,-4,-5,-6),
(18,18,13,12,11,10,9,8,7,6,5,4,3,2,1,0,-1,-2,-3,-4,-5,-6,-7),
(19,19,12,11,10,9,8,7,6,5,4,3,2,1,0,-1,-2,-3,-4,-5,-6,-7,-8),
(20,20,11,10,9,8,7,6,5,4,3,2,1,0,-1,-2,-3,-4,-5,-6,-7,-8,-9);

(SELECT *
FROM "Fighters"
WHERE "Fighters"."LvlMax" >= 11
ORDER BY "Fighters"."LvlMax" ASC
LIMIT 1)
UNION
(SELECT *
FROM "Fighters"
WHERE "Fighters"."LvlMin" <= 11
ORDER BY "Fighters"."LvlMin" DESC
LIMIT 1);

(SELECT * 
FROM "Fighters"
WHERE "Fighters"."LvlMin" = -1)
UNION
(SELECT *
FROM "Fighters"
WHERE "Fighters"."LvlMin" <= 5 AND "Fighters"."LvlMax" >= 5)
ORDER BY "ToHitkeyFtr" ASC;

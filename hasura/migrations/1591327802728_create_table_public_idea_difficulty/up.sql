CREATE TABLE "public"."idea_difficulty"(
    "id" integer NOT NULL,
    "idea_id" uuid NOT NULL,
    "difficulty_id" integer NOT NULL,
    "created_at" timestamptz NOT NULL DEFAULT now(),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("idea_id") REFERENCES "public"."ideas"("id") ON UPDATE restrict ON DELETE restrict,
    FOREIGN KEY ("difficulty_id") REFERENCES "public"."difficulties"("id") ON UPDATE restrict ON DELETE restrict,
    UNIQUE ("id")
);
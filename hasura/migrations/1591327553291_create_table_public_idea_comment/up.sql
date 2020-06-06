CREATE TABLE "public"."idea_comment"(
    "id" integer NOT NULL,
    "comment_id" uuid NOT NULL,
    "idea_id" uuid NOT NULL,
    "created_at" timestamptz NOT NULL DEFAULT now(),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("idea_id") REFERENCES "public"."ideas"("id") ON UPDATE restrict ON DELETE restrict,
    FOREIGN KEY ("comment_id") REFERENCES "public"."comments"("id") ON UPDATE restrict ON DELETE restrict,
    UNIQUE ("id")
);
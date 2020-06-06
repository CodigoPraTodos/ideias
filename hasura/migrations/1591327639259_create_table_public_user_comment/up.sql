CREATE TABLE "public"."user_comment"(
    "id" integer NOT NULL,
    "user_id" uuid NOT NULL,
    "comment_id" uuid NOT NULL,
    "created_at" timestamptz NOT NULL DEFAULT now(),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user_id") REFERENCES "public"."user"("id") ON UPDATE restrict ON DELETE restrict,
    FOREIGN KEY ("comment_id") REFERENCES "public"."comments"("id") ON UPDATE restrict ON DELETE restrict,
    UNIQUE ("id")
);
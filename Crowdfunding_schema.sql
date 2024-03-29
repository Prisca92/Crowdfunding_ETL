﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/TL2YeH
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Category" (
    "category_id" VARCHAR(255)   NOT NULL,
    "category" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(255)   NOT NULL,
    "subcategory" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(255)   NOT NULL,
    "description" VARCHAR(255)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" VARCHAR(255)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(255)   NOT NULL,
    "currency" VARCHAR(55)   NOT NULL,
    "launched_date" VARCHAR(255)   NOT NULL,
    "end_date" VARCHAR(255)   NOT NULL,
    "category_id" VARCHAR(255)   NOT NULL,
    "subcategory_id" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "email" VARCHAR(255)   NOT NULL
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");


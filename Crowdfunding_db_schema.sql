-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(50)   NOT NULL,
    "description" int   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" int   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" int   NOT NULL,
    "currency" int   NOT NULL,
    "launch_date" int   NOT NULL,
    "end_date" int   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" Varchar(15)   NOT NULL,
    "last_name" Varchar(15)   NOT NULL,
    "email" Varchar(50)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category" (
    "category_id" varchar(10)   NOT NULL,
    "category_name" Varchar(15)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(10)   NOT NULL,
    "subcategory_name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Bakers" (
    "bakers_id" Varchar(15)   NOT NULL,
    "cf_id" int   NOT NULL,
    "first_name" Varchar(20)   NOT NULL,
    "last_name" Varchar(20)   NOT NULL,
    "email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Bakers" PRIMARY KEY (
        "bakers_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_cf_id" FOREIGN KEY("cf_id")
REFERENCES "Bakers" ("cf_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

-- Importing Bakers table in sql (Deliverable 3)
CREATE TABLE Bakers (
    bakers_id Varchar(15) NOT NULL,
    cf_id int NOT NULL,
    first_name Varchar(20) NOT NULL,
    last_name Varchar(20) NOT NULL,
    email Varchar(50) NOT NULL,
    PRIMARY KEY (bakers_id));
	
select * from Bakers


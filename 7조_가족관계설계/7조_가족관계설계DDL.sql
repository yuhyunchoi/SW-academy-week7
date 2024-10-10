DROP DATABASE IF EXISTS FamilyTree;
CREATE DATABASE FamilyTree;
use FamilyTree;

CREATE TABLE `place_of_death` (
   `place_of_death_key`   bigint   NOT NULL,
   `place_of_death_classification`   varchar(50)   NOT NULL
);

CREATE TABLE `death` (
   `person_key`   bigint   NOT NULL,
   `place_of_death_key`   bigint   NOT NULL,
   `register_key`   bigint   NOT NULL,
   `death_date`   datetime   NOT NULL,
   `death_regist_date`   date   NOT NULL,
   `place_of_death_location`   varchar(50)   NOT NULL
);

CREATE TABLE `person` (
   `person_key`   bigint   NOT NULL,
   `name`   varchar(10)   NOT NULL,
   `birthdate`   datetime   NOT NULL,
   `gender`   varchar(5)   NOT NULL,
   `registration_number`   varchar(300)   NOT NULL
);

CREATE TABLE `relation` (
   `relation_key`   bigint   NOT NULL,
   `relation_inf_key`   bigint   NOT NULL,
   `person_key`   bigint   NOT NULL
);

CREATE TABLE `place_of_birth` (
   `place_of_birth_key`   bigint   NOT NULL,
   `place_of_birth_location`   varchar(10)   NOT NULL
);

CREATE TABLE `birth` (
   `person_key`   bigint   NOT NULL,
   `place_of_birth_key`   varchar(20)   NOT NULL,
   `registered_person_of_birth_key`   varchar(10)   NOT NULL,
   `birthdate`   datetime   NOT NULL,
   `original_address`   varchar(100)   NOT NULL,
   `birth_regist_date`   date   NOT NULL
);

CREATE TABLE `registered_person_of_death` (
   `register_key`   bigint   NOT NULL,
   `register_qualif_key`   bigint   NOT NULL,
   `name`   varchar(10)   NOT NULL,
   `registration_number`   varchar(300)   NOT NULL,
   `phone`   varchar(13)   NOT NULL,
   `email`   varchar(20)   NULL
);

CREATE TABLE `registered_person_of_birth` (
   `registered_person_of_birth_key`   bigint   NOT NULL,
   `register_qualif_key`   bigint   NOT NULL,
   `name`   varchar(10)   NOT NULL,
   `resident_registration_number`   varchar(300)   NOT NULL,
   `cellphone`   varchar(13)   NOT NULL,
   `email`   varchar(20)   NULL
);

CREATE TABLE `registered_person_of_birth_qualification` (
   `register_qualif_key`   bigint   NOT NULL,
   `qualification_type`   varchar(20)   NOT NULL
);

CREATE TABLE `registered_person_of_death_qualification` (
   `register_qualif_key`   bigint   NOT NULL,
   `qualification_type`   varchar(50)   NOT NULL
);

CREATE TABLE `certificate` (
   `certificate_key`   bigint   NOT NULL,
   `certificate_type_key`   bigint   NOT NULL,
   `person_key`   bigint   NOT NULL,
   `certificate_no`   long   NOT NULL,
   `certificate_date`   datetime   NOT NULL
);

CREATE TABLE `household` (
   `household_key`   bigint   NOT NULL,
   `person_key`   bigint   NOT NULL,
   `household_relation_key`   bigint   NOT NULL
);

CREATE TABLE `relation_info` (
   `relation_info_key`   bigint   NOT NULL,
   `relation_info`   varchar(20)   NOT NULL
);

CREATE TABLE `address_history` (
   `address_history_key`   bigint   NOT NULL,
   `person_key`   bigint   NOT NULL,
   `address`   varchar(100)   NOT NULL,
   `address_regist_date`   datetime   NOT NULL
);

CREATE TABLE `household_relation` (
   `household_relation_key`   bigint   NOT NULL,
   `household_relation`   varchar(20)   NOT NULL
);

CREATE TABLE `household_report_history` (
   `address_history_key`   bigint   NOT NULL,
   `change_key`   bigint   NOT NULL,
   `person_key`   bigint   NOT NULL,
   `regist_date`   datetime   NOT NULL
);

CREATE TABLE `reason_for_change` (
   `change_key`   bigint   NOT NULL,
   `reason`   varchar(10)   NOT NULL
);

CREATE TABLE `certificate_type` (
   `certificate_type_key`   bigint   NOT NULL,
   `certificate_type`   varchar(20)   NOT NULL
);

ALTER TABLE `place_of_death` ADD CONSTRAINT `PK_PLACE_OF_DEATH` PRIMARY KEY (
   `place_of_death_key`
);

ALTER TABLE `death` ADD CONSTRAINT `PK_DEATH` PRIMARY KEY (
   `person_key`
);

ALTER TABLE `person` ADD CONSTRAINT `PK_PERSON` PRIMARY KEY (
   `person_key`
);

ALTER TABLE `relation` ADD CONSTRAINT `PK_RELATION` PRIMARY KEY (
   `relation_key`,
   `relation_inf_key`,
   `person_key`
);

ALTER TABLE `place_of_birth` ADD CONSTRAINT `PK_PLACE_OF_BIRTH` PRIMARY KEY (
   `place_of_birth_key`
);

ALTER TABLE `birth` ADD CONSTRAINT `PK_BIRTH` PRIMARY KEY (
   `person_key`
);

ALTER TABLE `registered_person_of_death` ADD CONSTRAINT `PK_REGISTERED_PERSON_OF_DEATH` PRIMARY KEY (
   `register_key`
);

ALTER TABLE `registered_person_of_birth` ADD CONSTRAINT `PK_REGISTERED_PERSON_OF_BIRTH` PRIMARY KEY (
   `registered_person_of_birth_key`
);

ALTER TABLE `registered_person_of_birth_qualification` ADD CONSTRAINT `PK_REGISTERED_PERSON_OF_BIRTH_QUALIFICATION` PRIMARY KEY (
   `register_qualif_key`
);

ALTER TABLE `registered_person_of_death_qualification` ADD CONSTRAINT `PK_REGISTERED_PERSON_OF_DEATH_QUALIFICATION` PRIMARY KEY (
   `register_qualif_key`
);

ALTER TABLE `certificate` ADD CONSTRAINT `PK_CERTIFICATE` PRIMARY KEY (
   `certificate_key`,
   `certificate_type_key`
);

ALTER TABLE `household` ADD CONSTRAINT `PK_HOUSEHOLD` PRIMARY KEY (
   `household_key`,
   `person_key`,
   `household_relation_key`
);

ALTER TABLE `relation_info` ADD CONSTRAINT `PK_RELATION_INFO` PRIMARY KEY (
   `relation_info_key`
);

ALTER TABLE `address_history` ADD CONSTRAINT `PK_ADDRESS_HISTORY` PRIMARY KEY (
   `address_history_key`
);

ALTER TABLE `household_relation` ADD CONSTRAINT `PK_HOUSEHOLD_RELATION` PRIMARY KEY (
   `household_relation_key`
);

ALTER TABLE `household_report_history` ADD CONSTRAINT `PK_HOUSEHOLD_REPORT_HISTORY` PRIMARY KEY (
   `address_history_key`,
   `change_key`
);

ALTER TABLE `reason_for_change` ADD CONSTRAINT `PK_REASON_FOR_CHANGE` PRIMARY KEY (
   `change_key`
);

ALTER TABLE `certificate_type` ADD CONSTRAINT `PK_CERTIFICATE_TYPE` PRIMARY KEY (
   `certificate_type_key`
);

ALTER TABLE `death` ADD CONSTRAINT `FK_person_TO_death_1` FOREIGN KEY (
   `person_key`
)
REFERENCES `person` (
   `person_key`
);

ALTER TABLE `relation` ADD CONSTRAINT `FK_relation_info_TO_relation_1` FOREIGN KEY (
   `relation_inf_key`
)
REFERENCES `relation_info` (
   `relation_info_key`
);

ALTER TABLE `relation` ADD CONSTRAINT `FK_person_TO_relation_1` FOREIGN KEY (
   `person_key`
)
REFERENCES `person` (
   `person_key`
);

ALTER TABLE `birth` ADD CONSTRAINT `FK_person_TO_birth_1` FOREIGN KEY (
   `person_key`
)
REFERENCES `person` (
   `person_key`
);

ALTER TABLE `certificate` ADD CONSTRAINT `FK_certificate_type_TO_certificate_1` FOREIGN KEY (
   `certificate_type_key`
)
REFERENCES `certificate_type` (
   `certificate_type_key`
);

ALTER TABLE `household` ADD CONSTRAINT `FK_person_TO_household_1` FOREIGN KEY (
   `person_key`
)
REFERENCES `person` (
   `person_key`
);

ALTER TABLE `household` ADD CONSTRAINT `FK_household_relation_TO_household_1` FOREIGN KEY (
   `household_relation_key`
)
REFERENCES `household_relation` (
   `household_relation_key`
);

ALTER TABLE `household_report_history` ADD CONSTRAINT `FK_reason_for_change_TO_household_report_history_1` FOREIGN KEY (
   `change_key`
)
REFERENCES `reason_for_change` (
   `change_key`
);

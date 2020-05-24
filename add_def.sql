-- public.cms_ud_type_def definition

-- Drop table

-- DROP TABLE public.cms_ud_type_def;

CREATE TABLE public.cms_ud_type_def (
	ud_type_id int8 NOT NULL,
	ud_type_name varchar(255) NOT NULL,
	object_type varchar(40) NULL,
	entity_type varchar(40) NULL,
	CONSTRAINT cms_ud_type_def_pk PRIMARY KEY (ud_type_id)
);

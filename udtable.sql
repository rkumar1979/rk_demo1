-- public.cms_case_ud definition

-- Drop table

-- DROP TABLE public.cms_case_ud;

CREATE TABLE public.cms_case_ud (
	case_ud_id bigserial NOT NULL,
	ud_type_id int4 NOT NULL,
	case_id int4 NOT NULL,
	data_value varchar NOT NULL,
	CONSTRAINT case_ud_pk PRIMARY KEY (case_ud_id)
);


-- public.cms_case_ud_hst definition

-- Drop table

-- DROP TABLE public.cms_case_ud_hst;

CREATE TABLE public.cms_case_ud_hst (
	case_hst_id bigserial NOT NULL,
	case_ud_id int8 NOT NULL,
	new_value varchar(255) NULL,
	old_value varchar(255) NULL
);


-- public.cms_case_ud foreign keys

ALTER TABLE public.cms_case_ud ADD CONSTRAINT cms_case_ud_fk FOREIGN KEY (case_id) REFERENCES cms_case(case_id);


-- public.cms_case_ud_hst foreign keys

ALTER TABLE public.cms_case_ud_hst ADD CONSTRAINT cms_ud_case_hst_fk FOREIGN KEY (case_ud_id) REFERENCES cms_case_ud(case_ud_id);

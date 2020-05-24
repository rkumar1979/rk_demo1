-- public.cms_case definition

-- Drop table

-- DROP TABLE public.cms_case;

CREATE TABLE public.cms_case (
	case_id bigserial NOT NULL,
	case_type varchar(100) NOT NULL,
	sub_type varchar(30) NULL,
	trace_id uuid NOT NULL,
	case_description text NULL,
	case_status varchar(20) NULL,
	priority varchar(20) NULL,
	status_change_reason varchar(300) NULL,
	ban int8 NULL,
	system_source_id varchar(20) NOT NULL,
	external_id varchar(255) NOT NULL,
	resulting_outcome varchar(255) NULL,
	customer_request varchar(100) NULL,
	rule_name varchar(100) NULL,
	lob varchar(20) NOT NULL,
	agent_function varchar(10) NULL,
	brand varchar(10) NULL,
	completion_ts timestamptz NULL,
	completed_by jsonb NULL,
	intent varchar(20) NULL,
	genesys_ack_id varchar(50) NULL,
	related_party jsonb NULL,
	related_entity jsonb NULL,
	"comments" text NULL,
	"language" varchar(20) NULL,
	timezone varchar(10) NULL,
	primary_phone_number varchar(12) NULL,
	email varchar(100) NULL,
	cbr int4 NULL,
	created_ts timestamptz NOT NULL DEFAULT now(),
	last_updated_ts timestamptz NOT NULL DEFAULT now(),
	created_by jsonb NOT NULL,
	last_updated_by jsonb NOT NULL,
	CONSTRAINT cms_case_pk PRIMARY KEY (case_id)
);


-- public.cms_case_hst definition

-- Drop table

-- DROP TABLE public.cms_case_hst;

CREATE TABLE public.cms_case_hst (
	case_hst_id bigserial NOT NULL,
	case_id int4 NOT NULL,
	case_description text NULL,
	case_status varchar(20) NULL,
	priority varchar(20) NULL,
	status_change_reason varchar(300) NULL,
	lob varchar(20) NULL,
	agent_function varchar(10) NULL,
	external_id varchar(255) NULL,
	intent varchar(20) NULL,
	related_party jsonb NULL,
	"comments" text NULL,
	primary_phone_number varchar(12) NULL,
	"language" varchar(20) NULL,
	email varchar(100) NULL,
	cbr int4 NULL,
	last_updated_by jsonb NOT NULL,
	last_updated_ts timestamptz NOT NULL DEFAULT now(),
	CONSTRAINT case_history_pk PRIMARY KEY (case_hst_id),
	CONSTRAINT case_history_case_id_fkey FOREIGN KEY (case_id) REFERENCES cms_case(case_id)
);


CREATE TABLE IF NOT EXISTS public."Cliente"
(
    "CodCliente" integer,
    "Cliente" character varying(250) NOT NULL,
    PRIMARY KEY ("CodCliente")
);

ALTER TABLE public."Cliente"
    OWNER to postgres;
CREATE TABLE configuration_service (
    client_id uuid NOT NULL,
    id uuid NOT NULL,
    product_id uuid NOT NULL,
    implementation_service_id uuid NOT NULL,
    creation_date timestamptz NOT NULL,
    update_date timestamptz NOT NULL,
    deleted bool NOT NULL DEFAULT false,
    deletion_date timestamptz NULL,
    name varchar(255) NOT NULL,
    CONSTRAINT configuration_service_id_key UNIQUE (id),
    CONSTRAINT configuration_service_pkey PRIMARY KEY (client_id, id)
);

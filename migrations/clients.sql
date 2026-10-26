create table if not exists api_clients(

    id uuid primary key,
    name text not null,
    created_at timestamptz default now(),
    api_key_hash text not null unique ---store has never raw value
);

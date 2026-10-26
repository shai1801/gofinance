create table
    if not exists idempotency_keys (
        key text not null,
        client_id uuid not null references api_clients(id),
        request_hash text not null,
        status text not null,
        response_code int,
        response_body jsonb,
        transaction_id uuid references transactions(id),
        created_at timestamptz not null default now (),
        primary key (client_id, key)
    );


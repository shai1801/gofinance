create table
    if not exists entries (
        seq bigserial primary key,
        amount bigint not null check (amount <> 0),
        created_at timestamptz not null default now (),
        transaction_id uuid not null references transactions (id),
        account_id uuid not null references accounts (id)
    );

create index on entries (account_id, seq);

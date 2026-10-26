create table if not exists transactions(
    id uuid primary key,
    created_at timestamptz not null default now(),
    description  text
);

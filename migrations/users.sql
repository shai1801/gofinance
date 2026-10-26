CREATE TABLE  IF NOT EXISTS users(
    id  UUID primary key,
    email text not null unique,
    created_at timestamptz  not null default now()

);

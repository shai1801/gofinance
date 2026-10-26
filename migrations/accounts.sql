create table if not exists accounts(

    id uuid primary key,
    currency char(3) not null references currencies(code)
);

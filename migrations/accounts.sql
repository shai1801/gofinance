create table if not exists accounts(

    id uuid primary key,
    userid uuid not null reference users(id)
    currency char(3) not null references currencies(code),
    status text not null default 'active',
    constraint account_status_chk check (status in ('active','frozen','closed'))
);

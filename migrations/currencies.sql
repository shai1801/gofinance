create table if not exists currencies(
    code char(3) primary key,
    exponent smallint not null
);

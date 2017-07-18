create table caesars.customer_info ( 
    id BIGSERIAL primary key,
    i_dmid varchar(11),
    data JSONB,
    recordType varchar(10),
    contact varchar(18)
)
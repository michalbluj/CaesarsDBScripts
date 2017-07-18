CREATE TABLE caesars.applogs (
  id       serial NOT NULL,
  "time"   timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
  "level"  char(10),
  msg      char(1024),
  meta     varchar,
  reqkey   char(14),
  /* Keys */
  CONSTRAINT applogs_pkey
    PRIMARY KEY (id)
)
# hsa-transactions-isolations-locks


## How to start
1. Clone the repo to local machine
2. Run `docker-compose up -d`
3. Make connection to both created DBs via designated clients
4. Populate both DBs with start tables
   1. Postgres - `scripts/init/postgres/init.sql`
   2. Percona - `scripts/init/percona/init.sql`

## How to test
### Lost update
Run scripts named session_a/_b from `scripts/lost_update/...` 
1. Percona
   1. ![](proofs/lost_update/percona/0.png)
2. Postgres
   1. ![](proofs/lost_update/postgres/0.png)

### Dirty read
Run scripts named session_a/_b from `scripts/dirty_read/...`
1. Percona
   1. ![](proofs/dirty_read/percona/0.png)
   2. ![](proofs/dirty_read/percona/1.png)
   3. ![](proofs/dirty_read/percona/2.png)
2. Postgres
   1. ![](proofs/dirty_read/postgres/0.png)
   2. ![](proofs/dirty_read/postgres/1.png)
   3. ![](proofs/dirty_read/postgres/2.png)
   4. ![](proofs/dirty_read/postgres/3.png)
   5. Not reproducing in postgres due to its inner rule "READ UNCOMMITTED = READ COMMITTED"

### Non-repeatable read
Run scripts named session_a/_b from `scripts/non_repeatable_read/...`
1. Percona
   1. ![](proofs/non_repeatable_read/percona/0.png)
   2. ![](proofs/non_repeatable_read/percona/1_first_read.png)
   3. ![](proofs/non_repeatable_read/percona/2_second_read.png)
2. Postgres
   1. ![](proofs/non_repeatable_read/postgres/0.png)
   2. ![](proofs/non_repeatable_read/postgres/1_first_read.png)
   3. ![](proofs/non_repeatable_read/postgres/2_second_read.png)

### Phantom read
Run scripts named session_a/_b from `scripts/phantom_read/...`
1. Percona
   1. ![](proofs/phantom_read/percona/0.png)
   2. ![](proofs/phantom_read/percona/1_first_read.png)
   3. ![](proofs/phantom_read/percona/2_second_read.png)
2. Postgres
   1. ![](proofs/phantom_read/postgres/0.png)
   2. ![](proofs/phantom_read/postgres/1_first_read.png)
   3. ![](proofs/phantom_read/postgres/2_second_read.png)
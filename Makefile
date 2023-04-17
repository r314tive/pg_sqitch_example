include .env
export

sqitch_install:
	docker pull sqitch/sqitch
	curl -L https://git.io/JJKCn -o sqitch && chmod +x sqitch
	./sqitch help

# sqitch
SQITCH=./sqitch

# H=hostname
H_=$(or $H,localhost)
SSH=ssh -C root@$(H_)
# D=dbname
F=$(or $D,$(DBNAME))
P=db:pg://${PGUSER}@${PGHOST}:${PGPORT}/$F

deploy status verify plan:
	$(SQITCH) $@ $P
revert:
	$(SQITCH) revert --to @HEAD^ $P
revert_all:
	$(SQITCH) revert $P

psql:
	$(SSH) -t docker exec -tiu postgres -h localhost psql

pgcli:
	pgcli postgres://${PGUSER}:${PGPASSWORD}@${PGHOST}:${PGPORT}/${DBNAME}
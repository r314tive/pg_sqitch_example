sqitch_install:
	docker pull sqitch/sqitch
	curl -L https://git.io/JJKCn -o sqitch && chmod +x sqitch
	./sqitch help


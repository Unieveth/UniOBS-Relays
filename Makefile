.PHONY: rtmp-build rtmp-rebuild rtmp-run rtmp-stop rtmp-logs rtmp-clean srt-run srt-stop srt-logs srt-logs

rtmp-build:
	docker-compose -f rtmp/docker-compose.yml build

rtmp-rebuild:
	docker-compose -f rtmp/docker-compose.yml build --no-cache

rtmp-run:
	docker-compose -f rtmp/docker-compose.yml up -d

rtmp-stop:
	docker-compose -f rtmp/docker-compose.yml stop

rtmp-logs:
	docker-compose -f rtmp/docker-compose.yml logs -f

rtmp-clean:
	docker-compose -f rtmp/docker-compose.yml down -v

srt-run:
	docker-compose -f srt/docker-compose.yml up -d

srt-stop:
	docker-compose -f srt/docker-compose.yml stop

srt-logs:
	docker-compose -f srt/docker-compose.yml logs -f

srt-clean:
	docker-compose -f srt/docker-compose.yml down -v

oven-run:
	docker-compose -f oven/streaming/docker-compose.yml up -d

oven-stop:
	docker-compose -f oven/streaming/docker-compose.yml stop

oven-logs:
	docker-compose -f oven/streaming/docker-compose.yml logs -f

oven-clean:
	docker-compose -f oven/streaming/docker-compose.yml down -v

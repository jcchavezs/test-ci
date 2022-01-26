TIMESTAMP=$(echo "$$(date +%Y%m%d%H%M%S)")

timestamp:
	echo $(TIMESTAMP)

try:
	@git add -u
	@git commit -m "new try at $(TIMESTAMP)"
	git tag -a "v$(TIMESTAMP)" -m "Version $(TIMESTAMP)"
	@git push -f origin main
	@git push origin v$(TIMESTAMP)
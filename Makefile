TIMESTAMP=$$(date +%Y%m%d%H%M%S)

try:
	@git add -u
	@git commit -m "new try at $(TIMESTAMP)"
	git tag -a "v$(TIMESTAMP)" -m "Version $(TIMESTAMP)"
	@git push -f origin main
	@git push origin v$(TIMESTAMP)
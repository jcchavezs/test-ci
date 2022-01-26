TIMESTAMP=$$(date +%Y%m%d%H%M%S)

try:
	@git add -u
	@git commit -m "new try at $(TIMESTAMP)"
	@git tag -a "$(TIMESTAMP)" -m "Version $(TIMESTAMP)"
	@git push -f origin main && git push origin $(TIMESTAMP)
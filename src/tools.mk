install-dev: ##@other install python tools
	@if [ ! `which foo ` ]; then curl -LsSf https://astral.sh/uv/install.sh | sh; else echo "uv already installed"; fi
	uv tool install ruff
	uv tool install black
	uv tool install pre-commit
 

install-php:
	@if [ ! `which php` ]; then echo "install php"; else echo "php already installed"; fi


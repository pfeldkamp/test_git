setup-git:
	@echo "setup git for ucloud"
	git config --global user.email "you@example.com"
	git config --global user.name "Your name (UCloud)"

install-uv: # similar to pip but does more
	@echo "installs uv"
	# only works for linux and mac
	curl -LsSf https://astral.sh/uv/install.sh | sh

install-dependencies: # uv sync will get all the dependencies and recreate venv
	@echo "installing dependencies"
	uv sync

run-project:
	@echo "running the analysis"

setup-on-ucloud:
	@echo "setting up all the stuff you need in a batch"
	make install-uv
	make setup-git
	make install-dependencies
	make run-project
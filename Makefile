

# will only call once, if everything goes right.
install-once: env.sh
	./install.sh
	touch install-once

# will only call if file is not there yet ;)
env.sh:
	cp env.sh.dist env.sh

deploy: install-once
	./deploy.sh

secure: install-once
	./secure.sh
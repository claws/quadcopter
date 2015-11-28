# This makefile has been created to help developers perform common actions.

.PHONY: help clean docs

# Do not remove this block. It is used by the 'help' rule when
# constructing the help output.
# help:
# help: Makefile help
# help:


# help: help                           - display this makefile's help information
help:
	@grep "^# help\:" Makefile | grep -v grep | sed 's/\# help\: //' | sed 's/\# help\://'

# help: docs                           - generate project documentation
docs:
	@cd doc; rm -rf _build/*
	@cd doc; make html


# help: clean                          - clean transient files
clean:
	@rm -rf doc/_build/*

# Do not remove this block. It is used by the 'help' rule when
# constructing the help output.
# help:

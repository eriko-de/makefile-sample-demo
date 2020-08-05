first:
	echo "First"

second:
	echo "Second"

wrong:
	exit 1

dependent: first second
	echo "Dependent"

dependent2: first wrong
	echo "sucessful"

creates-file:
	touch creates-file
	echo "created"

creates-file-phony:
	touch creates-file-phony
	echo "created"

.PHONY: creates-file-phony

without-printing-command:
	@echo "invisible"

ARG=infile

arguments:
	echo $(ARG)

LS=(ls $(1))
ls-command:
	$(call LS, -l)

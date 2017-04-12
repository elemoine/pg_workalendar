EXTDIR=$(shell pg_config --sharedir)/extension

install:
	install -m 0644 workalendar.control $(EXTDIR)
	install -m 0644 workalendar--1.0.0.sql $(EXTDIR)

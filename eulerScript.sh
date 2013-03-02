#!/bin/bash

for i in {10..99}; do
	echo Creating folder number $i
	mkdir p$i
	touch ./p$i/p$i.rb

	# Renaming to have 3 digits
	# mv ./p$i p0$i
done

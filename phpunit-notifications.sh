phpunit (){
	COMMAND=$(echo $@ | sed -e 's/--/ /g')
	./vendor/bin/phpunit $@
	CODE=$?

	if [[ $CODE = 0 ]]; then
		MESSAGE="Tests ran succesfully (${COMMAND})"
		IMAGE="emblem-default"
	else
		MESSAGE="Tests are broken"
		IMAGE="software-update-urgent"
	fi

	notify-send "PHPUnit" "${MESSAGE}" -i $IMAGE -t 1 -u low
}
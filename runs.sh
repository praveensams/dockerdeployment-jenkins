for i in $(seq 20)
	do
	[ -d test${i} ] || mkdir test${i}
	 (
		cd test${i}
		touch sam${i}
		if [ $(($i%17)) -eq 0 ]
		then
			echo "hi" > sam${i}
		fi
	)
done

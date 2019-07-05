#!/bin/sh
#
#
########################

#++++ HELP MESSAGE +++++
usage()
{
	cat << EOF
Usage: $0 Command [Option]
commands:
command1 command2 command3

Options:
      --option|-o)
      --foo|-f)
      --bar|-b)
      --test)
      --version)

EOF
	exit "$1"
}
#-----------------------

#++++ FUNCTIONS ++++++++


func1(){
echo func1 running
}

#---- FUNCTIONS --------

#++ CHECK INPUT ++++++++
if test $# -eq 0; then
	usage 1 1>&2
fi
#-----------------------

#++ MAIN OPTIONS CASE ++
while test $# -gt 0; do
	case "$1" in
	-*=*) optarg=$(echo "$1" | sed 's/[-_a-zA-Z0-9]*=//') ;;
	*) optarg= ;;
	esac

	case "$1" in
        command1)
                func1;
                ;;
	command2)
		var_of_command2="$2";
                echo running "$1" with "$var_of_command2" arg;
		;;
	command3) 
                var_of_command3="$2";
                echo   running "$1" with "$var_of_command3" arg;
		;;
	--option|-o)
		OPTIOIN="$2"
		;;
	--test)
		test=test_msg
		;;
        --foo|-f)
                foo="$2"
                ;;
        --bar|-b)
                bar="$2"
                ;;
	--version)
		echo VERSION=9.99.999.2-3-4_x8
		exit 0
		;;
	help)
		usage 0 1>&2
	esac
	shift
done
#-----------------------

#++++ MAIN PROGRAMM ++++

echo next vars used bar=$bar= foo=$foo= test=test_msg= 
echo command vars setted var_of_command2=$var_of_command2= var_of_command3=$var_of_command3=

#-----------------------



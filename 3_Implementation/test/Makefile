#TargetName : Dependencies
#<TAB>commands

Build : project_main.c tour_manage.c test_tour_manage.c unity.c
	gcc project_main.c tour_manage.c test_tour_manage.c unity.c -o tour_manage.out 

Run : Build
	./tour_manage.out

Clean :
	rm -rf *.o *.out *.i *.s
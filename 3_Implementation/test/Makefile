#TargetName : Dependencies
#<TAB>commands

PROJ_NAME=tour_manage

#To check if the OS is Windows or Linux and set the executable file extension and delete command accordingly
ifdef OS
   RM = del /q
   FixPath = $(subst /,\,$1)
   EXEC = exe
else
   ifeq ($(shell uname), Linux)
      RM = rm -rf
      FixPath = $1
	  EXEC = out
   endif
endif

Build: project_main.c tour_manage.c unity.c
	gcc project_main.c tour_manage.c unity. -o $(call FixPath, $(PROJ_NAME).$(EXEC))

Run :  Build
	./$(call FixPath,$(PROJ_NAME).$(EXEC))

Clean :
	$(RM) $(call FixPath,$(BUILD_DIR)/*.out) 
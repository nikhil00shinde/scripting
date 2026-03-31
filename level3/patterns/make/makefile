
# default :  rule1  rule2
all : rule3 rule2 
	@ printf " All rules done! End of make.\n"

rule1 :
	@ printf " This is rule 1 \n"
	@ printf " This is the second line of rule 1 \n"
	@ echo

rule2 :
	@printf " This is rule 2 \n"
	@ printf " This is the second line of rule 2 \n"
	@echo

rule3 : rule1 #prerequisites
	@ printf " This is rule 3 \n"
	@ printf " this is the second line of rule 3 \n"
	@ echo

r0:
	@echo "Date : [ $(shell date) ]"

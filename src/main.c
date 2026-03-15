#include <stdio.h>
#include "../include/cb.h"

int main() {

	const char* str_CB_props;
	
	printf("Typie, 26T02-R1\n==========================\n");
	printf(" $ Author : Robert Henning\n $ Copyright : under MIT Licences\n $ Architecture : x86 (i386) \n\n");

	str_CB_props = func_Get_String_LibNameCLI();

	printf(" $ Lib1 : %s", str_CB_props);
		
	printf("Shh... let's not leak our hard work !\n");

	return 0;
}

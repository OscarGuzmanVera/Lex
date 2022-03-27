
%{ 
#undef input 
#undef unput 
int input(void);
unsigned verbose;
char *progName; 
%}
 
%% 
-h |
"-?" |
-help { print(usage is: %s [-help | -h | -?] [-verbose | -v]" 
	" [(-file| -f) filename]\n", progName);
	}
-v 	|
-verbose { printf("verbose mode is on\n"); verbose = 1; }
%%
char **targv; 
char **arglim;

main(int argc, char **argv) 
{
	progName = *argv;
	targv = argv+1; 
	arglim = argv+argc; 
	yylex(); 
}
static unsigned offset = 0;
int 
input(void){
	char c;

	if (targv >= arglim) 
		return(0);
	if ((c = targv[0][offset++]) != '\0') 
		return(c); 
	targv++; 
	offset =0; 
	return(' '); 

void 
unput(int ch)
{
	if(ch == 0)
		return; 
	if (offset) { 
		offset--; 
		return; 
	yargv--;
	offset = strlen(*targv);
}
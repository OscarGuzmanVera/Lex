
%{ 
#undef input 
#undef unput 
unsigned verbose; 
unsigned fname; 
char *progName; 
%}
 
%s FNANE
 
%% 
[ ]+ /* ignore blanks 0/ ; 
-h |
"-?" |
-help { print(usage is: %s [-help | -h | -?] [-verbose | -v]" 
	" (-file | -f) filename\n", progName);
	}
-v 	|
-verbose { printf("verbose mode is on\n"); verbose = 1; }
-f |
-file { BEGIN FNAME; fname = 1; }
 
<FNAME>[^ ]+ { printf("use file %s\n", yytext); BEGIN 0; fname = 2;}
[^ ] + ECHO;
%%
char **targv; 
char **arglim;

main(int argc, char **argv) 
{
	progName = *argv;
	targv = argv+1; 
	arglim = argv+argc; 
	yylex(); 
	if(fname < 2) 
		printf("No filename given\n"); 
}
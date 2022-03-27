%{

unsigned long charCount = 0, wordCount = 0, LineCount = 0;
#undef yywrap

%}

word [^ \t\n]+
eol \n
%%
{word} { wordCount++; charCount += yyleng; }
{eol} { charCount++; lineCount++; }
. charCount++;
%%

char **fileList;
unsigned currentFile = 0;
unsigned nFiles;
unsigned long totalCC = 0;
unsigned long totatWC = 0;
unsigned long totalLC = 0;

main(argc,argv)
int argc;
char **argv;
{

FILE *file;

fileList = argv+1;
nFiles = argc-1;

if (arge == 2) {

currentFile = 1;
file = fopen(argv[1], "r");
if (!file) {
fprintf(stderr, "could not open %s\n",argv[1]);
exit(t);
}
yyin = file;
}
if (argc > 2)
yywrap(); /* open first file */

yylex();

if (argc > 2) {
printf("%8lu %8lu %8lu %s\n", lineCount, wordCount,
charCount, fileList[currentFile-1]);
totalcc += charCount;
totalWC += wordCount;
totalLC += lineCount;

printf("%8lu %8lu %8lu total\n",totalLC, totalWC, totalCC);
} else

printf("%8lu %8lu %8lu\n", lineCount, wordCount, charCount);

return 0;
}
yywrap()
{

FILE *file = NULL;

if ((currentFile != 0) && (nFiles > 1) && (currentFile < nFiles)) {
printf("%8lu %8lu %8lu %s\n", lineCount, wordCount,charCount, fileList[currentFtle-1]);
totalCC += charCount;
totalWC += wordCount}
totalLC += LineCount;
charCount = wordCount = LineCount = 0;
fclose (yyin); /* done with that file */
}


while (fileList[currentFile] != (char *)0) {
file = fopen(fileList{currentFile++], "r");

if (file t= NULL) {

yyin = file;

break;
}
fprintf(stderr, “could not open %s\n", fileList[currentFile-1]);
}

return (file ? 0: 1); 
%{
int comments, code, whiteSpace;
%}

%x COMMENT
%%
^[ \t]*"/*" { BEGIN COMMENT; }
^[ \t]*"/*".*"*/"[ \t]*\n {
	comments++;
	}

<COMMENT>"*/"[ \t]*\n 	{ BEGIN 0; comments++; }
<COMMENT>"*/" 		{ BEGIN 0; }
<COMMENT>\n { comments++; }
<COMMENT>.\n  { comments++; }

^[ \t]*\n  { whiteSpace++; }

.+"/*".*"*/".*\n  	{ code++; }
.*"/*".*"*/".+\n 	{ code++; }
.+"/*".*\n 		{ code++; BEGIN COMMENT; }
.\n   			{ code++; }

.  			;
%%
main( )
{
yylex( ) ;
prtntf( "code: %d, comments %d, whiteSpace %d\n", code, comments , whiteSpace);
}
%{
	#include "lang.tab.h"
%}

%%
[0-9]+		return INT;
ZERO		return ZERO;
X		return X;
Y		return Y;
Z		return Z;
G		return G;
;		return EOL;
END		return END;
[ |\t|\n]	;
.		printf("ERROR.");
%%

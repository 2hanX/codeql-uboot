import cpp

from MacroInvocation invocation
where 
    invocation.getMacro().getName().regexpMatch("ntoh(l|ll|s)")
select invocation.getExpr()
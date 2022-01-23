import cpp

from MacroInvocation invocation, Macro m
where 
    invocation.getMacro() = m and
    m.getName().regexpMatch("ntoh(l|ll|s)")
select invocation, "Find all the invocations of ntoh* macros"
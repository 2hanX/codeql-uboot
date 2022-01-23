import cpp

from Function fcn, FunctionCall call
where 
    call.getTarget() = fcn and
    fcn.getName() = "memcpy"
select call, "find all the calls to memcpy"

import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap () {
        exists( MacroInvocation inv, Macro m | inv.getMacro() = m and
            m.getName().regexpMatch("ntoh(l|ll|s)") and
            this = inv.getExpr()
        )
    }
}

from NetworkByteSwap n
select n, "Network byte swap"
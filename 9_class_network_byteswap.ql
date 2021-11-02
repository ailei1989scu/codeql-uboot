import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation call | 
        call.getMacroName().regexpMatch("ntoh(s|l|ll)") and
        this=call.getExpr()
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"

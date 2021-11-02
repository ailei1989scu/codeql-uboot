import cpp

from MacroInvocation call, Macro mac
where
  call.getMacro() = mac and
  mac.getName().regexpMatch("ntoh(s|l|ll)")
select call.getExpr()

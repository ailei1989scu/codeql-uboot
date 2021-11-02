import cpp

from MacroInvocation call, Macro mac
where
  call.getMacro() = mac and
  (mac.hasName("ntohs") or mac.hasName("ntohl") or mac.hasName("ntohll"))
select call

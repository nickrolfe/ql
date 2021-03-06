
import python


import semmle.python.web.django.Request
import semmle.python.web.django.Model
import semmle.python.web.django.Db
import semmle.python.web.django.Response
import semmle.python.security.strings.Untrusted

from TaintSink sink, TaintKind kind
where sink.sinks(kind)
select sink.getLocation().toString(), sink.(ControlFlowNode).getNode().toString(), kind.toString()

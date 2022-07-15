xquery version "3.1";

(:~ This library module contains XQSuite tests for the drd app.
 :
 : @author lauren_liebe
 : @version 1.0.0
 : @see http://www.restorationdrama.orgrestorationdrama.org
 :)

module namespace tests = "http://www.obdurodon.org/apps/drd/tests";

import module namespace app = "http://www.obdurodon.org/apps/drd/templates" at "../../modules/app.xqm";
 
declare namespace test="http://exist-db.org/xquery/xqsuite";


declare variable $tests:map := map {1: 1};

declare
    %test:name('dummy-templating-call')
    %test:arg('n', 'div')
    %test:assertEquals("<p>Dummy templating function.</p>")
    function tests:templating-foo($n as xs:string) as node(){
        app:foo(element {$n} {}, $tests:map)
};

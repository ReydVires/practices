<jquery> := ('jQuery' | '$') 
            ['(' 
                '' |
                (<selector> [','<context>]) |
                <element> | 
                <elementArray> |
                <object> |
                <selection> |
                (<html> [','<ownerDocument>]) |
                (<html>','<attributes>) |
                <callback> |
                ('#' <elementId>)
            ')'] "." <jqueryCommand>
            
<elementId> :=  <STRING_LITERAL>
<className> := <STRING_LITERAL>

<pseudoClassSelector> := <daSeDovrshi> (* starts with ':' *)
<selector> := '*' | 
              ([<selector> | <tagName> | '*' | ''] ':animated') |
              ([<selector> | <tagName> | '*' | ''] '['<attribute>'|=' <value>']') |
              ([<selector> | <tagName> | '*' | ''] '['<attribute>'*=' <value>']') |
              ([<selector> | <tagName> | '*' | ''] '['<attribute>'~=' <value>']') |
              ([<selector> | <tagName> | '*' | ''] '['<attribute>'$=' <value>']') |
              ([<selector> | <tagName> | '*' | ''] '['<attribute>'=' <value>']')  |
              ([<selector> | <tagName> | '*' | ''] '['<attribute>'!=' <value>']') |
              ([<selector> | <tagName> | '*' | ''] '['<attribute>'^=' <value>']') |
              ':button' |
              ([<selector> | <tagName> | '*' | ''] ':checkbox') |
              ([<selector> | <tagName> | '*' | ''] ':checked') |
              (<parentSelector> '>' <childSelector>) |
              ('.'<className>) |
              ( ':contains(' <STRING_LITERAL> ')' ) |
              (<ancestorSelector> <descendantSelector>) |
              ([<selector> | <tagName> | '*' | ''] ':disabled') |
              ([<selector> | <tagName> | '*' | ''] ':empty') |
              ([<selector> | <tagName> | '*' | ''] ':enabled') |
              ([<selector> | <tagName> | '*' | ''] ':even') |
              ([<selector> | <tagName> | '*' | ''] ':file') |
              ([<selector> | <tagName> | '*' | ''] ':first-child') |
              ([<selector> | <tagName> | '*' | ''] ':first-of-type') |
              ([<selector> | <tagName> | '*' | ''] ':first') |
              ([<selector> | <tagName> | '*' | ''] ':focus') |
              ([<selector> | <tagName> | '*' | ''] ':gt(' <elementIndex> ')') |
              ([<selector> | <tagName> | '*' | ''] '[' <attributeName> ']' ) |
              ([<selector> | <tagName> | '*' | ''] ':has(' <selector> ')') |
              ':header' |
              ([<selector> | <tagName> | '*' | ''] ':hidden') |
              ':image' |
              ':input' |
              ([<selector> | <tagName> | '*' | ''] ':lang('<language>')) |
              ([<selector> | <tagName> | '*' | ''] ':last-child') |
              ([<selector> | <tagName> | '*' | ''] ':last-of-type') |
              ([<selector> | <tagName> | '*' | ''] ':last') |
              ([<selector> | <tagName> | '*' | ''] ':lt('<elementIndex>')') |
              ([<selector> | <tagName> | '*' | ''] ('['<tagName> '=' <attributeValue>']' {'['<tagName> '=' <attributeValue>']'})) |
              <selector> {<selector>} |
              """<selector> "+" <selector>""" |
              """<selector> "~" <selector>""" |
              ":not(" <selector> ")" |
              ":nth-child(" <cssElementIndex> ")" |
              ":nth-last-child(" <cssElementIndex> ")" |
              ":nth-last-of-type(" <cssElementIndex> ")" |
              ":nth-of-type(" <cssElementIndex> ")" |
              ":odd" |
              ":only-child" |
              ":only-of-type" |
              ":parent" |
              ":password" |
              ":radio" |
              ":reset" |
              ":root" |
              ":selected" |
              ":submit" |
              ":target" |
              ":text" |
              ":visible"
              
<language> := <daSeDovrshi>     
<tagName> := <daSeDovrshi>
<attributeValue> := <STRING_LITERAL> | <NUMBER_LITERAL>
<attributeName> := <STRING_LITERAL>
<sign> := ('+' | '' | '-')
<cssElementIndex> := <elementIndex> | <even> | <odd> | <equation>
<elementIndex> := <sign> <NUMBER_LITERAL>
<context> := <element> | <jquery>
<readyParameter> := <daSeDovrshi>
<args> := {<anything>}
<callbacks> := 'callbacks.' (
                    'add(' <function> | "[" {","<function>} "]" ')' |
                    'disable()' |
                    'disabled()' |
                    'empty()' |
                    'fire(' <anything> ')' |
                    'fired()' |
                    'fireWith(' [<context>] ["," <args>] ')' |
                    'has(' [<function>] ')' |
                    'lock()' |
                    'locked()' |
                    'remove(' <function> | "[" {","<function>} "]"')' |
                )
                
<deferred> := 'deferred.' (
                    'always()' |
                    'catch()' |
                    'done()' |
                    'fail()' |
                    'isRejected()' |
                    'isResolved()' |
                    'notify()' |
                    'notifyWith()' |
                    'pipe()' |
                    'progress()' |
                    'promise()' |
                    'reject()' |
                    'rejectWith()' |
                    'resolve()' |
                    'resolveWith()' |
                    'state()' |
                    'then()'
                )
                
<event> := 'event.' (
                'currentTarget' |
                'data' |
                'delegateTarget' |
                'isDefaultPrevented()' |
                'isImmediatePropagationStopped()' |
                'isPropagationStopped()' |
                'metaKey' |
                'namespace' |
                'pageX' |
                'pageY' |
                'preventDefault()' |
                'relatedTarget' |
                'result' |
                'stopImmediatePropagation()' |
                'stopPropagation()' |
                'target' |
                'timeStamp' |
                'type' |
                'which'
            )
            
<jQueryLowLevel> := 'jQuery.' (
                'ajax()' |
                'ajaxPrefilter()' |
                'ajaxSetup()' |
                'ajaxTransport()' |
                'boxModel' |
                'browser' |
                'CallBacks()' |
                'contains()' |
                'cssHooks' |
                'cssNumber' |
                'data()' |
                'Deferred()' |
                'dequeue()' |
                'each()' |
                'error()' |
                'escapeSelector()' |
                'extend()' |
                'fn.extend()' |
                'fx.interval' |
                'fx.off' |
                'get()' |
                'getJSON()' |
                'getScript()' |
                'globalEval()' |
                'grep()' |
                'hasData()' |
                'holdReady()' |
                'htmlPrefilter()' |
                'inArray()' |
                'isArray()' |
                'isEmptyObject()' |
                'isFunction()' |
                'isNumeric()' |
                'isPlainObject()' |
                'isWindow()' |
                'isXMLDoc()' |
                'makeArray()' |
                'map()' |
                'merge()' |
                'noConflict()' |
                'noop()' |
                'now()' |
                'param()' |
                'parseHTML()' |
                'parseJSON()' |
                'parseXML()' |
                'post()' |
                'proxy()' |
                'queue()' |
                'readyException()' |
                'removeData()' |
                'speed' |
                'sub()' |
                'support' |
                'trim()' |
                'type()' |
                'unique()' |
                'uniqueSort()' |
                'when()'
            )
(*
    var fName = function (<params>) {};
    function (<params>) {}
    function fName (<params>) {}
*)
<functionName> := <STRING_LITERAL>
<functionParams> := <daSeDovrshi>
<functionBody> := <daSeDovrshi>
<JavaScriptObject> := <daSeDovrshi> (* typeof === 'Object' => true *)
<returnStatement> := "return" <JavaScriptObject> ";"
<javascriptFunction> := ("var" <functionName> "(" <functionParams> ") {" <functionBody> [<returnStatement>] "};") |
                        ("function" <functionName> "(" <functionParams> ") {" <functionBody> [<returnStatement>]"};") |
                        ("function" "(" <functionParams> ") {" <functionBody> [<returnStatement>]"}")
<function> := <javascriptFunction>
<afterCommandFunction> := "function (" <INTEGER_LITERAL> ") {" <functionBody> "return" (<htmlString> | <element> | <text> | <jQuery>) "}"
<afterCommandFunctionHtml> := "function (" <INTEGER_LITERAL> "," <STRING_LITERAL> ") {" <functionBody> "return" (<htmlString> | <element> | <text> | <jQuery>) "}"
<beforeCommandFunction> :=  <afterCommandFunction>
<beforeCommandFunctionHtml> := <afterCommandFunctionHtml>
<appendCommandFunctionHtml> := <afterCommandFunctionHtml>
<functionHTML> := <daSeDovrshi>
<tagName> := <STRING_LITERAL>
<tagAttributes> := <daSeDovrshi>
<tagContents> := {[<STRING_LITERAL>] [<tagChildren>]}
<tagChildren> := [<DOMElement>] {<DOMElement>}
<DOMElement> := ("<" <tagName> <tagAttributes> ">" <tagContents> "</" <tagName> ">") | ("<" <tagName> <tagAttributes> "/>")
<element> := <DOMElement>
<text> := <STRING_LITERAL>
<JavaScriptArray> := <daSeDovrshi>
<array> := <JavaScriptArray>
<jQuery> := {<DOMElement>} (* A jQuery object contains a collection of Document Object Model (DOM) elements that have been created from an HTML string or selected from a document.  *)
<content> := <htmlString> | <element> | <text> | <array> | <jQuery>
<htmlString> := {{<STRING_LITERAL>} {""" <DOMElement> """}}
<jqXHR> := <JQueryProps> <XMLHTTPRequest> <daSeDovrshi> (* jqXHR object which is a superset of the XMLHTTPRequest object *)
<plainObject> := <JavaScriptObject>
<ajaxCompleteCommandHandler> := "function (" <event> "," <jqXHR> "," <plainObject> ") {" <functionBody> "}" 
<ajaxErrorCommandHandler> := "function (" <event> "," <jqXHR> "," <plainObject> "," <STRING_LITERAL> ") {" <functionBody> "}" 
<ajaxSendCommandHandler> := <ajaxCompleteCommandHandler>
<ajaxSuccessCommandHandler> := "function (" <event> "," <jqXHR> "," <plainObject> "," <plainObject> ") {" <functionBody> "}" 
<eventHandler> := <function>
<plainEventHandler> := "function (" <event> ") {" <functionBody> "}"
<stepFunction> := <daSeDovrshi>
<progressFunction> := <daSeDovrshi>
<completeFunction> := <daSeDovrshi>
<startFunction> := <daSeDovrshi>
<doneFunction> := <daSeDovrshi>
<failFunction> := <daSeDovrshi>
<alwaysFunction> := <daSeDovrshi>
<animateOptionsPlainObject> := "{ duration: " (<NUMBER_LITERAL> | <STRING_LITERAL>) ", easing: " <STRING_LITERAL> ", queue: " (<STRING_LITERAL> | <BOOLEAN_LITERAL>) ", specialEasing: " <plainObject> ", step: " <stepFunction> ", progress: " <progressFunction> ", complete: " <completeFunction> ", start: " <startFunction> ", done: " <doneFunction> ", fail: " <failFunction> ", always: " <alwaysFunction> "}"
<NULL_LITERAL> := "null"
<attributeCommandFunction> := "function (" <INTEGER_LITERAL> "," <STRING_LITERAL> ") {" <functionBody> "return " (<STRING_LITERAL> | <NUMBER_LITERAL>) "}"
<anything> := <ANY_TYPE_LITERAL>
<jqueryCommand> :=  'noConflict()' |
                    'ready(' <readyParameter> ')' |
                    'add('<selector> | (<element> {<element>}) | <html> | <selection> | (<selector> <element>)')' | 
                    'addBack('[<selector>]')' |
                    'addClass('<className> | <function>')' |
                    'after(' (<content> {"," <content>}) | <afterCommandFunction> | <afterCommandFunctionHtml> ')' |
                    'ajaxComplete(' <ajaxCompleteCommandHandler> ')' |
                    'ajaxError(' <ajaxErrorCommandHandler> ')' |
                    'ajaxSend(' <ajaxSendCommandHandler> ')' |
                    'ajaxStart(' <eventHandler> ')' |
                    'ajaxStop(' <eventHandler> ')' |
                    'ajaxSuccess(' <ajaxSuccessCommandHandler> ')' |
                    'andSelf()' | (* Deprecated, alias for addBack() *)
                    'animate('(<plainObject> ["," <NUMBER_LITERAL> | <STRING_LITERAL>]["," <STRING_LITERAL>]["," <function>]) |
                            (<plainObject> "," <animateOptionsPlainObject>)')' |
                    'append('(<content> {"," <content>}) | <appendCommandFunctionHtml>')' |
                    'appendTo(' <selector> | <htmlString> | <element> | <array> | <jQuery> ')' |
                    'attr(' <attributeName> | (<attributeName> "," (<STRING_LITERAL> | <NUMBER_LITERAL> | <NULL_LITERAL>)) | <plainObject> | (<attributeName> "," <attributeCommandFunction>) ')' |
                    'before(' (<content> {"," <content>}) | <beforeCommandFunction> | <beforeCommandFunctionHtml> ')' |
                    'bind(' (<STRING_LITERAL> ["," <anything>]["," <plainEventHandler>]) |
                            (<STRING_LITERAL> ["," <anything>]["," <BOOLEAN_LITERAL>]) |
                            <OBJECT_LITERAL> ')' |
                    'blur(' [([<anything> ","] <plainEventHandler>)] ')' |
                    <callbacks> |
                    'change(' [([<anything> ","] <plainEventHandler>)] ')' |
                    'children(' [<selector>] ')' |
                    'clearQueue(' [<STRING_LITERAL>] ')' |
                    'click(' [([<anything> ","] <plainEventHandler>)] ')' |
                    'clone(' [<BOOLEAN_LITERAL>]["," <BOOLEAN_LITERAL>] ')' |
                    'closest(' <selector> ["," <element>] | <jQuery> | <element>')' |
                    'contents()' |
                    'context' (* Deprecated, the value of this property is typically equal to document *) |
                    'contextmenu(' [([<anything> ","] <plainEventHandler>)] ')' |
                    'css(' (<STRING_LITERAL> "," (<STRING_LITERAL> | <NUMBER_LITERAL>)) |
                        (<STRING_LITERAL> "," ("function (" <INTEGER_LITERAL> "," <STRING_LITERAL> ") {" <functionBody> "return" (<STRING_LITERAL> | <NUMBER_LITERAL>) "}" )) |
                        <plainObject>')' |
                    'data(' [(<STRING_LITERAL> ["," <anything>]) | <OBJECT_LITERAL>] ')' |
                    'dblclick(' [([<anything> ","] <plainEventHandler>)] ')' |
                    <deferred> |
                    'delay()' |
                    'delegate()' |
                    'dequeue()' |
                    'detach()' |
                    'die()' |
                    'each()' |
                    'empty()' |
                    'end()' |
                    'eq()' |
                    'error()' |
                    <event> |
                    'fadeIn()' |
                    'fadeOut()' |
                    'fadeTo()' |
                    'fadeToggle()' |
                    'filter()' |
                    'find()' |
                    'finish()' |
                    'first()' |
                    'focus()' |
                    'focusin()' |
                    'focusout()' |
                    'get()' |
                    'has()' |
                    'hasClass()' |
                    'height()' |
                    'hide()' |
                    'hover()' |
                    'html()' |
                    'index()' |
                    'innerHeight()' |
                    'innerWidth()' |
                    'insertAfter()' |
                    'insertBefore()' |
                    'is()' |
                    'jQuery()' |
                    'jquery' |
                    <jQueryLowLevel> |
                    'keydown()' |
                    'keypress()' |
                    'keyup()' |
                    'last()' |
                    'length' |
                    'live()' |
                    'load()' |
                    'load()' |
                    'map()' |
                    'mousedown()' |
                    'mouseenter()' |
                    'mouseleave()' |
                    'mousemove()' |
                    'mouseout()' |
                    'mouseover()' |
                    'mouseup()' |
                    'next()' |
                    'nextAll()' |
                    'nextUntil()' |
                    'not()' |
                    'off()' |
                    'offset()' |
                    'offsetParent()' |
                    'on()' |
                    'net()' |
                    'outerHeight()' |
                    'outerWidth()' |
                    'parent()' |
                    'parents()' |
                    'parentsUntil()' |
                    'position()' |
                    'prepend()' |
                    'prependTo()' |
                    'prev()' |
                    'prevAll()' |
                    'prevUnitl()' |
                    'promise()' |
                    'prop()' |
                    'pushStack()' |
                    'queue()' |
                    'ready()' |
                    'remove()' |
                    'removeAttr()' |
                    'removeClass()' |
                    'removeData()' |
                    'removeProp()' |
                    'replaceAll()' |
                    'replaceWith()' |
                    'resize()' |
                    'scroll()' |
                    'scrollLeft()' |
                    'scrollTop()' |
                    'select()' |
                    'selector' |
                    'serialize()' |
                    'serializeArray()' |
                    'show()' |
                    'siblings()' |
                    'size()' |
                    'slice()' |
                    'slideDown()' |
                    'slideToggle()' |
                    'slideUp()' |
                    'stop()' |
                    'submit()' |
                    'text()' |
                    'toArray()' |
                    'toggle()' |
                    'toggle()' |
                    'toggleClass()' |
                    'trigger()' |
                    'triggerHandler()' |
                    'unbind()' |
                    'undelegate()' |
                    'unload()' |
                    'unwrap()' |
                    'val()' |
                    'width()' |
                    'wrap()' |
                    'wrapAll()' |
                    'wrapInner()'
                    
                    

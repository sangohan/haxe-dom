/****
* Copyright (C) 2013 Sam MacPherson
* 
* Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
* 
* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
* 
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
****/

package hxdom.html;

#if (js && !use_vdom)
typedef ScriptElement = js.html.ScriptElement;
#else
class ScriptElement extends Element {
	
	/** Set this Boolean attribute to indicate that the browser should, if possible, execute the script asynchronously. It has no effect on inline scripts (i.e., scripts that don't have the <strong>src</strong> attribute). In older browsers that don't support the <strong>async</strong> attribute, parser-inserted scripts block the parser; script-inserted scripts execute asynchronously in IE and WebKit, but synchronously in Opera and pre-4.0 Firefox. In Firefox 4.0, the <code>async</code> DOM&nbsp;property defaults to <code>true</code> for script-created scripts, so the default behavior matches the behavior of IE&nbsp;and WebKit. To request script-inserted external scripts be executed in the insertion order in browsers where the <code>document.createElement("script").async</code> evaluates to <code>true</code> (such as Firefox 4.0), set <code>.async=false</code> on the scripts you want to maintain order. Never call <code>document.write()</code> from an <code>async</code> script. In Gecko 1.9.2, calling <code>document.write()</code> has an unpredictable effect. In Gecko 2.0, calling <code>document.write()</code> from an <code>async</code> script has no effect (other than printing a warning to the error console). */
	public var async:Bool;

	public var charset:String;

	public var crossOrigin:String;

	/** This Boolean attribute is set to indicate to a browser that the script is meant to be executed after the document has been parsed. Since this feature hasn't yet been implemented by all other major browsers, authors should not assume that the script’s execution will actually be deferred. Never call <code>document.write()</code> from a <code>defer</code> script (since Gecko 1.9.2, this will blow away the document). The <code>defer</code> attribute shouldn't be used on scripts that don't have the <code>src</code> attribute. Since Gecko 1.9.2, the <code>defer</code> attribute is ignored on scripts that don't have the <code>src</code> attribute. However, in Gecko 1.9.1 even inline scripts are deferred if the <code>defer</code> attribute is set. */
	public var defer:Bool;

	public var event:String;

	public var htmlFor:String;

	/** This attribute specifies the <abbr>URI</abbr> of an external script; this can be used as an alternative to embedding a script directly within a document. <code>script</code> elements with an <code>src</code> attribute specified should not have a script embedded within its tags. */
	public var src:String;

	public var text:String;

	/** This attribute identifies the scripting language of code embedded within a <code>script</code> element or referenced via the element’s <code>src</code> attribute. This is specified as a <abbr title="Multi-purpose Internet Mail Extensions">MIME</abbr> type; examples of supported <abbr title="Multi-purpose Internet Mail Extensions">MIME</abbr> types include <code>text/javascript</code>, <code>text/ecmascript</code>, <code>application/javascript</code>, and <code>application/ecmascript</code>. If this attribute is absent, the script is treated as JavaScript. */
	public var type:String;
	
}
#end
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
typedef Float32Array = js.html.Float32Array;
#else
class Float32Array extends ArrayBufferView implements ArrayAccess<Float> {
	
	/** The size, in bytes, of each array element. */
	public static inline var BYTES_PER_ELEMENT:Int = 4;

	/** The number of entries in the array. <strong>Read only.</strong> */
	public var length(default, null):Int;

	/** <div class="note"><strong>Note:</strong> In these methods, <code><em>TypedArray</em></code> represents any of the <a title="en/JavaScript typed arrays/ArrayBufferView#Typed array subclasses" rel="internal" href="https://developer.mozilla.org/en/JavaScript_typed_arrays/ArrayBufferView#Typed_array_subclasses">typed array object types</a>.</div>
<table class="standard-table"> <tbody> <tr> <td><code>Float32Array <a title="en/JavaScript typed arrays/Float32Array#Float32Array()" rel="internal" href="https://developer.mozilla.org/en/JavaScript_typed_arrays/Float32Array#Float32Array()">Float32Array</a>(unsigned long length);<br> </code></td> </tr> <tr> <td><code>Float32Array </code><code><a title="en/JavaScript typed arrays/Float32Array#Float32Array()" rel="internal" href="https://developer.mozilla.org/en/JavaScript_typed_arrays/Float32Array#Float32Array%28%29">Float32Array</a></code><code>(<em>TypedArray</em> array);<br> </code></td> </tr> <tr> <td><code>Float32Array </code><code><a title="en/JavaScript typed arrays/Float32Array#Float32Array()" rel="internal" href="https://developer.mozilla.org/en/JavaScript_typed_arrays/Float32Array#Float32Array%28%29">Float32Array</a></code><code>(sequence&lt;type&gt; array);<br> </code></td> </tr> <tr> <td><code>Float32Array </code><code><a title="en/JavaScript typed arrays/Float32Array#Float32Array()" rel="internal" href="https://developer.mozilla.org/en/JavaScript_typed_arrays/Float32Array#Float32Array%28%29">Float32Array</a></code><code>(ArrayBuffer buffer, optional unsigned long byteOffset, optional unsigned long length);<br> </code></td> </tr> </tbody>
</table><p>Returns a new <code>Float32Array</code> object.</p>
<pre>Float32Array Float32Array(
&nbsp; unsigned long length
);

Float32Array Float32Array(
&nbsp; <em>TypedArray</em> array
);

Float32Array Float32Array(
&nbsp; sequence&lt;type&gt; array
);

Float32Array Float32Array(
&nbsp; ArrayBuffer buffer,
&nbsp; optional unsigned long byteOffset,
&nbsp; optional unsigned long length
);
</pre>
<div id="section_7"><span id="Parameters"></span><h6 class="editable">Parameters</h6>
<dl> <dt><code>length</code></dt> <dd>The number of elements in the byte array. If unspecified, length of the array view will match the buffer's length.</dd> <dt><code>array</code></dt> <dd>An object of any of the typed array types (such as <span>Uint8</span><code>Array</code>), or a sequence of objects of a particular type, to copy into a new <a title="en/JavaScript typed arrays/ArrayBuffer" rel="internal" href="https://developer.mozilla.org/en/JavaScript_typed_arrays/ArrayBuffer"><code>ArrayBuffer</code></a>. Each value in the source array is converted to a 32-bit floating point number before being copied into the new array.</dd> <dt><code>buffer</code></dt> <dd>An existing <a title="en/JavaScript typed arrays/ArrayBuffer" rel="internal" href="https://developer.mozilla.org/en/JavaScript_typed_arrays/ArrayBuffer"><code>ArrayBuffer</code></a> to use as the storage for the new <code>Float32Array</code> object.</dd> <dt><code>byteOffset<br> </code></dt> <dd>The offset, in bytes, to the first byte in the specified buffer for the new view to reference. If not specified, the <code>Float32Array</code>'s view of the buffer will start with the first byte.</dd>
</dl>
</div><div id="section_8"><span id="Return_value"></span><h6 class="editable">Return value</h6>
<p>A new <code>Float32Array</code> object representing the specified data buffer.</p>
</div> */
	@:overload( function( length : Int ) : Void {} )
	@:overload( function( array : Array<Float> ) : Void {} )
	@:overload( function( array : Float32Array ) : Void {} )
	public function new ( buffer : ArrayBuffer, ?byteOffset : Int, ?length : Int ) {
		
	}

	/** <p>Sets multiple values in the typed array, reading input values from a specified array.</p>

<div id="section_13"><span id="Parameters_2"></span><h6 class="editable">Parameters</h6>
<dl> <dt><code>array</code></dt> <dd>An array from which to copy values. All values from the source array are copied into the target array, unless the length of the source array plus the offset exceeds the length of the target array, in which case an exception is thrown. If the source array is a typed array, the two arrays may share the same underlying <code><a title="en/JavaScript typed arrays/ArrayBuffer" rel="internal" href="https://developer.mozilla.org/en/JavaScript_typed_arrays/ArrayBuffer">ArrayBuffer</a></code>; the browser will intelligently copy the source range of the buffer to the destination range.</dd> <dt>offset 
<span title="">Optional</span>
</dt> <dd>The offset into the target array at which to begin writing values from the source <code>array</code>. If you omit this value, 0 is assumed (that is, the source <code>array</code> will overwrite values in the target array starting at index 0).</dd>
</dl>
</div> */
	@:overload( function() :Void {} )
	@:overload( function( array : Float32Array, ?offset : Int ) :Void {} )
	public function set( array : Array<Int>, ?offset : Int ) : Void {
		
	}

	public function subarray( start : Int, ?end : Int ) : Float32Array {
		return null;
	}
	
}
#end
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
typedef TrackElement = js.html.TrackElement;
#else
class TrackElement extends Element {
	
	public static inline var ERROR:Int = 3;

	public static inline var LOADED:Int = 2;

	public static inline var LOADING:Int = 1;

	public static inline var NONE:Int = 0;

	/** This attribute indicates that the track should be enabled unless the user's preferences indicate that another track is more appropriate. This may only be used on one <code>track</code> element per media element. */
	public var default_(get,set):Bool;
	private inline function get_default_():Bool {
		return untyped this["default"];
	}
	private inline function set_default_(x:Bool):Bool {
		return untyped this["default"] = x;
	}

	/** Kind of text track. The following keywords are allowed: <ul> <li>subtitles: A transcription or translation of the dialogue.</li> <li>captions: A transcription or translation of the dialogue or other sound effects. Suitable for users who are deaf or when the sound is muted.</li> <li>descriptions: Textual descriptions of the video content. Suitable for users who are blind.</li> <li>chapters: Chapter titles, intended to be used when the user is navigating the media resource.</li> <li>metadata: Tracks used by script. Not visible to the user.</li> </ul> */
	public var kind:String;

	/** A user-readable title of the text track Used by the browser when listing available text tracks. */
	public var label:String;

	public var readyState(default, null):Int;

	/** Address of the track. Must be a valid URL. This attribute must be defined. */
	public var src:String;

	/** Language of the track text data. */
	public var srclang:String;

	public var track(default, null):TextTrack;
	
}
#end
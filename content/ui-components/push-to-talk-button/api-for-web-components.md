### Attributes

- `appid` - Speechly App id to connect to.
- `projectid` - Optional Speechly Project id to connect to. Allows changing App id on the fly within the same project.
- `poweron` - Optional string "true" | "false". Shows poweron state. If false, recording can immediately start but will first press will cause a system permission prompt. Default: "false"
- `capturekey` - Optional string (of length 1). Defines a keyboard hotkey that with control listening on/off. Default: undefined. Recommendation: Space (" ")
- `size` - Optional string (CSS). Defines the button frame width and height. Default: "6rem"
- `hide` - Optional "false" | "true". Default: "false"
- `placement` - Optional "bottom" turns on internal placement without [PushToTalkContainer](https://unpkg.com/@speechly/browser-ui/core/speechly-ui.css) CSS class
- `voffset` - Optional CSS string. Vertical distance from viewport edge. Only effective when using placement.
- `intro` - Optional string containing a short usage introduction. Displayed when the component is first displayed. Default: "Push to talk". Set to "" to disable.
- `hint` - Optional string containing a short usage hint. Displayed on a short tap. Default: "Push to talk". Set to "" to disable.
- `fontsize` - Optional CSS string for hint text. Default: "1.2rem"
- `showtime` - Optional time in milliseconds. Visibility duration for intro and hint callouts. Default: "5000" (ms)
- `taptotalktime` - Optional time in milliseconds to listen after tap. Set to 0 to disable tap-to-talk. Default: "8000" (ms)
- `silencetohanguptime` - Optional milliseconds of silence to listen before hangup. Only used in tap-to-talk mode. Default: "1000" (ms)
- `textcolor` - Optional string (CSS color) for hint text. Default: "#ffffff"
- `backgroundcolor` - Optional string (CSS color) for hint text background. Default: "#202020"
- `gradientstop1` - Optional string (CSS color). Default: "#15e8b5"
- `gradientstop2` - Optional string (CSS color). Default: "#4fa1f9"
- `loginurl` - Optional alternative url to use for Speechly login.
- `apiurl` - Optional alternative url for Speechly API.

### Events emitted

- `holdstart` - CustomEvent triggered upon hold start
- `holdend` - CustomEvent triggered upon hold end. event.detail.timeMs contains hold time in ms.
- `speechsegment` - CustomEvent triggered when speech-to-text segment changes. Segment available as the event.details property.
- `starting` - CustomEvent triggered on initialization start
- `initialized` - CustomEvent triggered on initialization end. details: {success: true | false, appId: string, status: "Ready" | "Failed" | "NoBrowserSupport" | "NoAudioConsent"}
- `startcontext` - CustomEvent triggered on just before starting listening. Allows changing `appid` to redirect audio to an alternative voice configuration.
- `stopcontext` - CustomEvent triggered on just after stopping listening.

### Window messages sent (postMessage)

- `{type: "speechsegment", segment: Segment}` - Broadcasts new segment when an update is available
- `{type: "speechstate", state: ClientState}` - Broadcasts state changes. Refer to browser-client documentation for values.
- `{type: "holdstart"}` - Broadcasted upon hold start
- `{type: "holdend"}` - Broadcasted upon hold end
- `{type: "initialized", success: true | false, appId: string, status: "Ready" | "Failed" | "NoBrowserSupport" | "NoAudioConsent"}` - Broadcasted on initialization end.
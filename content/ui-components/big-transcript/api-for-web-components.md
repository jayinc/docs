### Attributes

- `placement` - Optional "top" turns on internal placement without [BigTranscriptContainer](https://unpkg.com/@speechly/browser-ui/core/speechly-ui.css) CSS class
- `hoffset` - Optional CSS string. Horizontal distance from viewport edge. Only effective when using placement.
- `voffset` - Optional CSS string. Vertical distance from viewport edge. Only effective when using placement.
- `fontsize` - Optional CSS string for text size. Default: "1.5rem"
- `color` - Optional string (CSS color) for text. Default: "#ffffff"
- `highlightcolor` - Optional string (CSS color) for entity highlighting, vu meter and acknowledged icon. Default: "#15e8b5"
- `backgroundcolor` - Optional string (CSS color) for hint text background. "none" for no background. Default: "#202020"
- `marginbottom` - Optional string (CSS dimension). Dynamic margin added when element is visible. Default: "0rem"
- `formattext` - Optional "true" | "false". If true, transcript is formatted with detected entities, e.g. numbers. Default: "true"
- `demomode` - Optional "true" | "false". If true, transitions are slowed down for better readablility. Default: "false"

### Properties

- `speechsegment(segment: Segment)` - Function. Call whenever a new segment update is available
- `speechstate(state: ClientState)` - Function. Call whenever ClientState changes. Needed to show/hide element.
- `speechhandled(success: boolean)` - Function. Optionally call on segment.isFinal to show confirmation that speech was processed. An indication will be shown with big-transcript.

### Events emitted

- `visibilitychanged` - Called when visibility changes

### Window messages listened

- `{type: "speechsegment", segment: Segment}` - Required. Updates transcript content in component. This message is automatically emitted by push-to-talk-button.
- `{type: "speechstate", state: ClientState}` - Required. Needed to show/hide element. This message is automatically emitted by push-to-talk-button.
- `{type: "speechhandled", success: boolean}` - Optional. Shows an indication to the user that the voice command was successfully understood by the app. Use window.postMessage to send it on segment.isFinal.
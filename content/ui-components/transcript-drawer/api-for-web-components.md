### Attributes

- `hint` - Hint text to be shown when the app is listening for speech. Hint is hidden upon user speech is received. String or a JSON.stringify'ed string array, e.g. `hint='["Try: 1st hint", "Try: 2nd hint"]'`. Pay attention to use double quotes in JSON. If an array is provided, the next tip is automatically shown after an utterance. After all tips are shown, they will be shown again in random order. Default: ""
- `height` - Optional minimum height as CSS string. Default: "8rem"
- `color` - Optional string (CSS color) for text. Default: "#ffffff"
- `smalltextcolor` - Optional string (CSS color) for hint text. Default: "#ffffff70"
- `highlightcolor` - Optional string (CSS color) for entity highlighting, vu meter and acknowledged icon. Default: "#15e8b5"
- `backgroundcolor` - Optional string (CSS color) for hint text background. Default: "#202020"
- `fontsize` - Optional CSS string for text size. Default: "1.5rem"
- `hintfontsize` - Optional CSS string for hint text size. Default: "0.9rem"
- `formattext` - Optional "true" | "false". If true, transcript is formatted with detected entities, e.g. numbers. Default: "true"
- `demomode` - Optional "true" | "false". If true, transitions are slowed down for better readablility. Default: "false"

### Properties

- `speechsegment(segment: Segment)` - Function. Call whenever a new segment update is available
- `speechstate(state: ClientState)` - Function. Call whenever ClientState changes. Needed to show/hide element.
- `speechhandled(success: boolean)` - Function. Optionally call on segment.isFinal to show confirmation that speech was processed. An indication will be shown with big-transcript.
- `sethint(message: string)` - Optionally update hint text.

### Window messages listened

- `{type: "speechsegment", segment: Segment}` - Expects an update whenever a new segment update is available. This is usually sent by push-to-talk-button
- `{type: "speechstate", state: ClientState}` - Needed to show/hide element
- `{type: "speechhandled", success: boolean}` - Optionally send a confirmation on segment.isFinal that speech was processed. An indication will be shown with big-transcript.
- `{type: "hint", hint: text}` - Optionally update hint text.
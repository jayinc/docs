Name | Type | Description |
------ | ------ | ------ |
`backgroundColor?` | undefined \| string | Optional string (CSS color) for hint text background. Default: "#202020" |
`captureKey?` | undefined \| string | Keyboard key to use for controlling the button. Passing e.g. ` ` (a spacebar) will mean that holding down the spacebar key will key the button pressed. |
`fontSize?` | undefined \| string | Optional CSS string for hint text. Default: "1.2rem" |
`gradientStops?` | string[] | Colours of the gradient around the button. Valid input is an array of two hex colour codes, e.g. `['#fff', '#000']`. |
`hide?` | undefined \| false \| true | Optional boolean. Default: false |
`hint?` | undefined \| string | Optional string containing a short usage hint. Displayed on a short tap. Default: "Push to talk". Set to "" to disable. |
`intro?` | undefined \| string | Optional string containing a short usage introduction. Displayed when the component is first displayed. Default: "Push to talk". Set to "" to disable. |
`powerOn?` | undefined \| false \| true | Optional boolean. Shows poweron state. If false, recording can immediately start but will first press will cause a system permission prompt. Default: false |
`showTime?` | undefined \| number | Optional number in ms. Visibility duration for intro and hint callouts. Default: "5000" (ms) |
`size?` | undefined \| string | The size of the button, as CSS (e.g. `5rem`). |
`textColor?` | undefined \| string | Optional string (CSS color) for hint text. Default: "#ffffff" |

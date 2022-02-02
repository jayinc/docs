| Name | Type | Description |
| :------ | :------ | :------ |
| `label` | `string` | The label displayed on the component. For speech use, the label should match the keywords in the phrase used to control the widget: e.g. component with label "Passengers" should be configured to react to phrases like "3 passegers" |
| `setOnEntityType` | `string` | `string` (entity type) sets (checks) this widget if a matched entity type is found in the SpeechSegment. |
| `value?` | `boolean` | The current value. Specifying the value controls the components's state so it makes sense to provide an onChange handler. |
| `defaultValue?` | `boolean` | Initial checked state. Has no effect if `value` is specified. |
| `intent?` | `string` | `string` (intent) filters out all but the specified intent. `undefined` sets on any intent. |
| `clearIntent?` | `string` | `string` (intent) forces clearing values both on `setOnEntityType` and `clearOnEntityType`. |
| `clearOnEntityType?` | `string` | `string` (entity type) clears (unchecks) this widget if a matched entity type is found in the SpeechSegment. |
| `onChange?` | `(value: boolean) => void` | - |

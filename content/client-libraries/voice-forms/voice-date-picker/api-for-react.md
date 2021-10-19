| Name | Type | Description |
| :------ | :------ | :------ |
| `changeOnEntityType` | `string` | Specifies how this component reacts to entity types in SpeechSegments. Undefined value reacts to any entity type. Array of strings (entity types), one for each option, enables changing this widget's value to the option matching entity type. |
| `changeOnIntent?` | `string` | Specifies how this component reacts to intents in SpeechSegments. Undefined value reacts to any intent. String value (intent name) reacts to the single specified intent, e.g. "book" |
| `defaultValue?` | `Date` | Initially selected option. Has no effect if `value` is specified. |
| `label` | `string` | The label displayed on the component. For speech use, the label should match the keywords in the phrase used to control the widget: e.g. component with label "Passengers" should be configured to react to phrases like "3 passegers" |
| `value?` | `Date` | The current value. Specifying the value controls the components's state so it makes sense to provide an onChange handler. |
| `onChange?` | (`value`: `Date`) => `void` | - |

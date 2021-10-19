| Name | Type | Description |
| :------ | :------ | :------ |
| `changeOnEntityType?` | `string` \| `string`[] | `string[]` (entity types) changes this widget's option if a matched entity type is found in the SpeechSegment. The order must match that of `options`. `string` (intent) filters out all but the specified entity type. Use `changeOnEntityValue` to change the option. `undefined` disables entity type filtering. |
| `changeOnEntityValue?` | `string`[] | `string[]` (entity values) changes this widget's option if a matched entity value is found in the SpeechSegment. The order must match that of `options`. |
| `changeOnIntent?` | `string` \| `string`[] | `string[]` (intents) changes this widget's option based on the intent of the SpeechSegment. The order must match that of `options`. `string` (intent) filters out all but the specified intents. Use `changeOnEntityType` or `changeOnEntityValue` to change the option. `undefined` disables intent filtering. |
| `defaultValue?` | `string` | Initially selected option. Has no effect if `value` is specified. |
| `displayNames?` | `string`[] | Human-fiendly display names for each option. |
| `options` | `string`[] | Options presented by this widget. The selected option is returned by `onChange`. |
| `value?` | `string` | The current option. Must match a `options` value. Provide an `onChange` handler to react to changes. |
| `onChange?` | (`value`: `string`) => `void` | - |

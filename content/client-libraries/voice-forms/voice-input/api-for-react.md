| Name | Type | Description |
| :------ | :------ | :------ |
| `label` | `string` | The label displayed on the component. For speech use, the label should match the keywords in the phrase used to control the widget: e.g. component with label "Passengers" should be configured to react to phrases like "3 passegers" |
| `changeOnEntityType` | `string` | `string` (entity type) specifies the entity type that changes this component's value. The new value will be the entity's value. |
| `value?` | `string` | The current value. Specifying the value controls the components's state so it makes sense to provide an onChange handler. |
| `defaultValue?` | `string` | Initial value. Has no effect if `value` is specified. |
| `changeOnIntent?` | `string` | `string` (intent) filters out all but the specified intent. `undefined` disables intent filtering. |
| `onChange?` | (`value`: `string`) => `void` | - |

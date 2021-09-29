---
title: Customer Contact Form Example
description: Identifies contact details from the users utterances for easy form filling.
weight: 4
---
# Basic information
This configuration demonstrates how to implement a simple contact form that can be filled by using voice.

It defines five entities (`name`, `street_address`, `email_address`, `phone_number` and `dob`), that are all implemented using our [standard variables](/slu-examples/standard-variables/). The idea is to map each of these entities to a different field in a form. The [Codepen example](https://codepen.io/aukkonen/pen/gORjbBp?editors=1010) related to this configuration does this simply by using the name of the entity as the identifier of the form component, to which the entity value is written.

The configuration supports utterances such as
- *"my name is sherlock holmes"*
- *"email sherlock at gmail dot com"*
- *"i live at one twenty two baker street and my date of birth is sixth of january eighteen fifty four"*

# Complete SAL sources
Things to note:
1. The entities must be assigned a correct [Entity Data Type](/slu-examples/postprocessing), otherwise the Speechly API just returns everything as a string that verbatim captures what the user said. If you open this example configuration on the Dashboard, the entities are already assigned their correct types.
2. All example phrases are collected in a list called `phrases`. The last line, `$phrases {{and} $phrases}` defines that a single utterance can consist of up to two of these phrases spoken one after the other. (Optionally with the word "and" in between.)
```
phrases = [
  *fill [{[my | the]} name {is} | i'm | i am] $SPEECHLY.PERSON_NAME(name)
  *fill [{[my | the]} address {is} | i live at] $SPEECHLY.STREET_ADDRESS(street_address)
  *fill {[my | the]} email {is} $SPEECHLY.EMAIL_ADDRESS(email_address)
  *fill {[my | the]} phone {number} {is} $SPEECHLY.PHONE_NUMBER(phone_number)
  *fill [{[my | the]} [birthday | date of birth] {is} | i was born on {the}] $SPEECHLY.DATE(dob)
]

$phrases {{and} $phrases}
```

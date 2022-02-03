---
title: Contact Form
description: Identifies contact details from the users utterances for easy form filling.
weight: 3
category: "User guide"
menu:
  sidebar:
    parent: "Speechly Examples"
---

# Basic information

This configuration demonstrates how to implement a simple contact form that can be filled by using voice.

It defines five entities (`name`, `street_address`, `email_address`, `phone_number` and `dob`) that are all implemented using our [standard variables](/slu-examples/standard-variables/). The idea is to assign each of these entities to a different field in a form. The [CodePen demo](#try-it-yourself) related to this configuration does this simply by using the name of the entity as the identifier of the form component, to which the entity value is written.

The configuration supports utterances such as
- *my name is sherlock holmes*
- *email sherlock at gmail dot com*
- *i live at one twenty two baker street and my date of birth is sixth of january eighteen fifty four*

# Complete SAL sources

Things to note:

1. The entities must be assigned a correct [Entity Data Type](/slu-examples/postprocessing), otherwise the Speechly API returns the entity value as a string that verbatim contains what the user said. If you create a new application using this example configuration on the Dashboard, the entities are already assigned their correct types.
1. All example phrases are collected in a list called `phrases`. The last line, `$phrases {{and} $phrases}` defines that a single utterance can consist of up to two of these phrases spoken one after the other. (Optionally with the word "and" in between.)

```bash
phrases = [
  *fill [{[my | the]} name {is} | i'm | i am] $SPEECHLY.PERSON_NAME(name)
  *fill [{[my | the]} address {is} | i live at] $SPEECHLY.STREET_ADDRESS(street_address)
  *fill {[my | the]} email {is} $SPEECHLY.EMAIL_ADDRESS(email_address)
  *fill {[my | the]} phone {number} {is} $SPEECHLY.PHONE_NUMBER(phone_number)
  *fill [{[my | the]} [birthday | date of birth] {is} | i was born on {the}] $SPEECHLY.DATE(dob)
]

$phrases {{and} $phrases}
```

# Try it yourself

1. Log-in to the Speechly [Dashboard](https://api.speechly.com/dashboard)
1. Create a new application and select the "Contact Form" template
1. Click "Deploy" adn wait for the deployment to finish (the status indicator turns green)
1. Copy the `App ID` from the header
1. Run it locally or try it in CodePen

## Run it locally

https://github.com/speechly/speechly/tree/main/templates/contact-form

```bash
npx degit speechly/speechly/templates/contact-form my-app
cd my-app
// Add your App ID into index.js
npm install
npm start
```

## Try it in CodePen

Paste `App ID` into the CodePen

https://codepen.io/aukkonen/pen/gORjbBp?editors=1010
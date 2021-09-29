---
title: Ecommerce Voice FAQ Example
description: Maps users questions to a number of intents that can be used to trigger different front-end actions.
weight: 4
---
# Basic information
This configuration demonstrates voice activated navigation shortcuts to different parts of a website. For example, the user utterance *"what is your return policy"* triggers the intent `return_plicy`, which can be used to redirect the user to a relevant page.

There are seven intents in total, these are:

| Intent name | Example phrases |
| ----------- | --------------- |
| `hello`     | *"hello"*, *"hi"* |
| `about_us`  | *"who are you"*, *"tell me about yourself"* |
| `opening_hours` | *"what are your opening hours"*, *"is shop open on sunday"* |
| `contact_info` | *"how can i be in touch with you"*, *"what is your address"* |
| `shipping_info` | *"shipping information"*, *"do you deliver overseas"* |
| `return_policy` | *"how can i return items"*, *"what's your return policy"* |
| `payment_options` | *"how can i pay"*, *"do you accept apple pay"* |

This configuration does not use any entities.

# Complete SAL sources
Things to note:
1. For each intent, the phrases that capture the intent are all grouped to the same list. For example, the `hello` intent phrases are all in the same list that is assigned to the variable `hello_phrases`.
2. The intents are all collected together to another list, called `all_intents`.
3. The last line of the configuration that says `$all_intents`, is the "entry point" for the [template expansion algorithm](/slu-examples/semantics#template-expansion). (Don't worry, this is an advanced topic that new users can safely ignore.)

Structuring your configurations like this is a good design pattern also when writing your own configurations.

(The [SAL syntax](/slu-examples/cheat-sheet/) reference is good to keep handy as well.)
```
hello_phrases = [
  hi
  hello
  greetings
  [great | nice] to meet you
  good [morning | day | afternoon | evening]
]

about_us_phrases = [
  {i want to know} [about you | who you are]
  who are you
  tell me about [yourself | you | your shop]
]

opening_hours_phrases = [
  {tell me about {[your | the]}} opening hours
  [i want to know about | what are] [your | the] opening hours
  when [is the [store | shop] | are you] open
  [is the [store | shop] | are you] open on [saturday | sunday | the weekend | next week]
]

contact_info_phrases = [
  contact [info | information]
  [what is | what's] your [{email} address | phone number | contact [info | information]]
  where are [you | the [shop | store]] located
  {i want to know} where [you are | the [shop | store] is] located
  {i want to know} how can i [be in touch with | reach] you
]

shipping_info_phrases = [
  {tell me about {your}} [delivery | shipping] [info | information]
  what are the possible [delivery | shipping] destinations
  where do you ship to
  {[i want to know about | tell me about | what are] your} [delivery | shipping] options
  [1: i want to know if | 3: do] you [deliver | ship] overseas
  [i want to know if i can | can i] order items to [overseas | other countries]
]

return_policy_phrases = [
  [what is | what's] your [return policy | policy for returning [items | products]]
  {tell me about your} [return policy | policy for returning [items | products]]
  [i want to know about | what is | what's] your [return policy | policy for returning [items | products]]
  how [do | can] i return [products | items | stuff]
  what should i do to return [products | items | stuff]
]

payment_options_phrases = [
  what are your payment [options | methods]
  tell me about [the | your] payment [options | methods]
  how can i pay
  what [payments | payments methods] do you accept
  do you [take | accept] [cash | credit cards | apple pay]
  can i pay with [cash | credit cards | a credit card | apple pay]
]

all_intents = [
  *hello $hello_phrases
  *about_us $about_us_phrases
  *opening_hours $opening_hours_phrases
  *contact_info $contact_info_phrases
  *shipping_info $shipping_info_phrases
  *return_policy $return_policy_phrases
  *payment_options $payment_options_phrases
]

$all_intents
```

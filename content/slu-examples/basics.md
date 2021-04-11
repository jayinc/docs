---
title: Configuration basics
description: Introduction to configuring a Speechly application
weight: 1
category: "User guide"
aliases: [/editing-nlu-examples/]
menu:
  sidebar:
    title: "Configuration basics"
    parent: "Configuring Your Application"
---
# What is a configuration?
A Speechly configuration consists of a number of *example utterances* that your users might be saying. They are written in a Markdown-like syntax:
```
*search show me [blue](color) [jackets](product)
```
The above example defines the user utterance *"show me blue jackets"*, assigns this to have intent `search`, and defines two entities that are named `color` and `product`, with values `blue` and `jackets`, respectively.

*You must provide example utterancs for every functionality of your voice UI.*

The intent and entities are returned to your application, and based on these your voice UI can carry out the action requested by the user. In this case the UI should update a search result view to show only blue jackets.

# What is an intent?
The intent of an utterance that indicates what the user in general wants. It is defined in the beginning of an example with the syntax `*intent_name`, i.e. the name of the intent prefixed by an asterisk. Every example utterance must have an intent assigned to it.

Intents capture the various functionalities of your voice UI. For example, a shopping application might use different intents for *searching products*, *adding products* to the cart, *removing products* from the cart, and *going to the checkout*.

# What are entities?
Entities are "local snippets of information" in an utterance that describe details relevant to the users need. An entity has a `name`, and a `value`. An utterance can contain several entities.

They are defined using the syntax `[entity name](entity value)`.

In the shopping example above, the entities are `color` and `product` that have the values `blue` and `jackets`, respectively. An entity can take different values, and your configuration should give a variety of examples of these.

# How many example utterances must I provide?
Quite a few, but this is not as tedious as you might think. Even simple Speechly configurations can be written as compact *templates* that expand into a large set of example utterances. For example, the configuration
```
product = [t shirts | hoodies | jackets | jeans | slacks | shorts | sneakers | sandals]
color = [black | white | blue | red | green | yellow | purple | brown | gray]
*search show me $color(color) $product(product)
```
declares two variables, `product` and `color`, and assigns to both a list of relevant values. The 3rd line defines a *template* that generates 72 example utterances that each have "show me" followed by a color entity and a product entity, with their values taken from the respective lists.

# How do intents and entities appear in my application?
Our spoken language understanding system extracts intents and entities from the user's speech input, and returns these to your application. When using one of our [Client Libraries](/client-libraries/), handling of intents and entities is done via our [Client API](/client-libraries/client-api-reference). The same API provides your application with a raw transcript of the users speech.



However, we provide a collection of [standard variables](/slu-examples/standard-variables/) that capture different ways to phrase many common entities, such as various types of numbers, dates, time expressions, email addresses, person names, and so on.

# What is a well-designed example utterance?
Since Speechly is a **spoken language** understanding system, it is important to use example utterances that as precisely as possible reflect how users **talk**. An example utterance is (probably) good, if it sounds natural when spoken out aloud.

Notice that how something spoken can depend on the *context*. For example, the number 16500 could be either the price of a car, or a (US) zip-code. However, it is spoken quite differently depending on the context: *"sixteen thousand five hundred"* (price) vs *"one six five zero zero"* (zip-code). A good configuration takes such contextual details into account.

# Where can I learn more about Speechly Annotation Language?
- Start by browsing the [SAL syntax summary](/slu-examples/cheat-sheet/).
- Armed with that, you can take a look at [example configurations](/slu-examples/example-configuration/) and see how they have been designed.
- Try designing your own configurations on the [Dashboard](https://api.speechly.com). Start with something simple, and then expand this little by little.
- If you want to dig deeper, there is also a longer article that describes how to design example utterances, as well as instructions on how to use [advanced SAL features](slu-examples/advanced-features/).

# Other things to remember
- Intent and entity names can only contain letters (a-z) in lower and upper case, numbers, and characters `-` and `_`.
- Our entity detection system is based on machine learning, and can often generalize to entity values that are not present in the configuration. However, entity values that explicitly appear in the example utterances are more likely to be correctly recognized.
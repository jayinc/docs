---
title: Setting up an AppId
description: Every Speechly application needs to be set up for your specific use case. 
weight: 3
category: "User guide"
aliases: [/editing-nlu-examples/]
menu:
  sidebar:
    title: "AppId Setup"
    weight: 20
---
# Quick start

Speechly AppIds can be created either using our [Dashboard](https://www.speechly.com/dashboard) or the [Command line tool](/dev-tools/command-line-client/). For beginners we recommend the Dashboard. The video on the [Getting started](/quick-start/) page shows basic usage instructions about the Dashboard.

After you have created a new application, you can find the AppId (a UUID formatted string) in the editor view below the name of the application.

To deploy the AppId, you must provide examples of utterances that your users might be saying. This is done using the Speechly Annotation Language (SAL).

<!-- These are used to train models for detecting the users *intent*, as well as zero or more *entities*. The examples are given using the Speechly Annotation Language (SAL) that has syntax similar to Markdown. -->

The example SAL code below shows how to do this for a voice filtering application similar to our [Fashion eCommerce demo](https://fashion.speechly.com/). It will identify two intents (`set_filter` and `clear`), and five entities (`brand`, `category`, `color`, `size` and `department`) from a user's utterance.

```
brand = [nike | adidas | new balance | calvin klein | river island | ralph lauren](brand)
category = [jackets | dresses | jeans | skirts | shirts | swimwear | accessories](category)
color = [red | green | blue | yellow | orange | purple | teal | aubergine | silver](color)
size = [small | medium | large | extra small | extra large | x s | s | m | l | x l](size)
department = [men | women | kids](department)

start_phrase = [show {me} | filter | search {for} | can i see | i want to see]

*set_filter {$start_phrase} {$color} $category ![by $brand | {in} size $size | for $department]
*clear [[reset | clear] {all} filters | restart | take me [back | to the [beginning | start]]]
```
To deploy the above example:
1. Create a new aplication,
2. copy-paste the above SAL code into the Dashboard editor,
3. add entities and intents in the same way as done in the [getting started video](/quick-start/), and
4. click deploy.

After the AppId has finished deploying, you can try it out on the Playground. The resulting model supports utterances such as
- *"show me red jackets in size medium"*
- *"filter jeans in size l for men"*
- *"skirts by calvin klein"*
- *"clear all filters"*


<!--
The Speechly API takes an audio stream as input, and returns a *transcript* of the users speech, together with the identified *intents* and *entities* to your application. The Speechly API uses machine learning to achieve this. However, training the machine learning models requires example utterances that are annotated with the information specific to your application.

Setting up a Speechly AppId consists of providing these example utterances. When an AppId is deployed, they are used both to adapt our speech-to-text model to the vocabulary present in the training examples, as well as to train NLU models for detecting application-specific intents and entities.
-->

# Learn more
- [Setup basics](/slu-examples/basics) introduces basic concepts of setting up Speechly applications.
- [SAL Examples](/slu-examples/example-configuration/) are useful learning material.
- [Speechly Annotation Language Syntax](/slu-examples/cheat-sheet/) explains the details of SAL syntax.
- [Speechly Annotation Language Semantics](/slu-examples/semantics) explains the details of SAL semantics.
- [Standard Variables](/slu-examples/standard-variables) are useful when your configuration must support numbers, dates, times, etc.
- [Entity Data Types](/slu-examples/postprocessing) are useful when combined with the Standard Variables to obtain entity values in a normalized format.
- [Imports and Lookups](/slu-examples/imports-and-lookups/) allow you to import external data to your configuration, and have the API return normalised entity values by using simple lookup tables.

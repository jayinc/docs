---
title: Product Filtering
description: Picks entities from the users utterance that can be used for example to adjust search filters.
weight: 2
category: "User guide"
menu:
  sidebar:
    parent: "Speechly Examples"
---


https://github.com/speechly/speechly/tree/main/templates/product-filtering

# Basic information

This configuration defines simple phrases from which the Speechly API will extract two types of entities: `brand` and `color`. These can be used in a downstream application in different ways. The [Codepen demo](#try-it-yourself) related to this example uses the entities to change the values of two drop-down UI components, one for brand, another for color. These drop-downs could be further mapped to control for example a faceted search engine.

While this may seem trivial, this same general idea underlies our [Fashion Demo](https://fashion.speechly.com). This example is just a simplified version of the configuration used there.

This demo supports utterances such as

- *brand is converse*
- *color is blue*
- *red sneakers by nike*
- *new balance in green*

# Complete SAL sources

The design of this configuration is straightforward. We define two lists, one that contains values for the `brand` entity, and another that lists different `color`s. The utterances are defined by the four templates shown below the lists.

(The [SAL syntax](/slu-examples/cheat-sheet/) reference is good to keep handy as well.)

```bash
brands = [Adidas | Air Jordan | Asics | Converse | Fear of God | New Balance | Nike | Off White | Puma | Reebok | Vans | Yeezy]
colors = [Black | Blue | Cream | Gold | Green | Orange | Pink | Purple | Red | Silver | Tan | Teal | White | Yellow]

*select {brand {is}} $brands(brand)
*select {color {is}} $colors(color)
*select $brands(brand) {in} $colors(color)
*select $colors(color) {[sneakers | shoes] by} $brands(brand)
```

# Try it yourself

1. Log-in to the Speechly [Dashboard](https://api.speechly.com/dashboard)
1. Create a new application and select the "Product Filtering" template
1. Click "Deploy" adn wait for the deployment to finish (the status indicator turns green)
1. Copy the `App ID` from the header
1. Run it locally or try it in CodePen

## Run it locally

https://github.com/speechly/speechly/tree/main/templates/product-filtering

```bash
npx degit speechly/speechly/templates/product-filtering my-app
cd my-app
// Add your App ID into index.js
npm install
npm start
```

## Try it in CodePen

Paste `App ID` into the CodePen

https://codepen.io/aukkonen/pen/qBjygGd?editors=1010
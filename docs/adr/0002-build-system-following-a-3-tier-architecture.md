# 2. Build system following a 3 tier architecture

Date: 2020-08-24

## Status

Accepted

## Context

We need to decide on the core components that will make up this software system.

We expect a substantial amount of the complexity to exist in the user facing section of the platform, most data that is persisted is going to be relatively simple and we do not forsee any form of complex background work.

We would like to keep a level of separation between the client that the user interacts with and the server in anticipation of there potentially being multiple front ends at some point in time (for example a mobile application).

## Decision

We intend to implement this system following a 3 tier architecture:

* A client application which manages the UI and user interactions
* A simple API layer handling authentication, authorization and relevant business logic
* A stateful data storage layer

## Consequences

Delivery of features will by necessity have to span multiple different layers and potentially separate codebases. This will lead to increased deployment complexity but we believe this is offset by the benefits of having an isolated client layer.

# 5. Use rails seeds for generation of read-only data (eg. models)

Date: 2020-08-25

## Status

Accepted

## Context

The application needs to be able to expose information about certain read-only pieces of data such as paints and models.

We do not intend for these data points being editable by end users but only by the operators of the mini-recipes platform.

We favour speed of delivery as we work through the construction of the first version of this platform.

## Decision

We will use rails seeds to populate read-only data such as models and paints.

## Consequences

Releasing new models / paints to the platform will require a code deployment.

We may wish to revisit this approach at a later date to encourage external contributions to this data in an easier fashion.

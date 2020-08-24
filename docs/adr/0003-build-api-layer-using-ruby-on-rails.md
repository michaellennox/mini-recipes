# 3. Build API layer using ruby on rails

Date: 2020-08-24

## Status

Accepted

## Context

We need to decide on the technology to be utilised for the API layer of this application.

We anticipate the API layer itself to be relatively simple with minimal custom logic but it to need multiple "common" application features (eg. auth / mailing / database management). As such we would favour a toolkit with a strong community around it and that is relatively rapid to build functionality out with.

## Decision

We will use ruby on rails for our API layer and for managing our database schema.

## Consequences

We will use the [API-Only](https://guides.rubyonrails.org/api_app.html) version of ruby on rails to strip out the unecessary UI based functionality in a standard rails application.

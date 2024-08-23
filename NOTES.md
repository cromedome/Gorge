# Code Presentation Notes

- The purpose is fun, not correctness
    - I would not cut these corners in a real app

- Generate
    - Show, but then change to mine
    - Generate w/dockerfile
    - Launch base app

- Server
    - Plack standard/PSGI protocol
    - WSGI compatible
    - Rack compatible?

- Config
    - YAML is easiest
    - For demo, I put everything in the base config file
    - In reality, put one set of settings in development, another in
      production, yet another for your local dev machine

- Sessions
    - Lots of backends
    - YAML is great for developing, so that's what we'll use. Easy to
      read.

- Templates
    - TT is one of the gold standards. Not the fastest, but powerful and
      easy. Perl-like syntax (except when frustratingly not)

- DSL
    - Makes it easy to describe your app
        - Routes you want your app to respond to
        - Route handlers that perform actions for a route
    - Many keywords for session handling, templates, logging, parameter
      handling, and so much more.


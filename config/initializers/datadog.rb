Datadog.configure do |c|
    c.service = 'rails-app'
    c.env = 'sandbox'
    c.version = '1.0.3'
    c.profiling.enabled = true
    c.tracing.instrument :graphql, schemas: [GraphqlAppSchema]
  end
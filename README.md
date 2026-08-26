# MailHub Ruby SDK

Official Ruby SDK for the MailHub Partner API.

## Requirements

- Ruby 3.3+

## Installation

```bash
gem install mailhub-sdk
```

Or add it to your `Gemfile`:

```ruby
gem "mailhub-sdk"
```

## Usage

```ruby
require "Mailhub"

client = Mailhub::MailhubClient.new(
  api_key: "YOUR_API_KEY",
  base_url: "https://api.mailhub.co.kr"
)

client.message.send_message(
  to_email: "user@example.com",
  from_email: "noreply@example.com",
  subject: "Hello from MailHub",
  body: "<p>Hello!</p>"
)
```

## Available Resources

The client exposes one sub-client per resource:

```
client.campaign
client.contact
client.custom_field
client.media
client.message
client.segment
client.template
```

## Error Handling

Non-2XX responses raise a `Mailhub::Errors::ResponseError` (or a status-specific subclass, e.g. `UnauthorizedError`, `NotFoundError`), which exposes the HTTP status code and the response body:

```ruby
begin
  client.message.send_message(to_email: "user@example.com")
rescue Mailhub::Errors::ResponseError => e
  puts e.code
  puts e.message
end
```

## License

MIT

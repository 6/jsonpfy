# Usage
There are two required query parameters:
- `uri`: the URI of the original JSON endpoint
- `callback`: that name of the JSONP callback function. Note: jQuery.ajax automatically adds one for you with `dataType: jsonp`.

# Example
http://jsonpfy.herokuapp.com/?callback=what&uri=http%3A%2F%2Fwww.reddit.com%2F.json

React = require 'React'

{_p, _strong} = require 'hyper'

_TestComponent = React.createClass
  getDefaultProps: ->
    value: 'no'

  render: ->
    React.DOM.p {},
      "Everything working? "
      _strong @props.value

module.exports = ->

  React.renderComponent (

    _TestComponent value: 'yes'

  ), document.getElementById 'testComponent'

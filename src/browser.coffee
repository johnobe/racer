@model = model = new (require './Model')

@init = ({data, base, clientId, txnCount}) ->
  model._data = data
  model._base = base
  model._clientId = clientId
  model._txnCount = txnCount
  model._setSocket io.connect 'http://localhost:3001'
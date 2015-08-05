storage = {}

$(document).ready(->
    storage = SimpleStorage.at(SimpleStorage.deployed_address)
    retrieve()
)

window.retrieve = ->
    storage.get.call().then((return_val)->
        $("#storedValue").html(return_val.toString(10))
    ).error((err) =>
        console.error(err)
    )
window.store = ->
    el = document.getElementById("toStoreInput")
    storage.set(el.value).then((tx)->
        retrieve()
    )
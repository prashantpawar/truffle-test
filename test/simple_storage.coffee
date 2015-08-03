contract 'SimpleStorage', (addresses, accounts) ->

  it "should assert true", (done) -> 
    simple_storage = SimpleStorage.at(addresses["SimpleStorage"])
    assert.isTrue(true)
    done()
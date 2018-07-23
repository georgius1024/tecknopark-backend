'use strict'

const Response = use('App/Lib/Response')
const quotes = require('./quotes')

class QuotesController {
  async all ({ response }) {
    const data = quotes.map(e => {
      const [quote, author] = e
      return {
        quote, 
        author
      }
    })
    return Response.genericData(response, data)
  }
}
module.exports = QuotesController;
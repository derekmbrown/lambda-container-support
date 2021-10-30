var emoji = require('node-emoji')

exports.handler = async (event) => {
  await run(event)
}

async function run(event) {
  console.log(event)
  return emoji.get(':sunglasses:')
}
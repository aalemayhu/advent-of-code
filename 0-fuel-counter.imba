const fs = require 'fs'

import assert from './test'

def computeFuel mass
  Math.floor(mass / 3) - 2

# Sanity Check
assert(computeFuel(12), 2)
assert(computeFuel(14), 2)
assert(computeFuel(1969), 654)
assert(computeFuel(100756), 33583)

const data = fs.readFileSync('./0-input.txt')
const numbers = data.toString().trim().split('\n').map do |x| computeFuel(parseInt(x))
const sum = numbers.reduce(|accum,cur| accum += cur)

console.log "The right answer is {sum}"

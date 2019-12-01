const fs = require 'fs'

import assert from './test'

def computeFuel mass
  Math.floor(mass / 3) - 2

def computeNegativeFuel mass
  const f = computeFuel(mass)

  if f <= 2
    return f
  const values = []
  let i = Math.floor(f / 3) - 2
  values.push(f)
  values.push(i)

  while true
    i = Math.floor(i / 3) - 2
    if i <= 0
      break
    values.push(i)
  console.log(values.join(' + '))
  values.reduce(|accum,cur| accum += cur)


# Sanity Check
assert(computeFuel(12), 2)
assert(computeFuel(14), 2)
assert(computeFuel(1969), 654)
assert(computeFuel(100756), 33583)

assert(computeNegativeFuel(14), 2)
assert(computeNegativeFuel(1969), 966)
assert(computeNegativeFuel(100756), 50346)

process.exit 1
const data = fs.readFileSync('./0-input.txt')
const numbers = data.toString().trim().split('\n').map do |x| parseInt(x)

const computedFuelNumbers = numbers.map do |x| computeFuel(x)
const sum = computedFuelNumbers.reduce(|accum,cur| accum += cur)
console.log "The right answer is {sum}"

const fuelNumbers = numbers.map do |x| computeNegativeFuel(parseInt(x))
const fuelRequirements = numbers.reduce(|accum,cur| accum += cur)

console.log "The right answer is {fuelRequirements}"

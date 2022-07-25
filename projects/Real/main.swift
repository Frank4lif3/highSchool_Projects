func randomDouble() -> Double {
    return Double.random(in: Double.leastNormalMagnitude ... Double.greatestFiniteMagnitude)
}

let da = randomDouble()
let db = randomDouble()

let ra = Real(da)
let rb = Real(db)

assert(ra.asDouble() == da)
assert(rb.asDouble() == db)

assert(ra.add(rb).asDouble() == da + db)
assert(ra.subtract(rb).asDouble() == da - db)
assert(ra.multiply(rb).asDouble() == da * db)
assert(ra.divide(rb).asDouble() == da / db)

assert((ra + rb).asDouble() == da + db)
assert((ra - rb).asDouble() == da - db)
assert((ra * rb).asDouble() == da * db)
assert((ra / rb).asDouble() == da / db)

print("checks complete")


print(da)
print(db)
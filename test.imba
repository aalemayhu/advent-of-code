export def assert lhs, rhs
  if lhs !== rhs
    console.log('FAIL', lhs, '!=', rhs)
    process.exit(1)

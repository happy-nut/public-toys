import { greet } from './main'

describe('greet', () => {
  it('should return greeting string with default word world', () => {
    expect(greet()).toBe('Hello world!')
  })

  it('should return greeting string with given input value', () => {
    expect(greet('코뭉이')).toBe('Hello 코뭉이!')
  })
})


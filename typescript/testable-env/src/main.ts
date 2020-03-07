const world = 'world'

export function greet(word: string = world): string {
  return `Hello ${word}!`
}

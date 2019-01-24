// This problem was asked by Facebook.

// Given a stream of elements too large to store in memory, pick a random element from the stream with uniform probability.

let count = 0;
let chosen;

const pickRandom = () => {
  count++;
  chosen ? (chosen = Math.ceil(Math.random() * count)) : (chosen = 1);
  return chosen;
};

const stream = [
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20
];

for (let i of stream) {
  console.log(`The ${i} chosen number is ${pickRandom()}`);
}

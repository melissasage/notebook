// This problem was asked by Google.

g
// Integers can appear more than once in the list. You may assume all numbers in the list are positive.

// For example, given S = [12, 1, 61, 5, 9, 2] and k = 24, return [12, 9, 2, 1] since it sums up to 24.

const subset = (s, k) => {
    // naive, brute-force solution: generate all possible combinations.
    // this solution gets increasingly worse the bigger S is, but you gotta start somewhere...

    let arr
    for (let i = 0; i < s.length; i++) {
        arr = []
        arr.push(s[i])
        
    }

    // Actually, let's play in the space instead of this.

    

    return null
}

// tests
console.log(subset([12, 1, 61, 5, 9, 2], 24)) // should be [12, 9, 2 1]
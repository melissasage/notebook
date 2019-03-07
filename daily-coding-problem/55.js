// Good morning! Here's your coding interview problem for today.

// This problem was asked by Microsoft.

// Implement a URL shortener with the following methods:

// shorten(url), which shortens the url into a six-character alphanumeric string, such as zLg6wl.
// restore(short), which expands the shortened string into the original url. If no such shortened string exists, return null.
// Hint: What if we enter the same URL twice?


// I'm not quite happy with this solution:
// it works, but it doesn't satisfy the requirement that the URL contain six characters exactly. This approach has a variable length at the end of the URL, depending on the input.

const toBase62 = integer => {
    if (integer === 0) return 0
    const charset = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".split("")
    let converted = []
    while (integer > 0) {
        converted.push(charset[integer % 62])
        integer = Math.floor(integer/62)
    }
    return converted.join('')
}


const shortener = {
    map: {},

    shorten: url => {
        const checksum = url.split('').map(x => x.codePointAt()).reduce((y, z) => z + y)
        const hash = toBase62(checksum)
        this.map[hash] = url
        return hash
    },

    restore: short => {
        return this.map[short] ? this.map[short] : null;
    }   
}



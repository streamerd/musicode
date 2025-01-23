# Sonic Pi Music Collection

[![Sonic Pi](https://img.shields.io/badge/Made%20with-Sonic%20Pi-E2468A)](https://sonic-pi.net)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
![Status](https://img.shields.io/badge/Status-Active-success)

A collection of electronic music compositions created with [Sonic Pi](https://sonic-pi.net), featuring both synthesized sounds and orchestral samples.

## Recordings

1. ["Starving Looper"](https://audius.co/streamerd_/starving-looper-431868)
2. ["Lunar Discovery"](https://audius.co/streamerd_/lunar-discovery-431869)
3. ["Hard Shit"](https://audius.co/streamerd_/hard-shit-431872)
4. ["Low Rider"](https://audius.co/streamerd_/low-rider-431870)
5. ["Horny Mystery"](https://audius.co/streamerd_/horny-mystery-431871)
6. ["Rainy Day Pianos"](https://audius.co/streamerd_/rainy-day-pianos)
7. ["Rhythmic Surrender"](https://audius.co/streamerd_/rhythmic-surrender)
8. ["Zero-sum Fame"](https://audius.co/streamerd_/zero-sum-fame)
9. ["Knight Wider"](https://audius.co/streamerd_/knight-wider)
10. ["For September"](https://audius.co/streamerd_/for-september)

## Tools & Samples Used

- **Sonic Pi**: The primary tool used for all compositions
- **Sonatina Symphonic Orchestra**: Additional orchestral samples ([GitHub Repository](https://github.com/peastman/sso))

## Getting Started

### Setup

1. Install [Sonic Pi](https://sonic-pi.net)
2. Download the code from this repository
3. Download the Sonatina Symphonic Orchestra samples (optional, for orchestral pieces)

### Sample Organization

The code expects orchestral samples to be organized in instrument-specific folders. Here's an example of how to use samples in your code:

```ruby
# Define paths to sample folders
violins = "/path/to/violins/folder"
bass_clarinets = "/path/to/bass_clarinets/folder"

# Play a sample
sample violins, "violin-e5", amp: 1
```

### Important Notes

- Some sample filenames may need to be renamed if they contain special characters (e.g., #) that cause errors in Sonic Pi
- The code includes scale and tune naming conventions that match the sample filenames (e.g., "violin-e5")

## Contributing

Contributions are welcome! Feel free to:
- Submit pull requests
- Report issues
- Suggest improvements
- Contact me for collaboration

## License

[Add your license information here]

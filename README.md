# Claude Code Documentation Mirror

[![Last Update](https://img.shields.io/github/last-commit/mnestorov/cc-docs-mirror/main.svg?label=docs%20updated)](https://github.com/mnestorov/cc-docs-mirror/commits/main)
[![Version](https://img.shields.io/badge/version-1.0.0-green)](https://github.com/mnestorov/cc-docs-mirror/releases)
[![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Linux-blue)]()

Local mirror of Claude Code documentation files from https://docs.anthropic.com/en/docs/claude-code/, automatically updated with semantic versioning.

## 🚀 Quick Start

**One-command installation:**

```bash
curl -fsSL https://raw.githubusercontent.com/mnestorov/cc-docs-mirror/main/scripts/bin/install.sh | bash
```

This sets up the `/docs` command in Claude Code with automatic updates.

## ✨ Features

- **📖 Instant documentation access** - Read docs without web delays
- **🔄 Automatic updates** - Stays current with latest Claude Code docs
- **📋 Changelog integration** - Access Claude Code release notes with `/docs changelog`
- **🔍 Smart search** - Find docs with natural language queries
- **🍎 Cross-platform** - Works on macOS and Linux
- **⚡ Fast** - Local files mean instant access

## 💡 Usage

### Basic commands
```bash
/docs                    # List all available documentation
/docs hooks             # Read hooks documentation instantly
/docs mcp               # Read MCP documentation
/docs changelog         # Read Claude Code release notes
```

### Check for updates
```bash
/docs -t                # Check sync status with GitHub
/docs -t hooks          # Check updates, then read hooks docs
```

### What's new
```bash
/docs what's new        # See recent documentation changes
```

### Natural language
```bash
/docs how do I use environment variables?
/docs explain memory management
/docs find all mentions of authentication
```

## 🛠️ Development

### Prerequisites
- **git** - Repository management
- **jq** - JSON processing 
- **curl** - Downloads
- **python3** - For documentation fetching (optional)
- **Claude Code** - Obviously! 😄

### Manual Installation
```bash
git clone https://github.com/mnestorov/cc-docs-mirror.git
cd cc-docs
./scripts/bin/install.sh
```

### Documentation Fetching (Advanced)
The project includes an enhanced Python script for fetching documentation with progress visualization:

```bash
# Install Python dependencies
cd scripts
pip install -r requirements.txt

# Run the documentation fetcher
python fetch_claude_docs.py
```

**Features:**
- 📊 **Progress bars** with real-time updates
- 🔄 **Smart retry logic** with exponential backoff  
- ✅ **Content validation** to ensure quality
- 📈 **Detailed statistics** and success rates
- 🎯 **Automatic discovery** of new documentation pages

### Project Structure
```
cc-docs/
├── docs/                    # Mirror of official documentation
├── scripts/
│   ├── fetch_claude_docs.py # Enhanced documentation fetcher
│   ├── requirements.txt     # Python dependencies
│   └── bin/                 # Shell scripts
│       ├── install.sh       # Main installer
│       ├── claude-docs-helper.sh # Core functionality
│       ├── uninstall.sh     # Uninstaller
│       └── update-version.sh # Version updater
├── .github/workflows/       # GitHub Actions for automation
├── package.json            # Semantic release configuration
└── .releaserc.json         # Release automation rules
```

## 🔄 How Updates Work

1. **GitHub Actions** fetches documentation changes every few hours
2. **Semantic versioning** tracks releases automatically  
3. **Pre-tool hooks** check for updates when you read docs
4. **Git pull** updates happen automatically when new content is available

## 🆘 Troubleshooting

### Command not found
```bash
# Check if command exists
ls ~/.claude/commands/docs.md

# Restart Claude Code and try again
# Or reinstall:
curl -fsSL https://raw.githubusercontent.com/mnestorov/cc-docs-mirror/main/scripts/bin/install.sh | bash
```

### Documentation seems outdated
```bash
# Force update check
/docs -t

# Manual update
cd ~/.claude-code-docs && git pull
```

### Installation issues
1. **Missing dependencies**: Install `git`, `jq`, `curl`
2. **Permission errors**: Check `~/.claude/` directory permissions  
3. **Network issues**: Check if GitHub Actions are running: [View Actions](https://github.com/mnestorov/cc-docs-mirror/actions)

## 🗑️ Uninstalling

### Quick Uninstall

From anywhere, run:
```bash
~/.claude-code-docs/scripts/bin/uninstall.sh
```

Or use the docs command:
```bash
/docs uninstall
```

### What Gets Removed

The uninstaller will remove:

1. **The /docs command** from `~/.claude/commands/docs.md`
2. **The auto-update hook** from `~/.claude/settings.json`
3. **The installation directory** `~/.claude-code-docs`

### Manual Uninstall

If you prefer to uninstall manually:

1. **Remove the command file:**
```bash
rm -f ~/.claude/commands/docs.md
```

2. **Remove the hook from Claude settings:**
Edit `~/.claude/settings.json` to remove the PreToolUse hook that references claude-code-docs.

3. **Remove the installation directory:**
```bash
rm -rf ~/.claude-code-docs
```

### Multiple Installations

If you have multiple installations, the uninstaller will notify you about other locations it finds. You'll need to remove each one separately.

To find all installations:
```bash
find ~ -name "claude-code-docs" -type d 2>/dev/null | grep -v ".claude-code-docs"
```

### Backup Created

The uninstaller creates a backup of your Claude settings at `~/.claude/settings.json.backup` before removing hooks, just in case.

### Reinstalling

To reinstall after uninstalling:
```bash
curl -fsSL https://raw.githubusercontent.com/mnestorov/cc-docs-mirror/main/scripts/bin/install.sh | bash
```

## 🤝 Contributing

We welcome contributions from the community! Please see our [Contributing Guidelines](CONTRIBUTING.md) for detailed information.

### Quick Start for Contributors

1. **Fork & Clone**:
   ```bash
   git clone https://github.com/YOUR_USERNAME/cc-docs-mirror.git
   cd cc-docs-mirror
   npm install
   ```

2. **Make Changes** following our conventions:
   - Use conventional commits (`feat:`, `fix:`, `docs:`)
   - Test your changes locally
   - Update documentation as needed

3. **Submit a Pull Request** with a clear description

### Ways to Contribute

- 🪟 **Windows Support**: Help make scripts work on Windows (high priority!)
- 🐛 **Bug Reports**: [Open an issue](https://github.com/mnestorov/cc-docs-mirror/issues) with reproduction steps
- 💡 **Feature Requests**: [Start a discussion](https://github.com/mnestorov/cc-docs-mirror/discussions) for new ideas
- 📝 **Documentation**: Improve guides, add examples, fix typos
- ⚡ **Performance**: Optimize fetching and processing speed
- 🌍 **Translations**: Help internationalize the project

See [CONTRIBUTING.md](CONTRIBUTING.md) for complete guidelines, code style, and development setup.

## 🔒 Security

- Repository cloned over HTTPS from GitHub
- All operations confined to `~/.claude-code-docs`
- No external data transmission (beyond git operations)
- Hooks only run `git pull` for documentation updates

For additional security, you can fork the repository and install from your own fork.

## 📜 License

Documentation content belongs to Anthropic.  
This mirror tool is open source under MIT license.

## 📈 Project Status

![GitHub release (latest by date)](https://img.shields.io/github/v/release/mnestorov/cc-docs-mirror)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/mnestorov/cc-docs-mirror/release.yml)
![GitHub contributors](https://img.shields.io/github/contributors/mnestorov/cc-docs-mirror)
![GitHub issues](https://img.shields.io/github/issues/mnestorov/cc-docs-mirror)

## 🗺️ Roadmap

- [ ] 🪟 Windows support
- [ ] 🔍 Enhanced search capabilities
- [ ] 📱 Better mobile/terminal UI
- [ ] 🌐 Offline-first improvements
- [ ] 🎨 Customizable themes
- [ ] 📊 Usage analytics (optional)
- [ ] 🌍 Multi-language support

## 👥 Contributors

Thanks to all contributors who help make this project better!

<!-- ALL-CONTRIBUTORS-LIST:START -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

Want to see your name here? Check out our [Contributing Guidelines](CONTRIBUTING.md)!

## 🙏 Acknowledgments

- **Anthropic** for Claude Code and excellent documentation
- **Community contributors** who help improve this tool
- **Claude Code users** who provide feedback and feature requests
- **Open source community** for inspiration and best practices

## 📞 Support

- 📖 **Documentation**: Check the sections above
- 💬 **Discussions**: [GitHub Discussions](https://github.com/mnestorov/cc-docs-mirror/discussions)
- 🐛 **Bug Reports**: [GitHub Issues](https://github.com/mnestorov/cc-docs-mirror/issues)
- 📧 **Contact**: Open an issue for questions

---

<div align="center">

**Made with ❤️ for the community**

[Report Bug](https://github.com/mnestorov/cc-docs-mirror/issues) · [Request Feature](https://github.com/mnestorov/cc-docs-mirror/discussions) · [Contributing](CONTRIBUTING.md)

</div>
# Contributing to Claude Code Documentation Mirror

Thank you for your interest in contributing to the Claude Code Documentation Mirror project! We welcome contributions from the community to help improve this tool.

## 🎯 Project Purpose

This project maintains a local mirror of Claude Code documentation with automatic synchronization, making docs instantly accessible through the `/docs` command in Claude Code.

## 🤝 How to Contribute

### 🐛 Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When creating a bug report, include:

- **Clear title and description**
- **Steps to reproduce** the issue
- **Expected behavior** vs actual behavior
- **System information** (OS, Claude Code version, Python version)
- **Screenshots** if applicable
- **Error messages** or logs

### 💡 Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion, include:

- **Use case** - Why is this enhancement needed?
- **Proposed solution** - How should it work?
- **Alternative solutions** - What other approaches did you consider?
- **Additional context** - Any mockups, examples, or references

### 📝 Pull Requests

1. **Fork the repository** and create your branch from `main`
2. **Follow the project structure**:
   ```
   cc-docs-mirror/
   ├── docs/                    # Documentation files (auto-generated)
   ├── scripts/
   │   ├── fetch_claude_docs.py # Main fetcher script
   │   ├── requirements.txt     # Python dependencies
   │   └── bin/                 # Shell scripts
   └── .github/workflows/       # GitHub Actions
   ```

3. **Make your changes**:
   - Follow existing code style and conventions
   - Add tests if applicable
   - Update documentation as needed
   - Ensure scripts remain cross-platform (macOS/Linux)

4. **Commit your changes** using conventional commits:
   ```bash
   git commit -m "feat: add new feature"
   git commit -m "fix: resolve issue with X"
   git commit -m "docs: update README"
   ```

5. **Push to your fork** and submit a pull request

## 📋 Development Setup

### Prerequisites

- Python 3.7+
- Node.js 16+ (for semantic-release)
- git
- jq (for JSON processing)

### Local Development

1. **Clone the repository**:
   ```bash
   git clone https://github.com/mnestorov/cc-docs-mirror.git
   cd cc-docs-mirror
   ```

2. **Install Node.js dependencies**:
   ```bash
   npm install
   ```

3. **Install Python dependencies**:
   ```bash
   cd scripts
   pip install -r requirements.txt
   cd ..
   ```

4. **Set up Husky hooks**:
   ```bash
   npm run prepare
   ```

5. **Test the installation script**:
   ```bash
   ./scripts/bin/install.sh
   ```

### Testing Changes

- **Test documentation fetching**:
  ```bash
  python scripts/fetch_claude_docs.py
  ```

- **Test the helper script**:
  ```bash
  ./scripts/bin/claude-docs-helper.sh hooks
  ```

- **Run a dry release** (no actual release):
  ```bash
  npx semantic-release --dry-run
  ```

## 🎨 Code Style Guidelines

### Python Code (fetch_claude_docs.py)

- Follow PEP 8 style guide
- Use type hints where appropriate
- Add docstrings to functions
- Handle errors gracefully with proper logging
- Use meaningful variable names

### Shell Scripts

- Use `set -euo pipefail` for error handling
- Quote variables properly: `"$variable"`
- Check for command existence before using
- Provide helpful error messages
- Test on both macOS and Linux

### Commit Messages

We use [Conventional Commits](https://www.conventionalcommits.org/):

- `feat:` New features
- `fix:` Bug fixes
- `docs:` Documentation changes
- `style:` Code style changes (formatting, etc.)
- `refactor:` Code refactoring
- `perf:` Performance improvements
- `test:` Adding or updating tests
- `chore:` Maintenance tasks
- `ci:` CI/CD changes

Examples:
```
feat: add progress bars to documentation fetcher
fix: resolve timeout issues in fetch script
docs: update installation instructions for Windows
chore: update dependencies to latest versions
```

## 🔄 Release Process

Releases are automated using semantic-release:

1. Commits to `main` trigger GitHub Actions
2. Semantic-release analyzes commits
3. Version is automatically bumped based on commit types
4. CHANGELOG.md is updated
5. GitHub release is created
6. Version numbers in scripts are updated

## 📜 Code of Conduct

### Our Standards

- **Be respectful** and inclusive
- **Welcome newcomers** and help them get started
- **Accept constructive criticism** gracefully
- **Focus on what's best** for the community
- **Show empathy** towards others

### Unacceptable Behavior

- Harassment or discrimination
- Trolling or insulting comments
- Public or private harassment
- Publishing others' private information
- Other unprofessional conduct

## 🚀 Areas for Contribution

### High Priority

- 🪟 **Windows support** - Make scripts work on Windows
- 🔍 **Search functionality** - Improve document search capabilities
- ⚡ **Performance** - Optimize fetching and loading times
- 📱 **UI improvements** - Better progress indicators and output formatting

### Nice to Have

- 🌐 **Offline mode** improvements
- 📊 **Analytics** - Track which docs are most accessed
- 🔧 **Configuration** - User preferences for update frequency
- 🌍 **Internationalization** - Support for other languages

## 📮 Questions?

Feel free to:
- Open an issue for questions
- Start a discussion in GitHub Discussions
- Check existing issues and PRs for similar topics

## 🙏 Recognition

Contributors will be:
- Listed in the project README
- Mentioned in release notes
- Given credit in commit co-author tags where appropriate

---

Thank you for contributing to make Claude Code documentation more accessible! 🎉
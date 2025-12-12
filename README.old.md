# @company/design-system

A multi-framework design system built with TypeScript, React, Vanilla Extract, and Turborepo.

## Architecture

This design system follows a framework-agnostic core with framework-specific adapters pattern, enabling reuse across multiple applications and frameworks.

### Packages

- **@company/tokens** - Design tokens (colors, typography, spacing, etc.)
- **@company/core** - Core React components with Vanilla Extract styling
- **@company/vanilla** - Framework-agnostic vanilla JS/CSS components
- **@company/react** - React-specific component wrappers
- **@company/icons** - SVG icon library
- **@company/utils** - Shared utility functions

### Apps

- **storybook** - Component documentation and development environment

### Tooling

- **@company/eslint-config** - Shared ESLint configuration
- **@company/tsconfig** - Shared TypeScript configurations

## Getting Started

### Prerequisites

- Node.js >= 18.0.0
- pnpm >= 8.0.0

### Installation

```bash
pnpm install
```

### Development

```bash
# Run Storybook
pnpm storybook

# Build all packages
pnpm build

# Run tests
pnpm test

# Lint all packages
pnpm lint
```

## Versioning

This project uses [Changesets](https://github.com/changesets/changesets) for version management.

```bash
# Create a changeset
pnpm changeset

# Version packages
pnpm version-packages

# Publish packages
pnpm release
```

## Technology Stack

- **React 18+** with TypeScript
- **Vanilla Extract** for CSS-in-JS (zero-runtime, CSP-compliant)
- **Storybook 7+** for documentation
- **Turborepo** for monorepo management
- **Changesets** for versioning

# Containerd UI - Container Image Management

## Project Overview

This is a SvelteKit-based web application that provides a user interface for managing containerd container images. The application offers a modern, responsive interface for image operations including listing, pulling, tagging, and removing container images.

## Purpose & Goals

- **Primary Purpose**: Provide a modern web UI for containerd image management operations
- **Target Users**: System administrators, developers, and DevOps engineers managing container images
- **Open Source**: Community-driven project for the container ecosystem
- **Design Philosophy**: Clean, professional interface following container ecosystem best practices

## Technology Stack

- **Framework**: SvelteKit with Svelte 5 (latest runes API)
- **Styling**: Tailwind CSS v4 with Flowbite components
- **Theme**: Dark mode by default with container-friendly color scheme
- **Build**: Vite with Node.js adapter for deployment flexibility
- **Package Manager**: npm

## Architecture

### Frontend Components
- **Layout System**: Responsive layout with top navigation and theme toggle
- **Theme Management**: mode-watcher for persistent dark/light mode switching
- **Image Management**: Views for listing, tagging, and removing local container images
- **Local Image Store**: Direct access to containerd's local image storage
- **Search & Filter**: Advanced filtering and search capabilities for local image collections

### Integration Points
- **Containerd API**: Direct integration with containerd's GRPC API for local image operations
- **Local Storage**: Access to containerd's image store via mounted volumes
- **Socket Communication**: Secure communication with containerd daemon via unix socket

## Development Standards

### Code Style
- **TypeScript**: Strict TypeScript configuration with proper typing
- **Svelte 5**: Use modern runes (`$state`, `$effect`, `$props`, `$derived`) instead of legacy patterns
- **Component Structure**: Reusable components in `src/lib/components/`
- **Naming**: PascalCase for components, camelCase for functions and variables

### UI/UX Guidelines
- **Design System**: Use Flowbite components with container-focused color scheme
- **Accessibility**: ARIA labels, keyboard navigation, screen reader support
- **Responsive**: Mobile-first design with responsive breakpoints
- **Performance**: Optimize for fast loading and smooth interactions

### Documentation for UI Development
**IMPORTANT**: When building UI components with Tailwind and Flowbite, use this official documentation:
- **Flowbite Documentation**: https://raw.githubusercontent.com/themesberg/flowbite/refs/heads/main/llms.txt

This resource provides comprehensive guidance for:
- Flowbite component usage and patterns
- Tailwind CSS utility classes and best practices
- Responsive design patterns
- Accessibility considerations
- Component composition and customization

## Project Structure

```
src/
├── lib/
│   ├── components/          # Reusable UI components
│   │   ├── ThemeToggle.svelte
│   │   └── images/          # Image management components
│   ├── stores/              # Global state management
│   ├── types/               # TypeScript type definitions
│   └── utils/               # Utility functions
├── routes/                  # SvelteKit routes
│   ├── +layout.svelte      # Root layout with navigation
│   ├── +page.svelte        # Dashboard/home page
│   └── images/             # Image management routes
└── app.css                 # Global styles and Tailwind config
```

## Container Image Management Features

### Core Functionality
- **Image Listing**: View all local images with tags, sizes, creation dates, and metadata
- **Image Operations**: Tag, untag, and remove local images
- **Local Image Management**: Manage images stored in containerd's local image store
- **Search & Filter**: Search and filter local images by name, tag, or metadata
- **Bulk Operations**: Select and manage multiple local images simultaneously
- **Image History**: View image layers and build history for local images

### Advanced Features
- **Storage Analysis**: Local disk usage analysis and cleanup recommendations
- **Image Policies**: Configure retention policies for local image cleanup
- **Export Operations**: Export local images to tar archives

## API Integration

### Containerd GRPC API
- **Images Service**: List, tag, and remove operations for local images
- **Content Service**: Access to local image manifests and blobs
- **Namespaces**: Multi-namespace local image management
- **Events**: Real-time notifications for local image operations

## Deployment Options

### Standalone
- **Container**: Single container deployment with containerd socket mount
- **Binary**: Native binary for Linux, macOS, and Windows
- **Configuration**: Environment variables and config files

### Kubernetes
- **Deployment**: Standard Kubernetes deployment manifests with containerd socket access
- **Service Account**: Appropriate RBAC permissions for containerd socket access
- **Ingress**: Configurable ingress for external access
- **Volume Mounts**: Containerd socket and data directory access

## Development Workflow

### Local Development
```bash
npm run dev          # Start development server
npm run check        # Type checking
npm run lint         # Linting and formatting
npm run test         # Run tests
npm run build        # Build for production
```

### Container Development
```bash
podman build -t containerd-ui .
podman run -p 3000:3000 -v /run/containerd/containerd.sock:/run/containerd/containerd.sock containerd-ui
```

## Security Considerations

- **Socket Access**: Secure communication with containerd unix socket
- **File System Permissions**: Proper access controls for containerd data directories
- **Input Validation**: Sanitize all user inputs and API parameters
- **CORS**: Proper cross-origin resource sharing configuration
- **Privilege Management**: Run with minimal required privileges for socket access

## Contributing

This is an open-source project welcoming contributions from the container community. Please see CONTRIBUTING.md for guidelines on:
- Code style and standards
- Testing requirements
- Pull request process
- Issue reporting

## Future Roadmap

- **Enhanced Local Operations**: Advanced image manipulation capabilities
- **Image Building**: Integration with buildkit for local image building
- **Backup/Restore**: Local image backup and restoration features
- **API Extensions**: Plugin system for custom functionality
- **CLI Integration**: Command-line interface companion tool
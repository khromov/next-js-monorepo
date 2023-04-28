## Multi-tenant Next.js

This example project lets you have multiple discrete Next.js sites while sharing modules, components and NPM dependencies. 

Directory structure:

```bash
├── shared  # Shared across all sites
│   ├── utils # Utilities and modules
│   ├── components # React components
    ...
├── sites   # Site folder
│   ├── site-1  # Discrete site
│   │   ├── components  # Site-specific components
│   │   ├── pages       # Site-specific pages
│   │   ├── public      # Site-specific public folder
│   │   └── styles      # Site-specific files
│   └── site-2
│       ├── components
│       ├── pages
│       ├── public
│       └── styles
        ...
```

This repo uses a very simple symbolic links approach. By using a bash script we symlink `pages` and `public` folder (and a couple more for convenience) to the root location where Next.js expects to find them. 

There are many other ways to achieve multi-tenancy in Next.js, feel free to read [my blog post](https://khromov.se/code-sharing-patterns-for-next-js/) about other available options.

### Pros and cons
Most other approaches don't tackle how to handle the `api/` or `public/` folder while this approach will give you a separate codebase for each that works as you would expect on a standalone Next.js site.

The downside of this approach is that you can only run and build one site at a time. This might be a pro or a con, depending on how you see it. Another downside is that the symlink approach is very crude and can be confusing to work in. This project includes a Visual Studio Code configuration file to hide the symlinked folders from you so that you don't get confused about which files are being edited.

## Getting Started

First, let's switch to the site you want to edit:

```bash
./switch site-1
```

Now you can start Next.js like normal:

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

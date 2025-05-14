/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    domains: ['i.imgur.com'],
  },
  // Simplified webpack config to fix module resolution issues
  webpack: (config) => {
    // Fix for "exports is not defined" error
    config.output.globalObject = 'globalThis';
    
    // Disable terser minimizer
    config.optimization.minimizer = [];
    
    return config;
  },
  // Increase timeout for page loading
  staticPageGenerationTimeout: 180,
  // Disable SWC
  swcMinify: false,
  compiler: {
    // Disable SWC completely 
    styledComponents: false
  }
}

module.exports = nextConfig
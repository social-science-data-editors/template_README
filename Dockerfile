FROM ruby:3.2-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /site

# Install Jekyll and Bundler
RUN gem install jekyll bundler

# Copy Gemfile and install dependencies
COPY Gemfile* ./
RUN bundle install

# Expose port 4000 for Jekyll server
EXPOSE 4000

# Default command to serve Jekyll with live reload
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--force_polling"]

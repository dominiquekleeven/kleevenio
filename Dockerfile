# Use the official Ruby image from the Docker Hub
FROM ruby:3.1

# Set the working directory
WORKDIR /app

# Copy the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install bundler and dependencies
RUN gem install bundler && \
    bundle install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 9292

# Start the Ruby application
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "9292"]

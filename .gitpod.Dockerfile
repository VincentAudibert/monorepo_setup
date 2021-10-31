FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
RUN yarn global add @nestjs/cli

RUN chmod +x $HOME/.yarn/bin/*
ENV PATH="$HOME/.yarn/bin:$PATH"
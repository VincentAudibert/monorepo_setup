# To test-build this dockerfile
#     docker build -f .gitpod.Dockerfile -t gitpod-dockerfile-test .
#
# To test-run this built dockerfile
#     docker run -it gitpod-dockerfile-test bash

FROM gitpod/workspace-full

# Install nestjs, 
RUN yarn global add @nestjs/cli

# Make all yarn-globally installed stuff avail for command line
RUN chmod +x $HOME/.yarn/bin/*
ENV PATH="$HOME/.yarn/bin:$PATH"

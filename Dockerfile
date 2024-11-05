FROM kalilinux/kali-rolling

ARG BUILD_DATE

# Maintainer information
LABEL maintainer="nechry@gmail.com"
LABEL build_id="docker build -t nechry/pth-winexe ."
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL description="Docker container for the pth-winexe tool"

# Update and install necessary packages
RUN apt-get update && apt-get install -y \
    passing-the-hash \
    && apt-get clean

# Set the entrypoint to bash
ENTRYPOINT ["/bin/bash"]

# Set the default command to print the help message
CMD ["pth-winexe", "--help"]


# End of Dockerfile
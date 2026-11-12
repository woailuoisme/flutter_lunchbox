FROM ghcr.io/cirruslabs/flutter:3.44.0

# cirruslabs/flutter 官方镜像已在 3.44.0 后停止发布，基于其 Android SDK 基础环境切换至 3.50.0
ARG FLUTTER_VERSION=3.50.0
ENV FLUTTER_VERSION=${FLUTTER_VERSION}

RUN git -C "${FLUTTER_HOME}" fetch --depth 1 origin "refs/tags/${FLUTTER_VERSION}:refs/tags/${FLUTTER_VERSION}" \
    && git -C "${FLUTTER_HOME}" checkout -f "tags/${FLUTTER_VERSION}" \
    && flutter precache --android \
    && yes | flutter doctor --android-licenses \
    && flutter --version

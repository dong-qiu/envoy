#### code edit
source/common/network/utility.cc

#### bazel build
bazel build //source/common/network:utility_lib

#### bazel test
bazel build //test/mocks/access_log:access_log_mocks

#### static analysis
cpplint source/common/network/utility.cc
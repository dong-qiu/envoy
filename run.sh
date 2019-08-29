echo query --package_path $(pwd):$HOME/bin/base_workspace > ~/.bazelrc
bazel query --noimplicit_deps 'deps(//source/server:listener_hooks_lib)' --output graph > graph.in
dot -Tpng < graph.in > graph.png

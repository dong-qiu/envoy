echo query --package_path $(pwd):$HOME/bin/base_workspace > ~/.bazelrc
bazel query --noimplicit_deps 'deps(//source/server:listener_hooks_lib)' --output graph > graph.in
read -n1 -p "Press any key to continue..."
dot -Tpng < graph.in > graph.png
gp open graph.png

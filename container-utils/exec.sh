cd /container-utils/$(whoami)
cd "$(cat pwd.txt)"
if [ "$1" == "cd" ]; then
  shift
  cd $@
  pwd > /container-utils/$(whoami)/pwd.txt
else
  sh -c "$(echo $@)"
fi

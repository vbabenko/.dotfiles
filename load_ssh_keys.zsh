# fetching added ssh keys
local added_keys=$(ssh-add -l)
# fetching list of avaialbe ssh keys
local available_keys=$(ls -m ${HOME}/.ssh)

for file in ${HOME}/.ssh/*.pub; do
  [ -e "$file" ] || continue
  local private_key=$(basename ${file%.*})
  if [ ! $(echo ${added_keys} | grep -o -e ${private_key}) ]; then
    ssh-add -K ${private_key}
  fi
done

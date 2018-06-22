# Load list of added ssh keys
local added_keys=$(ssh-add -l)
# fetching list of avaialbe ssh keys
local available_keys=$(ls -m ${HOME}/.ssh)

# going through all public key like <key>.pub
# expecting that there's a private key named <key>
for file in ${HOME}/.ssh/*.pub; do
  [ -e "$file" ] || continue
  # stripping ".pub" from a filename
  local private_key=$(basename ${file%.*})
  # if a key is not loaded yet
  if [ ! $(echo ${added_keys} | grep -o -e ${private_key}) ]; then
    # load it and store it in a key-chain
    ssh-add -K ${private_key}
  fi
done

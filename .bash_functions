mkcd() {
  mkdir -p "$1" && cd "$1"
}

# Intercept bun to allow global updates and listings
bun() {
  if [ "$1" = "update" ] && [ "$2" = "-g" ]; then
    (cd ~/.bun/install/global && command bun update)
  elif [ "$1" = "list" ] && [ "$2" = "-g" ]; then
    (cd ~/.bun/install/global && command bun pm ls)
  else
    command bun "$@"
  fi
}


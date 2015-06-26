function install() {
  local version=$1

  #(1) install
  client_debug "Installing MongoDB on ${OPENSHIFT_MONGODB_HOME_DIR}..."
  cd $OPENSHIFT_MONGODB_HOME_DIR/versions
  tar -zxvf mongodb-linux-x86_64-${version}.tgz
  rm mongodb-linux-*.tgz
  mv mongodb-linux-* ../software

  #(2) create OPENSHIFT_MONGODB_VERSION
  echo "$version" > $OPENSHIFT_MONGODB_HOME_DIR/env/OPENSHIFT_MONGODB_VERSION
}

# mongodb-3.0-cartridge

Cartridge for installing MongoDB 3.0.
Right now, the cartridge installs **MongoDB 3.0.3**.

## Install

### Installing using the web console

In the application page:

1. Follow the link *see the list of cartridges you can add*.
2. In the section *Install your own cartridge*,
   write `http://cartreflect-claytondev.rhcloud.com/github/openshiftx/mongodb-3.0-cartridge`
   and click *Next*.
3. Click *Add Cartridge*.

### Installing using rhc

1. Open a shell console.
2. `rhc cartridge add http://cartreflect-claytondev.rhcloud.com/github/openshiftx/mongodb-3.0-cartridge -a YOUR_APP`

## Remove

1. Open a shell console.
2. `rhc cartridge remove mongodb-3.0 -a YOUR_APP`

## Environment variables

`> env | grep MONGODB`:

- `OPENSHIFT_MONGODB_HOME_DIR` and `OPENSHIFT_MONGODB_DIR`. Directory where the cartridge is installed.
- `OPENSHIFT_MONGODB_DATA_DIR`. Directory for the database data.
- `OPENSHIFT_MONGODB_BIN_DIR`. Directory where the binaries are: `mongo`, `mongodb`, etc.
- `OPENSHIFT_MONGODB_CONF_DIR`. Directory where the configuration file is.
- `OPENSHIFT_MONGODB_LOG_DIR` and `OPENSHIFT_MONGODB_DB_LOG_DIR`. Directory where the log files are: `mongod.log` and `mongod.pid`.
- `OPENSHIFT_MONGODB_IP` and `OPENSHIFT_MONGODB_DB_HOST`. Server IP.
- `OPENSHIFT_MONGODB_PORT` and `OPENSHIFT_MONGODB_DB_PORT`. Server port.
- `OPENSHIFT_MONGODB_URL` and `OPENSHIFT_MONGODB_DB_URL`. URL for connecting to the instance.
- `OPENSHIFT_MONGODB_VERSION`. Installed version.

## Best practices

- Use the `mongod.conf` file located in `$OPENSHIFT_MONGODB_CONF_DIR`. Update it if needed, but use this file.
  - Don't set the configuration settings: `net.port` and `net.bindIp`.
- Use the data directory located in `$OPENSHIFT_MONGODB_DATA_DIR`.
- Use the log directory located in `$OPENSHIFT_MONGODB_LOG_DIR`.

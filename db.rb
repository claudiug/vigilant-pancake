require 'sequel'

# Delete DATABASE_URL from the environment, so it isn't accidently
# passed to subprocesses.  DATABASE_URL may contain passwords.
DB = Sequel.connect(
    adapter: "postgres",
    database: 'production_dump2',
    host: "localhost",
    user: "claudiug",
    password: "")

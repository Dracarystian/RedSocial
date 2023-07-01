import dotenv from 'dotenv'

dotenv.config()

module.exports ={
    development:{
        client: 'pg',
        connection: {
            host: 'localhost',
            user: 'postgres',
            password: process.env.PSW,
            database: 'redSocial',
            port: 5432,
        },
        migrations: {
            directory: './migrations',
            tableName: 'knex_migrations',
        }
    }
}

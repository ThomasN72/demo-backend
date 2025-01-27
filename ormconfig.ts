// This is the database configuration file for typeorm.
// Reference: https://typeorm.io/#/using-ormconfig
module.exports = {
  type: 'postgres',
  host: process.env.DATABASE_HOST || 'localhost',
  port: +process.env.DATABASE_PORT || 5432,
  username: process.env.DATABASE_USER || 'root',
  password: process.env.DATABASE_PASSWORD || 'root',
  database: process.env.DATABASE || 'test',
  //Reference: https://docs.nestjs.com/techniques/database
  //Setting synchronize: true shouldn't be used in production - otherwise you can lose production data.
  synchronize: process.env.NODE_ENV === 'production' ? false : true,
  entities: ['dist/**/*.entity.js'],
  logging: true,
  autoLoadEntities: true,
  // migrations indicates that typeorm must load migrations from the given "migration" directory.
  migrations: ['dist/src/migration/**/*.js'],
  // cli-migrationsDir indicates that the CLI must create new migrations in the "migration" directory.
  cli: {
    migrationsDir: 'src/migration',
  },
};

import { app } from '@/app'
import { env } from '@/env'

app
  .listen({ host: '0.0.0.0', port: env.APP_PORT })
  .then(() => console.log(`HTTP Server listening on port ${env.APP_PORT}`))

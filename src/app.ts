import { PrismaClient } from '@prisma/client'
import fastify from 'fastify'

export const app = fastify()

const prisma = new PrismaClient()

app.get('/', async (request, reply) => {
  await prisma.rubric.create({
    data: {
      name: 'Material de Consumo',
    },
  })
  return 'Hello Word!'
})

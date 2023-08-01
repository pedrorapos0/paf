/*
  Warnings:

  - You are about to drop the column `total_revenue_forecast` on the `projects` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "projects" DROP COLUMN "total_revenue_forecast";

-- CreateTable
CREATE TABLE "financiers" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "source_of_resource" TEXT NOT NULL,
    "predicted_value" DECIMAL(65,30) NOT NULL,
    "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "disabled_at" TIMESTAMP(3),

    CONSTRAINT "financiers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_FinancierToProject" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_FinancierToProject_AB_unique" ON "_FinancierToProject"("A", "B");

-- CreateIndex
CREATE INDEX "_FinancierToProject_B_index" ON "_FinancierToProject"("B");

-- AddForeignKey
ALTER TABLE "_FinancierToProject" ADD CONSTRAINT "_FinancierToProject_A_fkey" FOREIGN KEY ("A") REFERENCES "financiers"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FinancierToProject" ADD CONSTRAINT "_FinancierToProject_B_fkey" FOREIGN KEY ("B") REFERENCES "projects"("id") ON DELETE CASCADE ON UPDATE CASCADE;

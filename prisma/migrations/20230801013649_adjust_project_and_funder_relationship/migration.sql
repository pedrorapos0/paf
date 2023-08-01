/*
  Warnings:

  - You are about to drop the `_FinancierToProject` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_FinancierToProject" DROP CONSTRAINT "_FinancierToProject_A_fkey";

-- DropForeignKey
ALTER TABLE "_FinancierToProject" DROP CONSTRAINT "_FinancierToProject_B_fkey";

-- DropTable
DROP TABLE "_FinancierToProject";

-- CreateTable
CREATE TABLE "ProjectOnFinanciers" (
    "project_id" TEXT NOT NULL,
    "financier_id" TEXT NOT NULL,

    CONSTRAINT "ProjectOnFinanciers_pkey" PRIMARY KEY ("project_id","financier_id")
);

-- AddForeignKey
ALTER TABLE "ProjectOnFinanciers" ADD CONSTRAINT "ProjectOnFinanciers_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjectOnFinanciers" ADD CONSTRAINT "ProjectOnFinanciers_financier_id_fkey" FOREIGN KEY ("financier_id") REFERENCES "financiers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

/*
  Warnings:

  - Added the required column `project_id` to the `rubric_item` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "rubric_item" ADD COLUMN     "project_id" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "rubric_item" ADD CONSTRAINT "rubric_item_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

/*
  Warnings:

  - Added the required column `rubric_id` to the `rubric_item` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "rubric_item" ADD COLUMN     "rubric_id" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "rubric_item" ADD CONSTRAINT "rubric_item_rubric_id_fkey" FOREIGN KEY ("rubric_id") REFERENCES "rubrics"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

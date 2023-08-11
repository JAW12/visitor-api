/*
  Warnings:

  - You are about to alter the column `ID_CARD_NO` on the `user` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.

*/
-- AlterTable
ALTER TABLE `user` MODIFY `ID_CARD_NO` INTEGER NOT NULL;

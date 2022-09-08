/*
  Warnings:

  - You are about to drop the `users` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "users";

-- CreateTable
CREATE TABLE "questions" (
    "id" SERIAL NOT NULL,
    "askedBy" TEXT NOT NULL,
    "question" TEXT NOT NULL,

    CONSTRAINT "questions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "awnswers" (
    "id" SERIAL NOT NULL,
    "questionId" INTEGER NOT NULL,
    "answeredBy" TEXT NOT NULL,
    "awnswer" TEXT NOT NULL,

    CONSTRAINT "awnswers_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "awnswers" ADD CONSTRAINT "awnswers_questionId_fkey" FOREIGN KEY ("questionId") REFERENCES "questions"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

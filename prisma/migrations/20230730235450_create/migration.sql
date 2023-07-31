-- CreateTable
CREATE TABLE "users" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "mail" TEXT NOT NULL,
    "password_hash" TEXT NOT NULL,
    "is_assistant" BOOLEAN,
    "is_coordinator_project" BOOLEAN,
    "is_admin" BOOLEAN,
    "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "disabled_at" TIMESTAMP(3),

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "projects" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "start_of_execution" TIMESTAMP(3) NOT NULL,
    "end_of_execution" TIMESTAMP(3) NOT NULL,
    "total_revenue_forecast" DECIMAL(65,30) NOT NULL,
    "checking_account" TEXT NOT NULL,
    "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "disabled_at" TIMESTAMP(3),

    CONSTRAINT "projects_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "rubrics" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "is_rh" BOOLEAN,
    "is_contribution" BOOLEAN,
    "is_spf" BOOLEAN,
    "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "disabled_at" TIMESTAMP(3),

    CONSTRAINT "rubrics_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "rubric_item" (
    "id" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "amount" INTEGER NOT NULL,
    "value" DECIMAL(65,30) NOT NULL,
    "observation" TEXT NOT NULL,
    "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "disabled_at" TIMESTAMP(3),

    CONSTRAINT "rubric_item_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_mail_key" ON "users"("mail");

-- CreateIndex
CREATE UNIQUE INDEX "projects_name_key" ON "projects"("name");

-- CreateIndex
CREATE UNIQUE INDEX "rubrics_name_key" ON "rubrics"("name");

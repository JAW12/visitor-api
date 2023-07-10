import { createWebHandler, createRouter } from "@trpc/server";
import { z } from "zod";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const router = createRouter()
    .mutation("createUser", {
        input: z.object({
            VISITOR_NO: z.string(),
            FULL_NAME: z.string(),
            ID_CARD_NO: z.string(),
            COMPANY_NAME: z.string(),
            LICENSE_PLATE: z.string(),
            PURPOSE: z.string(),
            MEET_WITH: z.string(),
            SELFIE_PHOTO_URL: z.string(),
            ID_CARD_PHOTO_URL: z.string(),
        }),
        resolve: async ({ input }) => {
            try {
                const newUser = await prisma.user.create({
                    data: input,
                });

                return newUser;
            } catch (error) {
                throw new Error("Failed to create user");
            }
        },
    })
    .query("hello", {
        resolve: () => {
            return "Hello, World!";
        },
    });

export default createWebHandler({
    router,
});

import { createNextApiHandler } from "@trpc/server/adapters/next";
import { router } from "../../trpc";

export default createNextApiHandler({
    router,
});

import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export default async function handler(req, res) {
    if (req.method === "POST") {
        try {
            const newUser = await prisma.user.create({
                data: req.body,
            });
            const serializedNewUser = {
                ...newUser,
                ID_CARD_NO: newUser.ID_CARD_NO.toString(),
            };
            res.status(201).json(serializedNewUser);
        } catch (error) {
            res.status(500).json({ error: error.message });
            // res.status(500).json({ error: "Failed to create user" });
        }
    } else if (req.method === "GET") {
        try {
            if (req.query.id) {
                const userId = parseInt(req.query.id, 10);
                const user = await getUserById(userId);
                if (user) {
                    const serializedUser = {
                        ...user,
                        ID_CARD_NO: user.ID_CARD_NO.toString(),
                    };
                    res.status(200).json(serializedUser);
                } else {
                    res.status(404).json({ error: "User not found" });
                }
            } else {
                const users = await getUsers();
                const serializedUsers = users.map((user) => {
                    return {
                        ...user,
                        ID_CARD_NO: user.ID_CARD_NO.toString(),
                    };
                });
                res.status(200).json(serializedUsers);
            }
        } catch (error) {
            res.status(500).json({ error: "Failed to fetch users" });
        }
    } else {
        res.status(405).json({ error: "Method not allowed" });
    }
}

async function getUsers() {
    try {
        const users = await prisma.user.findMany();
        return users;
    } catch (error) {
        throw new Error("Failed to fetch users");
    }
}

async function getUserById(userId) {
    try {
        const user = await prisma.user.findUnique({
            where: { USER_ID: userId },
        });
        return user;
    } catch (error) {
        throw new Error("Failed to fetch user");
    }
}

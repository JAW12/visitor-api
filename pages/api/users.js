import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export default async function handler(req, res) {
    if (req.method === "POST") {
        try {
            const newUser = await prisma.user.create({
                data: req.body,
            });
            res.status(201).json(newUser);
        } catch (error) {
            res.status(500).json({ error: "Failed to create user" });
        }
    } else if (req.method === "GET") {
        try {
            if (req.query.id) {
                const userId = parseInt(req.query.id, 10);
                const user = await getUserById(userId);
                if (user) {
                    res.status(200).json(user);
                } else {
                    res.status(404).json({ error: "User not found" });
                }
            } else {
                const users = await getUsers();
                res.status(200).json(users);
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

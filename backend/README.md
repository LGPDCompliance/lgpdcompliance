# LGPD Compliance Back-end Service

Modulo da aplicação responsável por autenticação dos usuários.

## Generate tokens for .env File

```bash
node
```

```bash
> require('crypto').randomBytes(64).toString('hex')
```


## Migrate database Local

```bash
npx prisma migrate dev
```

## Migrate database Production

Update doc env file and run the following command.

```bash
npx prisma migrate deploy
```

## Generate Database ERD 

1. Copy the model as text-plain in  `prisma/schema.prisma`
2. Paste in this site: [prisma-erd](https://prisma-erd.simonknott.de/)

## References

- [JWT Authentication Tutorial - Node.js](https://www.youtube.com/watch?v=mbsmsi7l3r4)
- [How to Build an Authentication](https://www.section.io/engineering-education/how-to-build-authentication-api-with-jwt-token-in-nodejs/)
- [How to connect prisma with MySQL](https://youtu.be/CQcaeIhVB8c)

## Authors

- [@rafaelfigueredog](https://www.github.com/rafaelfigueredog)
- [@lucasmatheus1](https://github.com/lucasmatheus1)

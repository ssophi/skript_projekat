import express from 'express'
import bodyParser from 'body-parser'

import adminRoutes from './routes/admin_routes.js'

const app = express()
const PORT = process.env.PORT || 5000;

app.use(bodyParser.json())

// app.use('/users', usersRoutes)
// app.use('/blog', blogPostRoutes)

app.use('/admin', adminRoutes)

app.get('/', (req, res) => {
    res.send("Hello from Homepage")
})

app.listen(PORT, () => console.log(`Server running on port ${PORT}`))
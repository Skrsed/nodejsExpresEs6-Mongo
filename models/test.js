import 'mongoose'

export default mongoose.model('Test', new mongoose.Schema({
    name: String
}))

class UserModel {
    
    var userName, gender, avatar: String
    var dateOfBirthday: Int
    var satus: Bool
    
     init(userName: String, gender: String, avatar: String, dateOfBirthday: Int, satus: Bool) {
        self.userName = userName
        self.gender = gender
        self.avatar = avatar
        self.dateOfBirthday = dateOfBirthday
        self.satus = satus
    }
    
    
}

﻿namespace btl.laptop
{
    public class NguoiDung
    {
        public string username;
        public string email;
        public string password;
        public string repassword;

        public NguoiDung(string username, string email, string password, string repassword)
        {
            this.username = username;
            this.email = email;
            this.password = password;
            this.repassword = repassword;
        }
    }
}
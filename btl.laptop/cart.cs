﻿namespace btl.laptop
{
    public class cart : Product
    {
        public int quantity { get; set; }
        public cart(string id, string name, string price, string images, int quantity)
        {
            this.Id = id;
            this.Name = name;
            this.Price = price;
            this.Images = images;
            this.quantity = quantity;
        }
    }
}
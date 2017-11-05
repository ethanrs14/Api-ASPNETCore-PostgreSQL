using System;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace TestApiASPNETCore.Models
{
    public class PersonsContext : DbContext

    {
        public DbSet<Person> persons { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseNpgsql(@"Server=localhost;Port=5432;Database=DBTest;User Id=test;Password=test;");
        }
    }

    [Table("persons")]
    public class Person
    {
        [Column("id")]
        public int Id { get; set; }

        [Column("name")]
        public string Name { get; set; }
    }
}

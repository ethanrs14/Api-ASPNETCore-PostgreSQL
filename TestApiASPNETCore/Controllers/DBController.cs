using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using TestApiASPNETCore.Models;

namespace TestApiASPNETCore.Controllers
{
    [Route("api/[controller]")]
    public class DBController : Controller
    {
        // GET api/db
        [HttpGet]
        public IEnumerable<string> Get()
        {
            using (var db = new PersonsContext())
            {
                var persons = db.persons.OrderBy(p => p.Id).ToList<Person>();
                List<string> test = persons.Select(p => p.Name).ToList();
                return test;
            }
        }
    }
}

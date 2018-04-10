using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LeoAlvisService.Model;
namespace LeoAlvisService.Repositories
{
    public class BaseRepository<T> : IRepository<T> where T : class
    {
        public void Add(T entity)
        {
            using(var db = new YGFLDBEntities())
            {
                db.Set<T>().Add(entity);
                db.SaveChanges();
            }

        }

        public void DeleteById(int id)
        {
            using (var db = new YGFLDBEntities())
            {
                T entity = db.Set<T>().Find(id);
                if(entity != null)
                {
                    db.Set<T>().Remove(entity);

                }
                db.SaveChanges();
            }
        }

        public T FindById(int id)
        {
            using (var db = new YGFLDBEntities())
            {
                return db.Set<T>().Find(id);
            }

        }

        public List<T> GetAll()
        {
            using (var db = new YGFLDBEntities())
            {
                return db.Set<T>().ToList();
            }
        }

        public void Update(T entity)
        {
            using (var db = new YGFLDBEntities())
            {
                db.Entry(entity).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }

        }
    }
}
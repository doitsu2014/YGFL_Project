using LeoAlvisService.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeoAlvisService.Repositories
{
    public interface IArtistRepository
    {

        List<Artist> GetAllActive();
    }

    public class ArtistRepository : BaseRepository<Artist>, IArtistRepository
    {
       
        public List<Artist> GetAllActive()
        {
            using (var db = new YGFLDBEntities())
            {
                return db.Set<Artist>().Where(a => a.IsActive == true).ToList();
            }
        }

    }
}

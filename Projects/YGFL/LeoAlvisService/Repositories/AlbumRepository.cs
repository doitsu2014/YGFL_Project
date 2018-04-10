using LeoAlvisService.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeoAlvisService.Repositories
{
    public interface IAlbumReponsitory
    {
        List<Album> GetAllActive();
    }
    public class AlbumRepository : BaseRepository<Album>, IAlbumReponsitory
    {
        public List<Album> GetAllActive()
        {
            using (var db = new YGFLDBEntities())
            {
                return db.Set<Album>().Where(a => a.IsActive == true).ToList();
            }
        }
    }
}

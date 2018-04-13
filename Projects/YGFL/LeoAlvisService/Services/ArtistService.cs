using LeoAlvisService.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeoAlvisService.Services
{
    public interface IArtistService
    {
    }

    public class ArtistService : ArtistRepository, IArtistService
    {
    }
}

using SampleTalk.Models;

namespace SampleTalk.Repositories
{
    public interface IAccountRepository
    {
        bool ExistEmail(string email);
        long Save(Account account);
    }
}
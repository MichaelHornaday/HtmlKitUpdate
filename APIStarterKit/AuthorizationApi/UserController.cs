using APIStarterKit.Models;
using System.Web.Http;

//The following APIs are an example of authorization APIs you will create in your own application code base.
namespace APIStarterKit.ApiControllers
{
    public class UserController : ApiController
    {
        //GenerateToken API is called by the Izenda Front End.
        //The token returned by this call is serialized and encrypted.
        [HttpGet]
        [Route("authapi/user/GenerateToken")]
        public IHttpActionResult GenerateToken()
        {
            //The username and tenant below are in plaintext for sample purposes only.
            //In a production use case these hard coded values should be substituted with inherited values from existing authentication processes.
            var username = "IzendaAdmin";
            var tenantName = "System";
            var user = new UserInfo { UserName = username, TenantUniqueName = tenantName };
            string token = APIStarterKit.TokenAuthorization.GetToken(user);
            return Ok(new { Token = token });
        }
        //validateIzendaAuthToken API is called by the Izenda Back End.
        //The token returned by this call is deserialized and decrypted.
        [HttpGet]
        [Route("authapi/user/validateIzendaAuthToken")]
        public UserInfo ValidateIzendaAuthToken(string access_token)
        {
            var userInfo = APIStarterKit.TokenAuthorization.GetUserInfo(access_token);
            return userInfo;
        }
        //GetIzendaAccessToken is used by the Izenda Back End for exporting purposes.
        [HttpGet]
        [AllowAnonymous]
        [Route("authapi/user/GetIzendaAccessToken")]
        public IHttpActionResult GetIzendaAccessToken(string message)
        {
            var userInfo = APIStarterKit.TokenAuthorization.DecryptIzendaAuthenticationMessage(message);
            var token = APIStarterKit.TokenAuthorization.GetToken(userInfo);
            return Ok(new { Token = token });
        }
    }
}
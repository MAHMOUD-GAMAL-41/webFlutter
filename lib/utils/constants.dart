const String kBaseUrl = "https://petology.orangedigitalcenteregypt.com";
//* Auth Endpoints
const String kAuthLogin = "$kBaseUrl/auth/login";
const String kAuthFacebook = "$kBaseUrl/auth/oauth2/facebook/";
const String kAuthGoogle = "$kBaseUrl/auth/oauth2/google/";
const String kFacebookCallback = "$kBaseUrl/auth/oauth2/facebook/callback";
const String kGoogleCallback = "$kBaseUrl/auth/oauth2/google/callback";
const String kAuthRegister = "$kBaseUrl/auth/register";
//* Pets Endpoints
const String kSharedPets = "/pets";
const String kSpecificCategory = "$kBaseUrl/categories/";
const String kListPets = kBaseUrl + kSharedPets;
const String kFilterPets = "$kListPets/filters/";
const String kRequestPet = "$kListPets/request";
//* Static Endpoints
const String kStatic = "$kBaseUrl/static";
const String kHowTo = "$kStatic/how-to/";
const String kHomeData = "$kStatic/homepage";
const String kFirstSec = "$kHomeData/first-section";
const String kSecondSec = "$kHomeData/second-section";
const String kfooter = "$kHomeData/footer";
const String kPetNeeds = "$kHomeData/pet-needs";

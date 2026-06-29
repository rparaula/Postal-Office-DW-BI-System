namespace COSCPFWA.Services
{
    public static class PasswordService
    {
        public static bool VerifyPassword(string enteredPassword, string storedPasswordHash)
        {
            // Demo-only behavior: replace with BCrypt/PBKDF2 or another real password hasher for production.
            return string.Equals(enteredPassword ?? string.Empty, storedPasswordHash ?? string.Empty);
        }
    }
}

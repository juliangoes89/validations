using System;
using validationApp;
using Xunit;

namespace validationAppTests
{
    public class UnitTest1
    {
        [Fact]
        public void Test_Valido()
        {
            var notification =  Program.validateStringWithIfs("Abcde");
            Assert.False(notification.hasErrors(), "Debería ser válido, tiene 5 caracteres y empieza por una letra");
        }
        [Fact]
        public void Test_Nulo()
        {
            var notification =  Program.validateStringWithIfs(null);
            Assert.True(notification.hasErrors(), "No Debería ser válido al ser nulo");
        }
        [Fact]
        public void Test_Vacio()
        {
            var notification =  Program.validateStringWithIfs("");
            Assert.True(notification.hasErrors(), "No Debería ser válido al ser vacio");
        }
        [Fact]
        public void Test_NoValido_Corto()
        {
            var notification =  Program.validateStringWithIfs("Abcd");
            Assert.Equal("La longitud del texto debe estar entre 5 y 32",notification.printErrors());
            Assert.True(notification.hasErrors(), "No Debería ser válido, tiene menos de 5 caracteres");
        }
        [Fact]
        public void Test_NoValido_Largo()
        {
            var notification =  Program.validateStringWithIfs("Abcdefghijklmnopqrstuvwxyz1234567890");
            Assert.Equal("La longitud del texto debe estar entre 5 y 32",notification.printErrors());
            Assert.True(notification.hasErrors(), "No Debería ser válido, tiene mas de 32 caracteres");
        }
        [Fact]
        public void Test_NoValido_EmpiezaMinuscula()
        {
            var notification =  Program.validateStringWithIfs("abcde");
            Assert.Equal("La palabra debe empezar por alguna de estas letras en mayusula A-Z",notification.printErrors());
            Assert.True(notification.hasErrors(), "No Debería ser válido, empieza con minuscula");
        }
        [Fact]
        public void Test_NoValido_EmpiezaNumero()
        {
            var notification =  Program.validateStringWithIfs("1bcde");
            Assert.Equal("La palabra debe empezar por alguna de estas letras en mayusula A-Z",notification.printErrors());
            Assert.True(notification.hasErrors(), "No Debería ser válido, empieza con minuscula");
        }
        [Fact]
        public void Test_NoValido_EmpiezaEspacio()
        {
            var notification =  Program.validateStringWithIfs(" bcde");
            Assert.Equal("La palabra debe empezar por alguna de estas letras en mayusula A-Z",notification.printErrors());
            Assert.True(notification.hasErrors(), "No Debería ser válido, empieza con minuscula");
        }
        [Theory]
        [InlineData(null)]
        [InlineData("")]
        public void Test_NoValido_Vacio(string value)
        {
            var notification =  Program.validateStringWithIfs(value);
            Assert.True(notification.hasErrors(), "No Debería ser válido al ser vacio");
        }
        
        [Theory]
        [InlineData("abcde")]
        [InlineData("1bcde")]
        [InlineData(" bcde")]
        public void Test_NoValido_EmpiezaCon(string value)
        {
            var notification =  Program.validateStringWithIfs("abcde");
            Assert.Equal("La palabra debe empezar por alguna de estas letras en mayusula A-Z",notification.printErrors());
            Assert.True(notification.hasErrors(), "No Debería ser válido, empieza con minuscula o con un numero o con espacio");
        }
    }
}

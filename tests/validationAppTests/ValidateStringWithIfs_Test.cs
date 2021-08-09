using System;
using validationApp;
using Xunit;

namespace validationAppTests
{
    public class UnitTest1
    {
        [Fact]
        public void Program_validateStringWithIfs_Valido_Success()
        {
            var notification =  Program.validateStringWithIfs("Abcde");
            Assert.False(notification.hasErrors(), "Debería ser válido, tiene 5 caracteres y empieza por una letra");
        }
        [Fact]
        public void Program_validateStringWithIfs_Nulo_Fail()
        {
            var notification =  Program.validateStringWithIfs(null);
            Assert.True(notification.hasErrors(), "No Debería ser válido al ser nulo");
        }
        [Fact]
        public void Program_validateStringWithIfs_Vacio_Fail()
        {
            var notification =  Program.validateStringWithIfs("");
            Assert.True(notification.hasErrors(), "No Debería ser válido al ser vacio");
        }
        [Fact]
        public void Program_validateStringWithIfs_NoValido_Corto_Fail()
        {
            var notification =  Program.validateStringWithIfs("Abcd");
            Assert.Equal("La longitud del texto debe estar entre 5 y 32",notification.printErrors());
            Assert.True(notification.hasErrors(), "No Debería ser válido, tiene menos de 5 caracteres");
        }
        [Fact]
        public void Program_validateStringWithIfs_NoValido_Largo_Fail()
        {
            var notification =  Program.validateStringWithIfs("Abcdefghijklmnopqrstuvwxyz1234567890");
            Assert.Equal("La longitud del texto debe estar entre 5 y 32",notification.printErrors());
            Assert.True(notification.hasErrors(), "No Debería ser válido, tiene mas de 32 caracteres");
        }
        [Fact]
        public void Program_validateStringWithIfs_EmpiezaMinuscula_Fail()
        {
            var notification =  Program.validateStringWithIfs("abcde");
            Assert.Equal("La palabra debe empezar por alguna de estas letras en mayusula A-Z",notification.printErrors());
            Assert.True(notification.hasErrors(), "No Debería ser válido, empieza con minuscula");
        }
        [Fact]
        public void Program_validateStringWithIfs_NoValido_EmpiezaNumero_Fail()
        {
            var notification =  Program.validateStringWithIfs("1bcde");
            Assert.Equal("La palabra debe empezar por alguna de estas letras en mayusula A-Z",notification.printErrors());
            Assert.True(notification.hasErrors(), "No Debería ser válido, empieza con minuscula");
        }
        [Fact]
        public void Program_validateStringWithIfs_NoValido_EmpiezaEspacio_Fail()
        {
            var notification =  Program.validateStringWithIfs(" bcde");
            Assert.Equal("La palabra debe empezar por alguna de estas letras en mayusula A-Z",notification.printErrors());
            Assert.True(notification.hasErrors(), "No Debería ser válido, empieza con minuscula");
        }
        
        [Theory]
        [InlineData(null)]
        [InlineData("")]
        public void Program_validateStringWithIfs_NoValido_Vacio_Fail(string value)
        {
            var notification =  Program.validateStringWithIfs(value);
            Assert.True(notification.hasErrors(), "No Debería ser válido al ser vacio");
        }
        
        [Theory]
        [InlineData("abcde")]
        [InlineData("1bcde")]
        [InlineData(" bcde")]
        public void Program_validateStringWithIfs_NoValido_EmpiezaCon_Fail(string value)
        {
            var notification =  Program.validateStringWithIfs(value);
            Assert.Equal("La palabra debe empezar por alguna de estas letras en mayusula A-Z",notification.printErrors());
            Assert.True(notification.hasErrors(), "No Debería ser válido, empieza con minuscula o con un numero o con espacio");
        }
    }
}

using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text.RegularExpressions;

namespace validationApp
{
    public class Program
    {
        static void Main(string[] args)
        {
            excecuteMillionTimes();
        }
        public static void excecuteMillionTimes(){
            var proc = Process.GetCurrentProcess();
            var mem = proc.WorkingSet64;
            var cpu = proc.TotalProcessorTime;
            var watch = System.Diagnostics.Stopwatch.StartNew();
            for (int i = 0; i < 1000000; i++)
            {
                excecuteCasesWithIfs();
            }
            watch.Stop();
            Console.WriteLine($"Con los Ifs: {watch.ElapsedMilliseconds} ms");
            Console.WriteLine("My process used working set {0:n3} K of working set and CPU {1:n} msec", mem / 1024.0, cpu.TotalMilliseconds);
            if (!watch.IsRunning)
            watch.Restart();
            for (int i = 0; i < 1000000; i++)
            {
                excecuteCasesWithRegularExpression();
            }
            watch.Stop();
            Console.WriteLine($"Con las expresiones regulares: {watch.ElapsedMilliseconds} ms");
            Console.WriteLine("My process used working set {0:n3} K of working set and CPU {1:n} msec", mem / 1024.0, cpu.TotalMilliseconds);
            if (!watch.IsRunning)
            watch.Restart();
            for (int i = 0; i < 1000000; i++)
            {
                excecuteCasesWithExceptions();
            }
            watch.Stop();
            Console.WriteLine($"Con las excepciones : {watch.ElapsedMilliseconds} ms");
            Console.WriteLine("My process used working set {0:n3} K of working set and CPU {1:n} msec", mem / 1024.0, cpu.TotalMilliseconds);
        }
        public static void excecuteCasesWithIfs(){
            Notification notify1 = validateStringWithIfs("Abcde");
            Console.WriteLine(notify1.printErrors());
            Notification notify2 = validateStringWithIfs("Abc");
            Console.WriteLine(notify2.printErrors());
            Notification notify3 = validateStringWithIfs("Abcdefghijklmnopqrstuvwxyz1234567890");
            Console.WriteLine(notify3.printErrors());
            Notification notify4 = validateStringWithIfs("abcde");
            Console.WriteLine(notify4.printErrors());
            
        }
        public static void excecuteCasesWithRegularExpression(){
            Notification notify1 = validateStringWithRegularExpression("Abcde");
            Console.WriteLine(notify1.printErrors());
            Notification notify2 = validateStringWithRegularExpression("Abc");
            Console.WriteLine(notify2.printErrors());
            Notification notify3 = validateStringWithRegularExpression("Abcdefghijklmnopqrstuvwxyz1234567890");
            Console.WriteLine(notify3.printErrors());
            Notification notify4 = validateStringWithRegularExpression("abcde");
            Console.WriteLine(notify4.printErrors());
        }
        public static void excecuteCasesWithExceptions(){
            try {
                validateStringWithExceptions("Abcde");
            }catch(Exception e){
                Console.WriteLine(e.Message);
            }
            try {
                validateStringWithExceptions("Abc");
            }catch(Exception e){
                Console.WriteLine(e.Message);
            }
            try {
                validateStringWithExceptions("Abcdefghijklmnopqrstuvwxyz1234567890");
            }catch(Exception e){
                Console.WriteLine(e.Message);
            }
            try {
                validateStringWithExceptions("abcde");
            }catch(Exception e){
                Console.WriteLine(e.Message);
            }
        }
        public static Notification validateStringWithIfs(string input){
            Notification notification = new Notification();
            Boolean isEmpty = validateNullOrEmpty(input, notification);
            if(!isEmpty){
                if(input.Length < 5 || input.Length > 32  ){
                    notification.addError("La longitud del texto debe estar entre 5 y 32");
                }
                Boolean found = searchFirstMayAlphabeth(input);
                if(!found){
                    notification.addError("La palabra debe empezar por alguna de estas letras en mayusula A-Z");
                }
            }
            return notification;
        }
        public static Notification validateStringWithRegularExpression(string input){
            Notification notification = new Notification();
            Boolean isEmpty = validateNullOrEmpty(input, notification);
            if(!isEmpty){
                var regex = @"^[A-Z].{4,32}$";
                var match = Regex.Match(input, regex, RegexOptions.None);
                if (!match.Success)
                {
                    notification.addError("La longitud del texto debe estar entre 5 y 32 y debe empezar con una letra Mayúscula");
                }
            }
            return notification;
        }
        public static void validateStringWithExceptions(string input){
            Boolean isEmpty = String.IsNullOrEmpty(input);
            if(!isEmpty){
                if (input.Length < 5 || input.Length > 32) throw new Exception("La longitud del texto debe estar entre 5 y 32");
                if (!searchFirstMayAlphabeth(input)) throw new Exception("La palabra debe empezar por alguna de estas letras en mayusula A-Z");
            }
        }
        private static Boolean validateNullOrEmpty(string input, Notification notification){
            if(String.IsNullOrEmpty(input)){
                notification.addError("La cadena era vacía");
                return true;
            }else{
                return false;
            }       
        }

        private static Boolean searchFirstMayAlphabeth(string input){
            Char[] alphabet = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
            Boolean found = false;
            foreach (var letter in alphabet)
            {
                if(input.StartsWith(letter)){
                    found = true;
                    break;
                }
            }
            return found;
        }
    }
}


using System;
using System.Collections.Generic;

public class Notification {
        private String errormsg = "";
        private List<String> errors = new List<string>();
        public void addError(String message) { errors.Add(message); }
        public Boolean hasErrors() {
            return errors.Count != 0;
        }
        public String printErrors(){
            foreach (var error in errors)
            {
                errormsg += error;
            }
            return errormsg;
        }
}
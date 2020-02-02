### _IF_
When rendering a page it is common that the rendering varies depending on the exact content of the page or the context in which the page is rendered.
The IF macro can do this. The syntax is: _IF{ "condition" then="then text" else="else text" }%_.
Copy all of the following to Sandbox.TestMacros tosee some examples
```
<verbatim>
%STARTSECTION{ "ex3" }%
%IF{ "$theText='birthday'" then="%RED%" }%
The %IF{ "defined theText"
         then="%theText%"
         else="holiday" }% of %theNAME% is %IF{ "$theText='birthday'" 
                                                then="%theDATE%"
                                                else="anytime" }%.

%IF{ "$theText='birthday'" then="%ENDCOLOR%" }%
%ENDSECTION{ "example3" }%
</verbatim>

<verbatim>%INCLUDE{ "%TOPIC%" 
              section="example3" 
              theText="birthday" 
              theNAME="Main.%USERNAME%" 
              theDATE="7 December" }%</verbatim>
is expanded to<br />
%INCLUDE{ "%TOPIC%" 
              section="example3" 
              theText="birthday" 
              theNAME="Main.%USERNAME%" 
              theDATE="7 December" }%

Whereas this:<br />
<verbatim>%INCLUDE{ "%TOPIC%" 
             section="example3" 
             theNAME="Main.%USERNAME%" 
             theDATE="7 December" 
}%</verbatim>
becomes<br />
%INCLUDE{ "%TOPIC%" 
            section="example3" 
            theNAME="Main.%USERNAME%" 
            theDATE="7 December" }%
```

The syntax of the =condition= in the IF macro is unusual in that it uses (dollar) $variablename to refer to the macro value,
rather than the usual %<nop>variablename%. Also note the use of single quotes around the comparison value.

Ex3 also demonstrates a convenient feature of the macro specification. All text from _%MACRO{_ to _}%_ is replaced by the substitution result.
There is no need to put all information on the one line. As a consequence, the parameter list of the macro can be formatted for readability.
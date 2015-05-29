# HISS
The HISS Language: A compact and concise mix between HTML and CSS, coded in processing

Here is a couple use cases for HISS

%
text{ size = 12, color = (0, 0, 0), font = Helvetica }
/%
~
text{ "hello" }
/~
 
 
// codes to:
 
<!DOCTYPE html>
<html>
    <head>
        <style>
            p {
                font-size: 12px;
                color: (0, 0, 0);
                font-family: helvetica;
            }
        </style>
    </head>
    <body>
        <p> hello </p>
    </body>
</html>
 
_______________________________________________________
 
%
oList{ color = (255, 0, 0) }
/%
~
oList{
    i1 = "hello"
    i2 = "my"
    i3 = "name"
    i4 = "is"
    i5 = "noah"
}
/~
 
//codes to:
 
<!DOCTYPE html>
<html>
    <head>
        <style>
            ol{
                color: (255, 0, 0);
            }
        </style>
    </head>
    <body>
        <ol>
            <li> "hello" </li>
            <li> "my" </li>
            <li> "name" </li>
            <li> "is" </li>
            <li> "noah" </li>
        </ol>
    </body>
</html>
 
_______________________________________________________
 
%
text{ font = impact }
/%
~
img{ source = cat.jpg, size = (500px, 500px) }
text{ "Cute!" }
text{ "I took this pucture yesterday" }
/~
 
 
// codes to:
 
<!DOCTYPE html>
<html>
    <head>
        <style>
            p {
                font-family: impact;
            }
        </style>
    </head>
    <body>
        <img src = "cat.jpg" height = "500px" width = "500px" />
        <p> Cute! </p>
        <p> I took this pucture yesterday </p>
    </body>
</html>

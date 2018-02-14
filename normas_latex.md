# Normas básicas de LaTeX

Se asume una noción básica de (como mínimo) la sintaxis de
LaTeX.

## Atención
Estas normas están sujetas al uso del [preámbulo](https://github.com/ApuntsFME/LatexFME/blob/master/preamble_es.tex) que
hemos creado y bajo ningún concepto se deben tomar como
unas directrices a seguir fuera de este contexto ni
se debe asumir que sean "buenas prácticas".

## Índice
* **[Normas de estilo](https://github.com/ApuntsFME/LatexFME/blob/master/normas_latex.md#normas-de-estilo)**
* **[Proposiciones, teoremas y demás](https://github.com/ApuntsFME/LatexFME/blob/master/normas_latex.md#proposiciones-teoremas-y-dem%C3%A1s)**
* **[Comandos útiles](https://github.com/ApuntsFME/LatexFME/blob/master/normas_latex.md#comandos-%C3%BAtiles)**
* **[Títulos demasiado largos](https://github.com/ApuntsFME/LatexFME/blob/master/normas_latex.md#t%C3%ADtulos-demasiado-largos)**
* **[\input](https://github.com/ApuntsFME/LatexFME/blob/master/normas_latex.md#input)**
* **[Referencias](https://github.com/ApuntsFME/LatexFME/blob/master/normas_latex.md#referencias)**
* **[Fragmentos comunes](https://github.com/ApuntsFME/LatexFME/blob/master/normas_latex.md#fragmentos-comunes)**
* **[Paquete tikz](https://github.com/ApuntsFME/LatexFME/blob/master/normas_latex.md#paquete-tikz)**

## Normas de estilo

Se asume que la normas más básicas de estilo son aplicadas,
aquí nombraremos algunas normas más especificas.

* El codigo deberá ser indentado y se deberán hacer saltos de
linia regularmente.
* Se colocarán los nombres de los vértices de un polígono en
sentido antihorario, a excepción de aquellos casos con una
razón argumentada.
* Siempre que sea posible se evitará el comando `\\`, poniendo
un su lugar dos saltos de linia.
* Es obligatorio puntuar las ecuaciones.
* Se prohibe el uso de las mayúsculas excepto cuando las normas
gramaticales así lo indican.
* Los espacios vectoriales (como E o F) se escribirán con lo
comando `\E` (o `\F`, respectivamente), aunque el comando no
cambie nada.
* Es obligatorio el uso de `\colon` en lugar de `:`.
* En las definiciones, la palabra definida deberá estar con
el comando `\comando_def{palabra_definida}` para que aparezca
en el glosario.
* El parámetro de los `enumerates` deberá ser:
  * `1.` si estamos enumerando varios ejemplos (dentro del entorno).
  * `(i)` si estamos enumerando enunciados equivalentes.
  * `i)` en cualquier otro caso.
* No se subrallará el texto.
* Se usará, preferiblemente, `\[ ... \]` en lugar de `\begin{equation*}
... \end{equation*}`.
* Para referenciar fórmulas o ecuaciones usaremos el comando `\eqref`.
Para cualquier otro item lo haremos tal y como aparece originalmente en
el documento.
* Los `label` deben comenzar con la abreviatura del entorno usado
seguida de dos puntos, por ejemplo: `\label{teo:tales}`,
`\label{prop:pr_prod_ext}`.
* Citaremos texto con los comandos ` `` ... '' `, en lugar de `" ... "`.

## Proposiciones, teoremas y demás

En nuestro [preámbulo](https://github.com/ApuntsFME/LatexFME/blob/master/preamble_es.tex),
hemos creado unos entornos para recoger los casos de entradas más comunes, aquí se hace un
listado de todas ellas. Estos comandos deberán ser usados siempre que sea posible.

Aunque la mayoría de entornos tienen un título opcional, se
recomienda no abusar de ellos y reservarlos para casos
especiales.

### Lemas
```tex
\begin{lema}[tituloOpcional]
  ...
\end{lema}
```

### Observación
```tex
\begin{obs}[tituloOpcional]
  ...
\end{obs}
```

### Proposición
```tex
\begin{prop}[tituloOpcional]
  ...
\end{prop}
```

### Demostración
Aunque se puede añadir un título opcional de la misma forma
que con el resto de entornos, recomendamos no hacerlo en
este caso. Colocar la demostración debajo de su proposición
o teorema correspondiente será suficiente para
identificarla.
```tex
\begin{proof}
  ...
\end{proof}
```

### Definición
```tex
\begin{defi}[tituloOpcional]
  ...
\end{defi}
```

### Corolario
```tex
\begin{col}[tituloOpcional]
  ...
\end{col}
```

### Ejemplo
```tex
\begin{example}[tituloOpcional]
  ...
\end{example}
```

### Ejercicio
Es importante distinguir entre ejemplos y ejercicios. Los
ejemplos son casos particulares resueltos, sin embargo, los
ejercicios están sin resolver. La finalidad de estos apuntes
no es ser una fuente de conocimiento universal, es ayudar. Y
creemos que los ejercicios sin resolver son una buena forma
de aprender.
```tex
\begin{ej}[tituloOpcional]
  ...
\end{ej}
```

### Teorema
Aunque el título se pase en este entorno como parámetro
opcional, **es obligatorio nominar los teoremas** (o
declararlos como `{teo*}`). Ya que los teoremas aparecen
en el índice principal. Una observación importante es que
no es necesario añadir la palabra *Teorema*, que se
añadirá de forma automática.
```tex
\begin{teo}[titulo]
  ...
\end{teo}
```

## Comandos útiles
Aquí detallamos una lista de los commandos que hemos añadido
al [preámbulo](https://github.com/ApuntsFME/LatexFME/blob/master/preamble_es.tex)
con el objeto de simplificar la esritura. Es importante saber
que **esta lista no está cerrada**, sientete libre de añadir
los commandos que creas convenientes, simpre que sean útiles
(y no casos particulares) y que los demás miembros estén de
acuerdo. Además **recuerda añadir a esta sección el comando**.

Para compilar usaremos el comando `make`, para evitar tiempos
de compilación demasiado largos.

### Conjuntos
Estos comandos nos permiten tener un acceso más rápido a los
principales conjuntos.

| Comando | Descripción |
| :--- | :--- |
| \n | Conjunto de los números naturales |
| \z | Conjunto de los números enteros |
| \q | Conjunto de los números fraccionarios |
| \cx | Conjunto de los números complejos |
| \real | Conjunto de los números reales |
| \E | Un espacio vectorial |
| \Po | Un espacio proyectivo |
| \Pa | Una partición |
| \k | Un cuerpo cualquiera |
| \R | Un sistema de referencia |
| \A | Un espacio afín |

### Otras utilidades
| Comando | Argumentos | Descripción |
| :--- | :--- | :--- |
| \ita | 1 | Pone en texto itálico el argumento |
| \inv | 1 | Coloca la inversa del argumento |
| \setb | 1 | Usado para hacer conjuntos. Coloca el argumento entre llaves |
| \vbrack | 1 | Coloca el argumento entre "<>" |
| \determinant | 1 | El argumento puede pasarse en forma matricial. Coloca el determinante del argumento |
| \abs | 1 | Coloca el valor absoluto del argumento |
| \Id | 0 | Coloca la identidad |
| \bb | 1 | Coloca el argumento en funte de conjunto |
| \cal | 1 | Coloca el argumento en fuente caligrafica |
| \im | 0 | Coloca Im |
| \rg | 0 | Coloca rg |
| \car | 0 | Coloca car |
| \vol | 0 | Coloca vol |
| \lp | 0 | Es equivalente a `\left(` |
| \rp | 0 | Es equivalente a `\right)` |
| \nuc | 0 | Coloca Nuc |
| \gr | 0 | Coloca gr |
| \fr | 0 | Coloca Fr |
| \ext | 0 | Coloca Ext |
| \inte | 0 | Coloca Int |
| \tr | 0 | Coloca tr |
| \tq | 0 | Coloca t.q. |
| \rie | 0 | Coloca Rie |
| \upint | 0 | Coloca una integral superior |
| \lowint | 0 | Coloca una integral inferior |

## Títulos demasiado largos

Si un título es demasiado largo para el header de la pagina
haremos lo siguiente si es un título de una `chapter`:

```tex
\chapter[Título medio opcional para el índice]{Título largo}
\chaptermark{Título corto para el header}
```

Si el título de de una `section`:

```tex
\section[Título obligatorio para el índice]
    {Título obligatorio largo
    \sectionmark{Título corto para el header}}
    \sectionmark{Título corto para el header}
```
En la primera linea cambiamos el título para la página actual
y en la segunda el de todas la siguientes. El título especificado
para el índice es obligatorio.

## \input
Cada tema estará en un fichero `.tex` diferente, para incluir
todos los ficheros en el mismo PDF, en el `main.tex` usaremos
el comando `\input`, por ejemplo

```tex
\input{tema_uno}
```
Incluye los contenidos del documento *tema_uno.tex*
(que se encuentra en la misma carpeta) en el documento
actual. Este comando es usado para reducir el tamaño de los
documentos y facilitar así su edición.

## Referencias

En esta sección daremos las guías para hacer referencias
tanto a dentro del documento como a fuera del mismo.

### Referecias a dentro del mismo documento
Para referenciar un teorema, una proposición o cualquier
otra cosa, debemos añadir la etiqueta `\label` a aquello
que queramos referenciar. Por ejemplo, si queremos
referenciar el teorema *de Tales*

```tex
\begin{teo}[de Tales]\label{teo:tales}
  ...
\end{teo}
```

En este caso, el comando `\label` toma como argumento
*teo:tales*. Es importante que este argumento sea **único**, es
por ello que colocamos el *teo:* delante, para reducir las
posibles colisiones. Ahora, para referenciar este teorema
usaremos el commando `\ref`

```tex
\ref{teo:tales}
```

que toma como argumento el mismo que hemos puesto en `\label`,
por eso es importante que sea único. Podemos usar `\eqref`
si queremos que el numero referenciado aparezca entre paréntesis.

### Referencias a fuera del documento
Aquí solo cubrimos la referencia a URLs, el resto de casos
no los cubrimos ya que no son muy comunes.

Para colocar un enlace a una URL, usamos el comando `\href`

```tex
\href{https://www.url.com}{texto}
```

En este caso, la palabra *texto* se podrá clickar y nos
llevaría a la URL *https://www.url.com*.

## Fragmentos comunes
Aquí se detalla una serie de fragmentos que suelen comunes
en la escritura de los apuntes y su uso es recomendado (en
lugar de comandos alternativos).

### Declaración de funciones
Aquí detallamos una función que va de los enteros a los
reales y que envía *x* a *f(x)*
```tex
\begin{aligned}
  f \colon \z &\to \real \\
  x &\mapsto f(x)
\end{aligned}
```
### Listas no ordenadas
Para declarar listas no ordenadas, usamos el entorno
*itemize*
```tex
\begin{itemize}
  \item Primer elemento
    ...
  \item Último elemento
\end{itemize}
```
Si trataís de comenzar un teorema, una proposición o una
demostración de esta manera, notaréis que desaparece el
salto de línea, para evitar esto, sencillamente usaremos
la instrucción `\item[]` de la siguiente manera:
```tex
\begin{itemize}
  \item[]
  \item Primer elemento
    ...
  \item Último elemento
\end{itemize}
```

### Listas ordenadas
Para hacer listas ordenadas, usamos el entorno *enumerate*
```tex
\begin{enumerate}[i)]
  \item Primer elemento
    ...
  \item Último elemento
\end{enumerate}
```
En este ejemplo, estamos enumerando en números romanos, que
es el recomendado para proposiciones de varias
declaraciones, aunque usaremos `(i)` si estamos listando
elementos que son equivalentes o `1.` si estamos listando
ejemplos (dentro del entorno correspondiente).

### Ecuaciones en varias líneas
A menudo, nos encontramos en una situación en la cual
una ecuación no nos cabe en una línea por temas de
espacio, entonces, usamos el siguiente entorno
```tex
\begin{gather*}
  Primera línea de la ecuación \\
  Segunda línea
\end{gather*}
```
Es importante no abusar de este entorno y reservarlo para
los casos en los que sea estrictamente necesario,
utilizando, siempre que sea posible
```tex
\[
  equation
\]
```

### Matrices
Para declarar una matriz usamos
```tex
\begin{pmatrix}
  a11 & a12 \\
  a21 & a22
\end{pmatrix}
```
Como se puede ver, separamos las columnas por ```&``` y las
filas por ```\\```.

Para matrices con corchetes, podemos usar el entorno
*bmatrix*, que se comporta exactamente igual que
*pmatrix* que usamos para matrices con paréntesis.

### Matrices con rayas
De nuevo, recordemos que podemos usar el entorno
*bmatrix* de la misma manera.

Para colocar líneas verticales, crearemos una columna
más, que rellenaremos con el comando ```\vline``` y para
crear líneas horizontales usaremos el comando
```\hline```. Aquí tenemos un ejemplo de una matriz
dividida en 4 partes
```tex
\begin{pmatrix}
  A & \vline & B \\
  \hline
  C & \vline & D
\end{pmatrix}
```
Es importante notar que no colocamos una nueva fila
después de ```\hline```.


### Casos
Es común encontrarnos con una función definida a trozos o
una situación en la cual necesitamos agrupar casos, para
ello, usaremos el entorno ```cases```
```tex
\begin{cases}
  0 & x \in \q \\
  1 & x \notin \q
\end{cases}
```
Como se puede observar, separamos los casos con `\\` y podemos
añadir `&` para especificar cuando se aplica ese caso.
Existe también un entorno que se comporta igual que este,
pero con la llave a la derecha, `rcases`.

### Número de elementos
Amenudo nos encontramos con situaciones en las que tenemos
que especificar el número de elementos en una suma, o en
un producto. Para esto usamos ```\overbrace``` y
```\underbrace```, dependiendo si queremos que el número de
elementos se muestre arriba o abajo respectivamente. Por
ejemplo el producto de *f* realizado *p* veces
```tex
\overbrace{f \cdots f}{p}
```

### Condiciones de varias líneas
No es raro encontrarse en situaciones en las cuales tenemos
dos o más variables recorriendo cosas distintas, de modo
que necesitamos varias condiciones, para ello usamos el
comando ```\substack```. Aquí damos un ejemplo en el cual las
condiciones son que *n* es natural y *r* es real
```tex
prod(n,r) = nr \quad
\substack{\forall n in \n \\ \forall r \in \real}
```
Dentro de `\substack` separamos las líneas por `\\`.

## Paquete tikz
El paquete *tikz* es un paquete muy potente usado para la
generación de gráficos. Aquí solo damos unas leves
pinceladas de cómo usar este paquete, para hacer un grafo
muy simple.

![grafo](https://github.com/ApuntsFME/LatexFME/blob/master/grafo.png)

Para hacer este grafo, usamos el entorno *tikzpicture*
```tex
\begin{tikzpicture}
\end{tikzpicture}
```
Ahora, declaramos los nodos de nuestro grafo con el comando
```\node```
```tex
\begin{tikzpicture}
  \node (B) {$B$};
  \node[left=of B] {$\overline{B}$};
\end{tikzpicture}
```
Este comando tiene un parametro opcional para especificar
la posición del nodo luego, entre paréntesis, otorgamos
una *id* al nodo, en nuestro caso es una *B*, por último
colocamos, entre llaves aquello que se verá. Es importante
acabar cada instrucción con punto y coma, ya que tikz tiene
su propio lenguaje ajeno a LaTeX.

Por último añadimos las flechas, con el comando ```edge```
```tex
\begin{tikzpicture}
	\node (B) {$\overline{B}$};
	\node[left=of B] {$B$}
	edge[<-,bend left=30] node[auto] {$S$} (B)
	edge[->,bend right=30] node[auto] {$T$} (B);
\end{tikzpicture}
```
Primero, observamos que el punto y coma lo colocamos
después de colocar todas las flechas. Es decir, las flechas
son propiedades del nodo. Vamos ahora a ver cómo se definen
las flechas.

Empecemos por los comandos opcionales que le pasamos.
Primero, *<-* nos indica que es una flecha y que va desde
el segundo nodo hasta el primero. *bend left=30* indica
que queremos la flecha curvada hacia la izquierda y cuanto.
Luego especificamos el primer nodo, para usar el nodo que
estamos definiendo usamos *node[auto]* luego, entre llaves,
el texto que se mostrará en la flecha y por último, el
segundo nodo, que especificamos por su *id* entre
paréntesis. Para acabar ponemos punto y coma para indicar
el fin del nodo.

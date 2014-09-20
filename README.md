## «Коды на некоммутативных группах»

Здесь хранятся записки лекций по курсу **«Коды на некоммутативных группах»**
(лектор: доц. В.М. Деундяк, [Мехмат ЮФУ](http://mmcs.sfedu.ru/), 2014).
(Имеются ввиду помехоустойчивые коды.) 
Скомпилированные PDF можно найти в
[разделе Releases](https://github.com/ulysses4ever/noncomm-group-codes/releases).
Курс в основном построен на результатах
[книги Циммермана](https://www.dropbox.com/s/4vym7s4zty2ee4e/Zimmermann.pdf?dl=0),
изложенных в более доступном стиле.

Материалы оформлены в Маркдауне с вставками из Латеха. Налажена 
компиляция в PDF отдельных лекций и всех сразу (см. `toPdf.sh` и 
`allToPdf.sh`). Возможно, позднее будет добавлена компиляция в HTML.

### Подробнее о формате

Формулы, естественно, в обычном _Латехе_. Как внутристрочные, так и выключные.
Можно использовать любые пакеты (пока подключены и используются AMS*-пакеты).
Любая подстройка генерируемого на промежуточной стадии Латеха выполняется
через редактирование шаблона (файл `template.latex`, первоначальная версия
сгенерирована Пандоком) или файла `head.inp`, который содержит определение
авторских команд. Без последнего можно было бы обойтись, включив всё в шаблон,
однако есть подозрение, что `head.inp` может быть полезен при генерации _HTML_
(такие эксперименты, в целом, успешные, уже проводились).

Из _Маркдауна_ используется в основном оформление заголовков и списков, и выделение
звёздами (полужирный шрифт) и нижними подчёркиваниями (италик). Хотя всё 
остальное тоже должно работать (однако см. замечания ниже).

_Определено несколько команд_ в стиле Латех для вставки полужирных слов типа 
«пример», «замечание» и т. п. (`\Ex`, `\Nt`, etc.).

К сожалению, в этой смеси присутствуют **конфликты**. 

1.  Просто так не вставляются окружения `begin/end`.
2.  Маркдаун не обрабатывается внутри аргументов команд (`\Cmd{no MD here}`).
    Зато в этих местах доступны `begin/end`.
    
Отчасти поэтому примеры, замечания и т. п. не оформлены как окружения типа
`newtheorem`. Однако там, где сочли нужным, добавили нумерацию собственными
счётчиками, так что отличие от `newtheorem` только в том, что нет дополнительных
вертикальных отступов (да и не факт, что они нужны в таких записках).

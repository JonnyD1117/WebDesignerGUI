# GraphicalWebUICompiler

The concept behind WebDesignerGUI, is that frontend web design ( by most metrics ) is a solved problem. That we KEEP resolving manually by teaching HTML, JavaScript, CSS, and webframe works like React or Angular...etc. This seems to me
to be a gigantic waste of time. Serious web designers use tools like Figma.

Tools like [Penpot](https://github.com/penpot/penpot) are amazing because they are FOSS but also because they are self-hostable and are basically a drop-in replacement for my personal Figma needs.

However, I still feel that the need for a tool to generate different website code (React, Angular, HTML/CSS/JS...etc) is the weak link in the chain.

## Architecture

Think about LLVM (Low-Level-Virtual-Machine). The break through for LLVM is that is a Free and Open Source project that has the ability to pass in different language grammars, generate a standardized IR, optimize that IR, and then output to machine code for the correctly target computing architecture.

WHY hasn't this been down for web ui development?

Different tools like Figma & Penpot could be sued to create to graphically create a site (or site-templates) and then output all of the sematic state that they collected from the user, into an output format that could be as simple as a large JSON file. This file could be tagged with which tool generated this output, this output could be fed as the input in the the `Graphical Web UI Compiler`. This input would generate an intermediate representation of the website into a standard set of features and output generators could be written to generate the code for websites given specific compilation target such as React, Angular, or even HTML/CSS/JS.

This architecture (especially as a FOSS project) could then be used to generate websites frontends easily by designers, and quickly enable designers to work with graphical tools that are meaningful to them and quickly generate the code base that is meaningful the devs who need to hook up the front and backends.

This process would need to be repeatable such that names of pages/componets/elements....etc do not randomly vary between different code generation updates.

### Diagram

[ Design Tool Output ]  -->  [ Parser ]  -->  [ IR (Intermediate Representation) ]
                                 ↓
                           [ Optimizer ]
                                 ↓
                          [ Code Generator ]
                                 ↓
                         [ HTML / CSS / JS / React / Vue ]

## Caveats

This tool would NOT generate actually dynamic behaviors itself, such as creating JS files that do some special operation;however, it seems to me like they could generate the files... such that they are present for the full stack devs to wire the fronten to the backend. Unless it is a fully frontend logic, such as a button being able to send the browser to a different page.

But given a "rich" enough feature set in the GUI web design program, maybe these sorts of hooks into the backend can at least be scaffolded out and help the backend devs wire up the UI to the DB.

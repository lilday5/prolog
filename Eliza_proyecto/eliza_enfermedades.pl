% ========== eliza_enfermedades.pl (MEJORADO) ==========
:- module(eliza_enfermedades, [enfermedad/1]).

%% EXPRESIONES GENERALES DE MALESTAR
enfermedad(['me', 'siento', 'mal']) :-
    writeln('Eliza: Lamento que te sientas mal. ¿Puedes describir qué síntomas tienes específicamente?'),
    writeln('Por ejemplo: fiebre, dolor de cabeza, erupciones, fatiga, etc.').

enfermedad(['no', 'me', 'siento', 'bien']) :-
    writeln('Eliza: ¿Qué síntomas estás experimentando? Puedo ayudarte a identificar si podrían estar'),
    writeln('relacionados con lupus o malaria.').

enfermedad(['estoy', 'enfermo']) :-
    writeln('Eliza: ¿Qué tipo de síntomas tienes? Describe lo que sientes para poder ayudarte mejor.').

enfermedad(['estoy', 'enferma']) :-
    writeln('Eliza: ¿Qué tipo de síntomas tienes? Describe lo que sientes para poder ayudarte mejor.').

%% SÍNTOMAS INDIVIDUALES BÁSICOS
enfermedad(['escalofrios']) :-
    writeln('Eliza: Los escalofríos pueden acompañar a la fiebre en malaria. ¿También tienes fiebre alta?').

enfermedad(['tengo', 'escalofrios']) :-
    writeln('Eliza: Los escalofríos pueden ser síntoma de malaria, especialmente con fiebre. ¿Has viajado recientemente?').

enfermedad(['erupciones']) :-
    writeln('Eliza: Las erupciones pueden ser síntoma de lupus. ¿Están en la cara o en otras partes del cuerpo?').

enfermedad(['tengo', 'erupciones']) :-
    writeln('Eliza: Las erupciones pueden indicar lupus. ¿Son rojas y están en la cara?').

enfermedad(['erupciones', 'en', 'la', 'piel']) :-
    writeln('Eliza: Las erupciones en la piel pueden ser síntoma de lupus. ¿Están específicamente en la cara?').

enfermedad(['tengo', 'erupciones', 'en', 'la', 'piel']) :-
    writeln('Eliza: Las erupciones en la piel pueden indicar lupus. ¿Están en la cara formando como una mariposa?').

enfermedad(['erupciones', 'en', 'la', 'cara']) :-
    writeln('Eliza: Las erupciones faciales son muy características de lupus, especialmente si forman una mariposa.').

enfermedad(['tengo', 'erupciones', 'en', 'la', 'cara']) :-
    writeln('Eliza: Las erupciones en la cara son un síntoma típico de lupus. ¿También tienes fatiga o dolor muscular?').

enfermedad(['estan', 'en', 'la', 'cara']) :-
    writeln('Eliza: Las erupciones faciales son muy sugestivas de lupus. ¿Forman como una mariposa en mejillas y nariz?').

enfermedad(['en', 'la', 'cara']) :-
    writeln('Eliza: Si las erupciones están en la cara, es muy característico de lupus. ¿También tienes otros síntomas?').

enfermedad(['si', 'en', 'la', 'cara']) :-
    writeln('Eliza: Las erupciones faciales son un síntoma clave de lupus. Te recomiendo consultar con un reumatólogo.').

enfermedad(['están', 'en', 'la', 'cara']) :-
    writeln('Eliza: Las erupciones faciales son muy características de lupus. ¿También tienes dolor en las articulaciones?').

enfermedad(['nauseas']) :-
    writeln('Eliza: Las náuseas pueden acompañar la fiebre en malaria. ¿También tienes vómitos?').

enfermedad(['tengo', 'nauseas']) :-
    writeln('Eliza: Las náuseas pueden ser síntoma de malaria. ¿Tienes fiebre y has viajado a zonas tropicales?').

enfermedad(['vomitos']) :-
    writeln('Eliza: Los vómitos pueden ser síntoma de malaria. ¿También tienes fiebre alta?').

enfermedad(['tengo', 'vomitos']) :-
    writeln('Eliza: Los vómitos con fiebre pueden indicar malaria. ¿Has estado en países tropicales?').

enfermedad(['sudoracion']) :-
    writeln('Eliza: La sudoración excesiva puede ser parte del ciclo febril de malaria. ¿Alternas entre fiebre y sudor?').

enfermedad(['tengo', 'sudoracion']) :-
    writeln('Eliza: La sudoración puede ser síntoma de malaria. ¿También tienes escalofríos y fiebre?').

%% SÍNTOMAS DE LUPUS
% Síntomas individuales de lupus
enfermedad(['tengo', 'erupciones', 'rojas']) :-
    writeln('Eliza: Las erupciones rojas pueden ser síntoma de lupus. ¿También tienes dolor en las articulaciones?').

enfermedad(['tengo', 'erupcion', 'facial']) :-
    writeln('Eliza: La erupción facial en forma de mariposa es característica del lupus. ¿Tienes fatiga?').

enfermedad(['tengo', 'dolor', 'muscular']) :-
    writeln('Eliza: El dolor muscular puede indicar lupus. ¿Has notado caída del cabello?').

enfermedad(['tengo', 'fatiga', 'extrema']) :-
    writeln('Eliza: La fatiga extrema es común en lupus. ¿Tienes erupciones en la piel?').

enfermedad(['tengo', 'caida', 'del', 'cabello']) :-
    writeln('Eliza: La caída del cabello puede ser síntoma de lupus. ¿También tienes fiebre?').

enfermedad(['tengo', 'ulceras', 'en', 'la', 'boca']) :-
    writeln('Eliza: Las úlceras bucales son frecuentes en lupus. ¿Tienes dolor en las articulaciones?').

enfermedad(['tengo', 'sensibilidad', 'a', 'la', 'luz']) :-
    writeln('Eliza: La fotosensibilidad es típica del lupus. ¿Has notado erupciones después del sol?').

enfermedad(['tengo', 'fenomeno', 'de', 'raynaud']) :-
    writeln('Eliza: El fenómeno de Raynaud puede asociarse con lupus. ¿Tus dedos se ponen blancos/azules con el frío?').

% Combinaciones de síntomas de lupus
enfermedad(['tengo', 'fatiga', 'y', 'dolor', 'muscular']) :-
    writeln('Eliza: Fatiga y dolor muscular son síntomas característicos de lupus. ¿También tienes erupciones?').

enfermedad(['tengo', 'erupcion', 'facial', 'y', 'fatiga']) :-
    writeln('Eliza: Estos síntomas sugieren fuertemente lupus. Es importante que consultes con un reumatólogo.').

enfermedad(['tengo', 'dolor', 'en', 'articulaciones', 'y', 'erupciones']) :-
    writeln('Eliza: Dolor articular y erupciones son muy sugestivos de lupus. ¿También tienes fiebre?').

%% SÍNTOMAS DE MALARIA (PALUDISMO)
% Síntomas leves de malaria
enfermedad(['tengo', 'cansancio', 'extremo']) :-
    writeln('Eliza: El cansancio extremo es un síntoma común de malaria. ¿Has estado en zonas tropicales?').

enfermedad(['tengo', 'fatiga', 'intensa']) :-
    writeln('Eliza: La fatiga puede indicar malaria. Los síntomas aparecen 10-15 días después de la picadura. ¿Tienes fiebre?').

% Síntomas graves de malaria
enfermedad(['tengo', 'convulsiones']) :-
    writeln('Eliza: Las convulsiones son un síntoma GRAVE de malaria. Necesitas atención médica urgente.').

enfermedad(['tengo', 'dificultad', 'para', 'respirar']) :-
    writeln('Eliza: La dificultad respiratoria es síntoma GRAVE de malaria. Busca cuidados de emergencia inmediatamente.').

enfermedad(['tengo', 'orina', 'oscura']) :-
    writeln('Eliza: La orina oscura o con sangre es síntoma GRAVE de malaria. Requiere atención médica urgente.').

enfermedad(['tengo', 'orina', 'con', 'sangre']) :-
    writeln('Eliza: La orina con sangre es síntoma GRAVE de malaria. Busca cuidados de emergencia inmediatamente.').

enfermedad(['tengo', 'ictericia']) :-
    writeln('Eliza: La ictericia (ojos y piel amarillos) es síntoma GRAVE de malaria. Necesitas atención urgente.').

enfermedad(['tengo', 'ojos', 'amarillos']) :-
    writeln('Eliza: Los ojos amarillos (ictericia) son síntoma GRAVE de malaria. Requiere atención médica urgente.').

enfermedad(['tengo', 'hemorragias']) :-
    writeln('Eliza: Las hemorragias anormales son síntoma GRAVE de malaria. Busca cuidados de emergencia inmediatamente.').

enfermedad(['tengo', 'confusion', 'mental']) :-
    writeln('Eliza: La confusión es síntoma GRAVE de malaria. Necesitas atención médica urgente.').

% Combinaciones de síntomas de malaria
enfermedad(['tengo', 'cansancio', 'y', 'fiebre']) :-
    writeln('Eliza: Estos pueden ser síntomas de malaria. ¿Has viajado a países tropicales recientemente?').

enfermedad(['tengo', 'escalofrios', 'y', 'fiebre']) :-
    writeln('Eliza: Escalofríos y fiebre son síntomas típicos de malaria. ¿Has estado en zonas tropicales?').

enfermedad(['tengo', 'fiebre', 'y', 'sudoracion']) :-
    writeln('Eliza: Este patrón de fiebre y sudoración es característico de malaria. ¿Has viajado recientemente?').

enfermedad(['tengo', 'convulsiones', 'multiples']) :-
    writeln('Eliza: Las convulsiones múltiples son síntoma MUY GRAVE de malaria. Llama a emergencias AHORA.').

%% PREGUNTAS DIAGNÓSTICAS
% Información sobre lupus
enfermedad(['que', 'es', 'lupus']) :-
    writeln('Eliza: El lupus es una enfermedad inflamatoria autoinmune donde el sistema inmunológico'),
    writeln('ataca los propios tejidos. Puede afectar articulaciones, piel, riñones, corazón y pulmones.').

enfermedad(['cuales', 'son', 'sintomas', 'de', 'lupus']) :-
    writeln('Eliza: Los síntomas de lupus incluyen: erupción facial en mariposa, fatiga, dolor muscular,'),
    writeln('caída del cabello, úlceras bucales, sensibilidad a la luz y dolor articular.').

% Información sobre malaria (paludismo)
enfermedad(['que', 'es', 'malaria']) :-
    writeln('Eliza: El paludismo es una enfermedad potencialmente mortal transmitida por mosquitos.'),
    writeln('Se da en países tropicales. Es causada por un parásito y NO se transmite entre personas.').

enfermedad(['que', 'es', 'paludismo']) :-
    writeln('Eliza: El paludismo es una enfermedad potencialmente mortal transmitida por mosquitos.'),
    writeln('Se da en países tropicales. Es causada por un parásito y NO se transmite entre personas.').

enfermedad(['cuales', 'son', 'sintomas', 'de', 'malaria']) :-
    writeln('Eliza: Síntomas leves: cansancio extremo, fatiga. Síntomas GRAVES: convulsiones,'),
    writeln('dificultad respiratoria, orina oscura/sangre, ictericia, hemorragias, confusión.').

enfermedad(['cuales', 'son', 'sintomas', 'de', 'paludismo']) :-
    writeln('Eliza: Síntomas leves: cansancio extremo, fatiga. Síntomas GRAVES: convulsiones,'),
    writeln('dificultad respiratoria, orina oscura/sangre, ictericia, hemorragias, confusión.').

%% SÍNTOMAS GENERALES
enfermedad(['tengo', 'fiebre']) :-
    writeln('Eliza: La fiebre puede indicar varias condiciones. ¿Tienes escalofríos o erupciones?').

enfermedad(['fiebre']) :-
    writeln('Eliza: La fiebre puede ser síntoma de malaria o infección. ¿También tienes escalofríos?').

enfermedad(['tengo', 'dolor', 'de', 'cabeza']) :-
    writeln('Eliza: El dolor de cabeza puede tener varias causas. ¿También tienes fiebre o náuseas?').

enfermedad(['dolor', 'de', 'cabeza']) :-
    writeln('Eliza: El dolor de cabeza puede acompañar la fiebre en malaria. ¿Tienes otros síntomas?').

enfermedad(['tengo', 'fiebre', 'y', 'dolor', 'de', 'cabeza']) :-
    writeln('Eliza: Estos síntomas pueden sugerir malaria o una infección. ¿Has viajado recientemente?').

enfermedad(['tengo', 'fiebre', 'alta']) :-
    writeln('Eliza: La fiebre alta puede ser síntoma de malaria. ¿También tienes escalofríos y sudoración?').

enfermedad(['fiebre', 'alta']) :-
    writeln('Eliza: La fiebre alta puede indicar malaria, especialmente si has viajado a zonas tropicales.').

%% RESPUESTAS AFIRMATIVAS Y UBICACIONES
enfermedad(['si']) :-
    writeln('Eliza: Entiendo. ¿Puedes contarme más detalles sobre tus síntomas?').

enfermedad(['no']) :-
    writeln('Eliza: Está bien. ¿Hay algún otro síntoma que tengas?').

enfermedad(['también', 'tengo', 'fiebre']) :-
    writeln('Eliza: Fiebre junto con otros síntomas puede indicar una condición más seria. ¿Has viajado recientemente?').

enfermedad(['tambien', 'tengo', 'fiebre']) :-
    writeln('Eliza: Fiebre junto con otros síntomas puede indicar una condición más seria. ¿Has viajado recientemente?').

enfermedad(['si', 'tengo', 'fiebre']) :-
    writeln('Eliza: La combinación de síntomas con fiebre es importante. ¿Has estado en países tropicales?').

enfermedad(['no', 'tengo', 'fiebre']) :-
    writeln('Eliza: Sin fiebre, otros síntomas como erupciones y fatiga pueden indicar lupus. ¿Tienes dolor articular?').

%% SÍNTOMAS ADICIONALES ESPECÍFICOS
enfermedad(['fatiga']) :-
    writeln('Eliza: La fatiga puede ser síntoma de lupus o malaria. ¿Tienes otros síntomas como erupciones o fiebre?').

enfermedad(['tengo', 'fatiga']) :-
    writeln('Eliza: La fatiga puede indicar lupus (si es crónica) o malaria (si es reciente). ¿Qué más sientes?').

enfermedad(['cansancio']) :-
    writeln('Eliza: El cansancio extremo puede ser síntoma de malaria. ¿Has viajado recientemente?').

enfermedad(['tengo', 'cansancio']) :-
    writeln('Eliza: El cansancio puede indicar malaria o lupus. ¿Tienes fiebre o erupciones?').

enfermedad(['dolor', 'muscular']) :-
    writeln('Eliza: El dolor muscular puede ser síntoma de lupus. ¿También tienes erupciones en la piel?').

enfermedad(['dolor', 'en', 'articulaciones']) :-
    writeln('Eliza: El dolor articular es muy común en lupus. ¿Tienes erupciones faciales?').

enfermedad(['dolor', 'articular']) :-
    writeln('Eliza: El dolor articular puede indicar lupus. ¿También tienes fatiga o erupciones?').

enfermedad(['caida', 'de', 'cabello']) :-
    writeln('Eliza: La caída del cabello puede ser síntoma de lupus. ¿También tienes erupciones o fatiga?').

enfermedad(['perdida', 'de', 'cabello']) :-
    writeln('Eliza: La pérdida de cabello puede indicar lupus. ¿Tienes otros síntomas como erupciones faciales?').

enfermedad(['sensibilidad', 'al', 'sol']) :-
    writeln('Eliza: La sensibilidad al sol es típica del lupus. ¿Te salen erupciones después de exponerte al sol?').

enfermedad(['fotosensibilidad']) :-
    writeln('Eliza: La fotosensibilidad es característica del lupus. ¿También tienes erupciones faciales?').
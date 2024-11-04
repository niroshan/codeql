import 'dummy';

function e1() {
    let array = [source('e1.1')];
    try {
        array.forEach(x => {
            throw x;
        });
        array.forEach(x => {
            throw source('e1.2');
        });
    } catch (err) {
        sink(err); // $ hasValueFlow=e1.2 hasValueFlow=e1.1
    }
}

function e2() {
    let array = [source('e2.1')];
    try {
        array.unknown(x => {
            throw x;
        });
        array.unknown(x => {
            throw source('e2.2');
        });
    } catch (err) {
        sink(err); // $ MISSING: hasValueFlow=e2.2
    }
}

function e3() {
    const events = getSomething();
    try {
        events.addEventListener('click', () =>{
            throw source('e3.1');
        });
        events.addListener('click', () =>{
            throw source('e3.2');
        });
        events.on('click', () =>{
            throw source('e3.3');
        });
        events.unknownMethod('click', () =>{
            throw source('e3.4');
        });
    } catch (err) {
        sink(err); // $ MISSING: hasValueFlow=e3.4
    }
}

function e4() {
    function thrower(array) {
        array.forEach(x => { throw x });
    }
    try {
        thrower([source("e4.1")]);
    } catch (e) {
        sink(e); // $ hasValueFlow=e4.1
    }
    try {
        thrower(["safe"]);
    } catch (e) {
        sink(e); // $ SPURIOUS: hasValueFlow=e4.1
    }
}

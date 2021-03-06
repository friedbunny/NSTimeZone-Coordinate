const fs = require('fs');
const csv = require('csv');
const plist = require('plist');
const child_process = require('child_process');

const rawTSV = fs.readFileSync('tz/zone1970.tab');
const savePath = 'NSTimeZone+Coordinate';

const parseOptions = {
    delimiter: '\t',
    comment: '#',
    skip_empty_lines: true,
    relax_column_count: true,
    columns: [false, 'coordinate', 'timezone', false]
}
let outputStaging = {};

csv.parse(rawTSV, parseOptions, function(err, data) {
    if (err) throw err;
    csv.transform(data, function(data) {
        outputStaging[data.timezone] = convertToDecimal(data.coordinate);
    }, function (err, data) {
        if (err) throw err;
        console.log(`Found ${Object.keys(outputStaging).length} timezones with coordinates`);
        fs.writeFile(`${savePath}/timezones.xml.plist`, plist.build(outputStaging), 'utf8', (err) => {
            if (err) throw err;
            fs.copyFileSync(`${savePath}/timezones.xml.plist`, `${savePath}/timezones.plist`);
            child_process.execSync(`plutil -convert binary1 ${savePath}/timezones.plist`);
            console.log('Updated timezones plists');
        });
    });
});

function convertToDecimal(coordinate) {
    // +-DDMM+-DDDMM
    var match = coordinate.match(/^([-+])([0-9][0-9])([0-5][0-9])([-+])([01][0-9][0-9])([0-5][0-9])$/);
    if (match) {
        var northSouth = onlyNegativesAllowed(match[1]);
        var latitude = round(Number(match[2]) + Number(match[3] / 60), 3);
        var eastWest = onlyNegativesAllowed(match[4]);
        var longitude = round(Number(match[5]) + Number(match[6] / 60), 3);

        //return (northSouth + latitude + ', ' + eastWest + longitude);
        //return { latitude: Number(northSouth + latitude), longitude: Number(eastWest + longitude) };
        return [ Number(northSouth + latitude), Number(eastWest + longitude) ];
    }

    // +-DDMMSS+-DDDMMSS
    match = coordinate.match(/^([-+])([0-9][0-9])([0-5][0-9])([0-5][0-9])([-+])([01][0-9][0-9])([0-5][0-9])([0-5][0-9])$/);
    if (match) {
        var northSouth = onlyNegativesAllowed(match[1]);
        var latitude = round(Number(match[2]) + Number(match[3] / 60) + Number(match[4] / 3600), 3);
        var eastWest = onlyNegativesAllowed(match[5]);
        var longitude = round(Number(match[6]) + Number(match[7] / 60) + Number(match[8] / 3600), 3);

        //return (northSouth + latitude + ', ' + eastWest + longitude);
        //return { latitude: Number(northSouth + latitude), longitude: Number(eastWest + longitude) };
        return [ Number(northSouth + latitude), Number(eastWest + longitude) ];
    }

    console.log("Failed:", coordinate, match);
}

function onlyNegativesAllowed(sign) {
    return (sign == '+' ? '' : '-')
}

function round(value, decimals) {
    return Number(Math.round(value+'e'+decimals)+'e-'+decimals);
}

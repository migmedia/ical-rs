Ok(IcalCalendar { properties: [LineParsed { name: "CALSCALE", params: None, value: Some("GREGORIAN") }, LineParsed { name: "PRODID", params: None, value: Some("-//Example Inc.//Example Calendar//EN") }, LineParsed { name: "VERSION", params: None, value: Some("2.0") }], events: [IcalEvent { properties: [LineParsed { name: "DTSTAMP", params: None, value: Some("20080205T191224Z") }, LineParsed { name: "DTSTART", params: Some([("VALUE", ["DATE"])]), value: Some("20081006") }, LineParsed { name: "SUMMARY", params: None, value: Some("Planning meeting") }, LineParsed { name: "UID", params: None, value: Some("4088E990AD89CB3DBB484909") }], alarms: [IcalAlarm { properties: [LineParsed { name: "SUMMARY", params: None, value: Some("escaped\\, comma and\\; semicolon\\nnewline") }] }] }], alarms: [], todos: [], journals: [], free_busys: [], timezones: [] })
Ok(IcalCalendar { properties: [LineParsed { name: "ATTENDEE", params: Some([("DELEGATED-TO", ["mailto:foo7@bar", "mailto:foo8@bar"]), ("CN", ["Foo, Bar"])]), value: Some("mailto:foo1@bar") }, LineParsed { name: "ATTENDEE", params: Some([("DELEGATED-TO", ["mailto:foo7@bar", "mailto:foo8@bar"]), ("CN", ["Foo; Bar"])]), value: Some("mailto:foo2@bar") }, LineParsed { name: "ATTENDEE", params: Some([("CN", ["Foo, Bar"])]), value: Some("mailto:foo3@bar") }, LineParsed { name: "ATTENDEE", params: Some([("CN", ["Foo; Bar"])]), value: Some("mailto:foo4@bar") }, LineParsed { name: "ATTENDEE", params: Some([("DELEGATED-TO", ["mailto:foo7@bar"]), ("CN", ["Foo, Bar"])]), value: Some("mailto:foo5@bar") }, LineParsed { name: "ATTENDEE", params: Some([("DELEGATED-TO", ["mailto:foo7@bar"]), ("CN", ["Foo; Bar"])]), value: Some("mailto:foo6@bar") }, LineParsed { name: "ATTENDEE", params: Some([("ROLE", ["REQ-PARTICIPANT;foo"]), ("DELEGATED-FROM", ["mailto:bar@baz.com"]), ("PARTSTAT", ["ACCEPTED"]), ("RSVP", ["TRUE"])]), value: Some("mailto:foo@bar.com") }, LineParsed { name: "X-FOO", params: Some([("PARAM1", ["VAL1"])]), value: Some("FOO;BAR") }, LineParsed { name: "X-FOO2", params: Some([("PARAM1", ["VAL1"]), ("PARAM2", ["VAL2"])]), value: Some("FOO;BAR") }, LineParsed { name: "X-BAR", params: Some([("PARAM1", ["VAL1:FOO"])]), value: Some("BAZ;BAR") }, LineParsed { name: "X-BAZ", params: Some([("PARAM1", ["VAL1:FOO"]), ("PARAM2", ["VAL2"])]), value: Some("BAZ;BAR") }, LineParsed { name: "X-BAZ2", params: Some([("PARAM1", ["VAL1"]), ("PARAM2", ["VAL2:FOO"])]), value: Some("BAZ;BAR") }], events: [], alarms: [], todos: [], journals: [], free_busys: [], timezones: [] })
Ok(IcalCalendar { properties: [LineParsed { name: "CALSCALE", params: None, value: Some("GREGORIAN") }, LineParsed { name: "PRODID", params: None, value: Some("-//Example Inc.//Example Calendar//EN") }, LineParsed { name: "VERSION", params: None, value: Some("2.0") }], events: [IcalEvent { properties: [LineParsed { name: "DTSTAMP", params: None, value: Some("20080205T191224Z") }, LineParsed { name: "DTSTART", params: Some([("VALUE", ["DATE"])]), value: Some("20081006") }, LineParsed { name: "SUMMARY", params: None, value: Some("Missing description value, but includes header") }, LineParsed { name: "DESCRIPTION", params: None, value: None }, LineParsed { name: "UID", params: None, value: Some("4088E990AD89CB3DBB484909") }], alarms: [] }], alarms: [], todos: [], journals: [], free_busys: [], timezones: [] })
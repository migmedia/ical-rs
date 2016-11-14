
extern crate rustc_serialize;

pub mod parser;
mod property;
mod value;

mod design;
mod param;

use std::fmt;
use std::io;
use std::error::Error;

use parser::ParserError;
use param::ParamError;
use property::PropertyError;

#[derive(Debug)]
pub enum VcardIcalError {
    Param(ParamError),
    File(io::Error),
    Parser(ParserError),
    Property(PropertyError),
}

impl fmt::Display for VcardIcalError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        match *self {
            VcardIcalError::Param(ref err) => err.fmt(f),
            VcardIcalError::File(ref err)  => err.fmt(f),
            VcardIcalError::Parser(ref err)  => err.fmt(f),
            VcardIcalError::Property(ref err)  => err.fmt(f),
        }
    }
}

impl Error for VcardIcalError {
    fn description(&self) -> &str {
        match *self {
            VcardIcalError::Param(ref err) => err.description(),
            VcardIcalError::File(ref err)  => err.description(),
            VcardIcalError::Parser(ref err)  => err.description(),
            VcardIcalError::Property(ref err)  => err.description(),
        }
    }

    fn cause(&self) -> Option<&Error> {
        match *self {
            VcardIcalError::Param(ref err) => Some(err),
            VcardIcalError::File(ref err)  => Some(err),
            VcardIcalError::Parser(ref err)  => Some(err),
            VcardIcalError::Property(ref err)  => Some(err),
        }
    }
}
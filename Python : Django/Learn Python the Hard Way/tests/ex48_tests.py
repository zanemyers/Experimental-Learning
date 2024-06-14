from nose.tools import *
from ex48.parser import *

def test_parse_sentence_no_subject():
    sentence = parse_sentence([('verb', 'run'), ('direction', 'north')])

    assert_equal(sentence.subject, 'player')
    assert_equal(sentence.verb, 'run')
    assert_equal(sentence.object, 'north')

def test_parse_sentence_with_subject():
    sentence = parse_sentence([('noun', 'Tom'), ('verb', 'ate'), ('direction', 'pizza')])

    assert_equal(sentence.subject, 'Tom')
    assert_equal(sentence.verb, 'ate')
    assert_equal(sentence.object, 'pizza')
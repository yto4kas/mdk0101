from main import word_reverce
import unittest

class TestFunction(unittest.TestCase):
	def test_word_reverce(self):
		self.assertEqual(word_reverce("word"), "drow")

	def test_word_reverce_with_space(self):
		self.assertEqual(word_reverce("word and another word"), "drow rehtona dna drow")


if __name__ == '__main__':
	unittest.main()
require 'test/unit'
require_relative '../21_page_title'

class IncludedOnceTest < Test::Unit::TestCase
  def test_google
    assert_equal("Google", pageTitle("http://www.google.com"))
  end
  def test_facey
    assert_equal("reddit: the front page of the internet", pageTitle("http://www.reddit.com"))
  end
  def test_sudantribute
    title = 
    "South Sudan main opposition calls for swift release of Machar's spokesperson  - Sudan Tribune: Plural news and views on Sudan"

    assert_equal(title, pageTitle("http://www.sudantribune.com/spip.php?article66361"))
  end
end

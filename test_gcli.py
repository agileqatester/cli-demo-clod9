from click.testing import CliRunner
from cli import hello


#search(path, ftype):
    
def test_search():
  runner = CliRunner()
  result = runner.invoke(hello, [])
  assert result.exit_code == 0
  assert 'Hello' in result.output
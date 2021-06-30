Test Driven Data Science
------------------------

- Decreases average time spent by decreasing the variance of the development 
  process
- easier to change/refactor the codebase
    - better design
    - easier to embrace change
- rapid feedback
    - Change code, run tests to see if you broke anything
    - Throw a breakpoint in a test/codebase to examine state of the pipeline
- reduce decision fatigue
    - Not sure what to code? Write a test, get it to pass, (re)design the code.
- strategies
    - schemas
        - dataframe schema
        - json schema
    - benchmark 
    - parametrization
- Don't validate, simulate deployment.
    -  Use save datasets logged from deployment as fixtures


Types of Tests:
===============

- Performed by users
  - Manual
- Performed by developers
  - Automated
  - Manual

I'll be talking about automated tests.
The only code that's not tested is code that's not used.

Testing is a development tool I
===============================

- Scaleable tool to get empirical feedback about your software:
    - Whether a feature **in development** satisfies acceptance criterions
    - Whether a change is breaking

Testing is a development tool II
================================

- Reduces decision fatigue. When overwhelmed:
    - Write a failing test (Red)
    - Do whatever it takes pass (Green)
    - Improve the quality of the code (Refactor)
- Can safely refactor: you already have a test that you know
  will fail (because you saw it fail) if you mess up

Testing is a development tool III
=================================

- Forget how to use your code? Copy and paste from your tests
    - Test are a form documentation you know is up to date.

Why Test Before Code
====================

- For sake of argument, assume you already going to be testing the code
  you've written.
- Failing Test = manual test of the test.
- Tests becomes harder to test when the code is working.
- Test later = test never or test after it breaks by production.

Strategies
==========

- Keep tests as lightweight as possible:

    - Increase the "scope" of your fixtures
    - Subsample from data
- Develop off of 'mock' and 'regression' data.

    - Get access to this data as early as possible in the development process,
      either with something like SQL or synthetic data (e.g. from
      hypothesis/schemas)
- Be DRY with your tests 

    - test suite requires maintenance, as backwards incompatible changes will
      require changes to the test suite.
- Parametrize when possible

    - e.g. different models and different datasets
- Start with end-to-end tests

    - These will be the longest living tests, will promote end-to-end development
    - Unit tests should be the 'top of the pyramid'
- Embrace plugins:

    - pdbpp
    - pytest-xdist
    - pycharm-pytest, vim-test
    - pytest prettier

Example of a (pytest) Test:
===========================

.. code-block:: 

    @pytest.fixture
    def df():
        ...
        return df

    def test_shape(df):
        df = wrangle_data(raw_df)
        assert df.shape == (len(raw_df), 10)

    def test_column_names(df):
        assert df.columns.names == ['foo', 'bar']
    
- Although this test looks silly, it at minimum tells you whether your code
runs.
    - When you're coding in a production environment, this method of checking
      scales very well
        - when first starting writing code in production (e.g. outside of
          notebooks) it's hard to interact with the code you're writing.

More Examples
=============

.. code-block:: python

    @pytest.fixture
    def imputed_df(original_df, imputer):
        imputer = imputer.fit(original_df)
        return imputer.impute(original_df

    def test_no_missing_values(imputed_df):
        assert imputed_df.notnull().all()
    
    def test_not_replacing_values(imputed_df):
        not_missing_mask = original_df.notnull().values
        assert (
            imputed_df.values[not_missing_mask] == original_df[missing_mask]
        ).all()


More Examples
=============

.. code-block:: python

    # todo make this parametrized
    @pytest.fixture
    def df_with_property_you_didnt_think_was_possible(filename):
        # load from S3 or from disk
        ...
        return df_with_property_you_didnt_think_was_possible

    def test_df_with_property_didnt_think_was_possible_doesnt_break(schema):
        ...
        assert ...

Fix the bug, ensure every merge to main that it won't reappear


More examples
=============

- Test that a low bias model can overfit a subsample of data.


More examples
=============

.. code-block:: bash

    pytest --pdb

.. code-block:: python

    def test_foo(...):
        ...
        import pdb; pdb.set_trace
        ...
        assert ...

live demo


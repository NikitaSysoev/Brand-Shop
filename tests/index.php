<?php

class MySuite extends PHPUnit_Framework_TestSuite
{
    public static function suite()
    {
        $suite = new MySuite('MyTestSuite');
        $suite->addTestSuite('MathClassTest1');
        $suite->addTestSuite('MathClassTest2');
        $suite->addTestSuite('MathClassTest3');
        return $suite;
    }
}


class MathClass
{
    public function factorial($n)
    {
        if ($n == 0)
        {
            return 1;
        }
        else
        {
            return $n * $this->factorial($n-1);
        }
    }
}



class MathClassTest1 extends PHPUnit_Framework_TestCase
{

    public function testFactorial()
    {
        $my = new MathClass();
        $this->assertEquals(6, $my->factorial(3));
    }

}
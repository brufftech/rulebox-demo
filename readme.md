## Demo of RuleBox and TestBox

Supporting code for "Build a Complex Web Form with RuleBox and TestBox" presentation at ColdFusion Summit 2023.
<br>
Site uses the Simple ColdBox template https://github.com/coldbox-templates/simple

## What It Does

Shows how to use RuleBox and TestBox to handle the logic for mixing primary colors. That's a working demo with a basic input form.
<br><br>
Includes an example of how to apply the same concept to handle the conditional logic of a web form by using RuleBox to determine if questions should be shown or skipped. That example is based on the USDA's Prototype Application for free and reduced price school meals: https://www.fns.usda.gov/cn/applying-free-and-reduced-price-school-meals.

## Where to Look
1. See modules_app/utilities/models for the example RuleBox code
2. See tests/specs/unit for the example TestBox code
3. See formLogicFunctions.cfc for a simple example of using RuleBox for branching logic
4. See questionFlowService.cfc for the algorithm to do that with abstraction (repeatable for all question branches)

**Note:** The algorithm is solid, but I didn't write all the ORM goodies for this example. If you want to run it, you'll need to write the code to create the objects and set up CBORM (https://github.com/coldbox-modules/cborm).

## Quick Installation

1. Copy code into a directory
2. Start a server (easy to do with Commandbox: https://www.ortussolutions.com/products/commandbox)

Tested with ColdFusion 2023

## References

RuleBox: https://github.com/coldbox-modules/rulebox
<br>
TestBox: https://github.com/Ortus-Solutions/TestBox
<br>
ColdBox: https://github.com/ColdBox

Thanks to Ortus Solutions (https://www.ortussolutions.com/) for these quality open source tools.
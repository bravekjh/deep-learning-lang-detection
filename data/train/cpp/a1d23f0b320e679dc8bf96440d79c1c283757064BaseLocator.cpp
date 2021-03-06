/*
 * BaseLocator.cpp - Methods for BaseLocator class.
 * 
 * Author: Patrick O'Leary
 * Created: October 17, 2010
 * Copyright: 2010. All rights reserved.
 */

/* Vrui includes */
#include <Vrui/Tools/LocatorTool.h>

#include <ANALYSIS/BaseLocator.h>
#include <Pointe_Samhlaigh.h>

/*
 * BaseLocator
 * 
 * parameter _locatorTool - Vrui::LocatorTool*
 * parameter _pointe_samhlaigh - Pointe_Samhlaigh*
 */
BaseLocator::BaseLocator(Vrui::LocatorTool* _locatorTool, Pointe_Samhlaigh* _pointe_samhlaigh) :
    Vrui::LocatorToolAdapter(_locatorTool) {
    pointe_samhlaigh = _pointe_samhlaigh;
} // end BaseLocator()

/*
 * ~BaseLocator - Destructor
 */
BaseLocator::~BaseLocator(void) {
    pointe_samhlaigh = 0;
} // end ~BaseLocator()

/*
 * highlightLocator - Render actual locator
 * 
 * parameter glContextData - GLContextData&
 */
void BaseLocator::highlightLocator(GLContextData& glContextData) const {
} // end highlightLocator()

/*
 * glRenderAction - Render opaque elements of locator
 * 
 * parameter glContextData - GLContextData&
 */
void BaseLocator::glRenderAction(GLContextData& glContextData) const {
} // end glRenderAction()

/*
 * glRenderActionTransparent - Render transparent elements of locator
 * 
 * parameter glContextData - GLContextData&
 */
void BaseLocator::glRenderActionTransparent(GLContextData& glContextData) const {
} // end glRenderActionTransparent()

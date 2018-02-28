<?php
namespace wcf\system\box;
use wcf\system\WCF;

/**
 * @author	Kevin Härtling
 * @copyright	2017 WebExpanded, Kevin Härtling
 * @package de.stomt.feedback
 */
class StomtFeedbackController extends AbstractBoxController {
    /**
     * @inheritDoc
     */
    protected static $supportedPositions = ['sidebarRight', 'sidebarLeft'];

    /**
     * @inheritDoc
     */	
	protected function loadContent() {
		$pos = $this->getBox()->position;
		if($pos == 'sidebarRight' || $pos == 'sidebarLeft') {
			$loadTemp = '__stomtfeedback';
		}
		$this->content = WCF::getTPL()->fetch($loadTemp);
	}
}
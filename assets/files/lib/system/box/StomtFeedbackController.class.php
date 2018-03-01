<?php
namespace wcf\system\box;
use wcf\system\WCF;

/**
 * @author	Stomt Gmbh
 * @copyright	2018 Stomt-Feedback,Stomt Gmbh
 * @license	GNU Lesser General Public License <http://opensource.org/licenses/lgpl-license.php>
 * @subpackage	system.box
 * @package de.stomt.feedback
 * @category	Community Framework

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
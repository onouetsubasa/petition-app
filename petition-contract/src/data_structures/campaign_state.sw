library;

use core::ops::Eq;

pub enum CampaignState {
    Cancelled: (),
    Successful: (),
    Progress: (),
}

impl Eq for CampaignState {
    fn eq(self, other: CampaignState) -> bool {
        match (self, other) {
            (CampaignState::Cancelled, CampaignState::Cancelled) => true,
            (CampaignState::Sucessful, CampaignState::Sucessful) => true,
            (CampaignState::Progress, CampaignState::Progress) => true,
            _ => false,
        }
    }
}
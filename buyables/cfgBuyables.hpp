class CfgGradBuymenu {
    tracking = 1;
    trackingTag = "OnTheFly_TrackingData";

    #include "defenses_base.hpp"
    #include "explosives_base.hpp"
    #include "vehicles_base.hpp"

    class blu_us_army {
        #include "vehicles\us_army.hpp"
        #include "explosives_base.hpp"
    };

    class blu_ger_heer {
        #include "vehicles\ger_heer.hpp"
        #include "explosives_base.hpp"
    };

    class blu_ind_eastern_nationalists {
        #include "vehicles\ind_eastern_nationalists.hpp"
        #include "explosives_base.hpp"
    };

    class blu_ind_me_terrorists {
        #include "vehicles\ind_me_terrorists.hpp"
        #include "explosives_base.hpp"
    };

    class blu_ind_pmc_special {
        #include "vehicles\ind_pmc_special.hpp"
        #include "explosives_base.hpp"
    };

    class blu_rus_msv {
        #include "vehicles\rus_msv.hpp"
        #include "explosives_base.hpp"
    };


    class opf_us_army {
        #include "defenses\us_army.hpp"
        #include "explosives\us_army.hpp"
    };

    class opf_ger_heer {
        #include "defenses\ger_heer.hpp"
        #include "explosives\ger_heer.hpp"
    };

    class opf_ind_eastern_nationalists {
        #include "defenses\ind_eastern_nationalists.hpp"
        #include "explosives\ind_eastern_nationalists.hpp"
    };

    class opf_ind_me_terrorists {
        #include "defenses\ind_me_terrorists.hpp"
        #include "explosives\ind_me_terrorists.hpp"
    };

    class opf_ind_pmc_special {
        #include "defenses\ind_pmc_special.hpp"
        #include "explosives\ind_pmc_special.hpp"
    };

    class opf_rus_msv {
        #include "defenses\rus_msv.hpp"
        #include "explosives\rus_msv.hpp"
    };
};

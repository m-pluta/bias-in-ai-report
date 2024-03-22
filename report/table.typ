= Ethical Impact Assessment <S_EIA>

#show table.cell.where(y: 0): strong

#let term-spacing = 0.5em;
#let stakeholder-spacing = 1em;

#figure(
  table(
    columns: (100pt, 220pt, 1fr),
    inset: (
      x: 6pt,
      y: 8pt
    ),
    fill: (_,y) => if y == 0 {luma(230)},
    align: (x, y) => if y == 0 {center + horizon} else {left + top}
    ,
    table.header([Stakeholder],[Values],[Potential risks / harms]),
    //------------------------------------------
    
    [
      *Advertising Agency* (Direct)

      #v(stakeholder-spacing, weak: true)
      Serves as the project initiator and aims to collect data on individuals' first impressions of advertisements and leverage machine learning algorithms to optimise the location, timing, and content of ad placements.
      
    ],
    [
      - *Accuracy*
        #v(term-spacing, weak: true)
        Ensuring the data collected on people's immediate reactions to advertisements is accurate is vital to understanding the true impact of the ads.
        
        
      - *Accountability*
        #v(term-spacing, weak: true)
        The agency must be held partially or fully accountable for the technology's use, and potential misuse and consequences.
      
      - *Innovation*
        #v(term-spacing, weak: true)
        Advertising is a highly competitive and constantly evolving landscape. 
        
        By developing new technologies, the agency can uncover insights that competitors cannot, giving it a competitive edge in the market.
        
      - *Consumer Engagement*
        #v(term-spacing, weak: true)
        Engaging consumers effectively is crucial for the success of every advertisement @W_consumer_engagement_benefits_1.

        Higher consumer engagement leads to a boost in consumer loyalty, higher consumer retention @W_consumer_engagement_benefits_1, and ultimately higher conversion rates @W_consumer_engagement_benefits_2.

    ],
    [
       - *Innaccurate data*
        #v(term-spacing, weak: true)
        In recent years, Data-Driven Decision Making (DDDM) has seen increased adoption to help organisations reduce risk and take advantage of opportunities @P_dddm_fault_data.
        It does however have its downfalls where faulty data can lead to disaster. This was the case with some companies during the 2008 financial crisis where many data-driven models had hard-coded incorrect data @P_dddm_fault_data and hence extrapolated incorrectly.

      - *Inadequate security measures*
        #v(term-spacing, weak: true)
        The agency is responsible for storing consumer sentiment data "including protection against unauthorised or unlawful processing and against accidental loss, destruction or damage" @W_ICO_GDPR.
        
        Failure to adequately protect this data may result in prosecution, civil lawsuits, and irreversible damage to the advertising agency's reputation.

      
    ],

    //------------------------------------------
    
    [
      *Brands* (Direct)

      #v(stakeholder-spacing, weak: true)
      Companies who approach the advertising agency with a product to advertise to the general public.
    ],
    [
      - *Consumer Trust*
        #v(term-spacing, weak: true)
        The trust consumers have in a particular brand is directly related to their likelihood of purchasing products from that brand @W_business_com_repeat_customers_67@W_salesforce_consumer_trust. Moreover, given that the likelihood of converting an existing customer ranges from 60-70%, compared to only 5-20% for new customers @W_Forbes_repeat_customers, it is clear brands will ensure consumers stay loyal.
      
    ],
    [
      - *Reputation*
        #v(term-spacing, weak: true)
        If the technology disproportionately impacts/targets certain demographics, brands could face backlash by being associated with this marketing strategy, leading to a loss of consumer trust and reputation.
        
      - *Financial Loss*
        #v(term-spacing, weak: true)
        Bad-quality data gathered by the model can lead to incorrect insights, which can be detrimental to the brand's image and customer engagement. Both of these can impact the brand's market share and lead to financial loss.
    ],
    
    //------------------------------------------
    
    [
      *Developers* (Direct)
      
      #v(stakeholder-spacing, weak: true)
      Employed by the advertising agency and tasked with creating the technology.
    ],
    [
      - *Universal Usability*
        #v(term-spacing, weak: true)
        Developers are likely to prioritise usability by ensuring the technology is accessible to the widest possible audience, including individuals with disabilities, and people from a diverse range of backgrounds. 
        
        \ \

      - *Freedom from bias*
        #v(term-spacing, weak: true)
        Valuing freedom from bias directly influences the integrity and fairness of the technology @P_VSD_benefits. This responsibility is particularly significant given the increasing regulation around data ethics and AI fairness @W_GOV_UK_2020.
        
      - *Quality product*
        #v(term-spacing, weak: true)
        The value placed on delivering a quality product/solution is closely linked to a developer's professional pride and technical reputation. Additionally, for developers, it is clear that if the implemented system matches or goes beyond expectations their career prospects can improve significantly.
      
    ],
    [
      - *Scapegoating*
        #v(term-spacing, weak: true)
        If the technology is misused by the agency, the developers may be used as scapegoats leading to most of the public backlash being targeted at the developers.


      
      
    ],
    
    // //------------------------------------------
    
    // [
    //   *Technology Providers* (Direct)

      
    //   #highlight([Description of the the stakeholder])
    // ],
    // [],
    // [],
    
    // //------------------------------------------
    
    // [
    //   *Bus stop/high traffic area operators/owners* (Direct)

    //   #highlight([Description of the the stakeholder])
    // ],
    // [],
    // [],
    
    //------------------------------------------
    
    [
      *Consumers / Data Subjects* (Indirect)

      #v(stakeholder-spacing, weak: true)
      Members of the general public who interact with the advertisements.
    ],
    [
      - *Autonomy*
        #v(term-spacing, weak: true)
        Within consumer choice contexts, autonomy is viewed as "(the) ability to make and enact decisions on (your) own, free from external influences" @P_autonomy_in_consumer_choice. By allowing consumers to make independent choices that align with their personal preferences, needs, and values, they may experience higher levels of satisfaction.
        
      - *Relevant / Personalised ads*
        #v(term-spacing, weak: true)
        Enables ads to cater to specific interests making the shopping experience more efficient and enjoyable. Reduces the amount of irrelevant advertising noise and makes the experience feel tailored to the consumer.
    ],
    [
      - *Data Leakage*
        #v(term-spacing, weak: true)
        Personal consumer sentiment data stored in databases could be hacked and leaked. This data may contain sensitive or biometric data which poses a security concern as malefactors could use it for identity crimes.

      - *Data misuse*
        #v(term-spacing, weak: true)
        There is a risk of the agency misusing the data for its own benefit, such as by selling it to third parties, which is a direct violation of many data protection laws such as GDPR.

      - *Harmful advertisements*
        #v(term-spacing, weak: true)
        If the model is particularly biased, the ads it suggests may be harmful. 

        Given the unique demographic composition of each location, the model may unintentionally internalise this information leading to harmful, biased model outputs.
      
    ],
    
    //------------------------------------------
    
    [
      *Privacy advocates* (Indirect)

      #v(stakeholder-spacing, weak: true)
      Organisations or activist groups advocating for the general public's privacy rights.
    ],
    [
      - *Privacy*
        #v(term-spacing, weak: true)
        These organisations consider privacy as a cornerstone of individual freedoms and societal well-being, consequently, they actively confront the development of technologies that encroach upon human privacy @P_the_privacy_advocates.
        
      
    ],
    [
      - *Legal and Political Pressure*
        #v(term-spacing, weak: true)
        These groups may feel pressure from the agencies that want to make this technology a reality regardless of ethical considerations. This is a potentially very powerful technology that could be used for national surveillance if not regulated appropriately.

        \ \

      - *Loss of trust*
        #v(term-spacing, weak: true)
        If the model is deemed to produce biased, harmful outputs and disregard the public's privacy rights then these groups may be blamed for not protecting the public regardless of whether they made any attempts.
        
    ],
    
    //------------------------------------------
    
    [
      *Government, Regulatory bodies, and policy-makers* (Indirect)

      #v(stakeholder-spacing, weak: true)
      Organisations regulating the development and usage of AI and facial analysis systems
    ],
    [
      - *Human Welfare*
        #v(term-spacing, weak: true)
        Governments have an ethical duty to ensure the well-being of their citizens, promoting policies that protect the vulnerable and support society as a whole. By prioritising welfare, it ensures social stability, avoiding social unrest. 
        
        This is most commonly achieved by heavily regulating new technologies @W_ICO_2022 and discussing pressing issues with a level of transparency @W_GOV_UK_2020.
        
      - *Courtesy*
        #v(term-spacing, weak: true)
        Governments should be courteous in public discourse to promote a cooperative, respectful environment essential for democratic processes and effective implementation of policies. 
        
      
      - *Environmental sustainability*
        #v(term-spacing, weak: true)
        Governments have an ethical and moral obligation to ensure companies act in an environmentally sustainable way such that inter-generational equity is not affected.
        
    ],
    [
      - *Public backlash*
        #v(term-spacing, weak: true)
        Governments may experience public backlash if the technology is used in invasive ways beyond what was originally specified, or for not interfering and regulating the technology early enough.

        ⁤Furthermore, the proposed technology employs machine learning and is intended to be installed across cities, which is likely to consume significant amounts of energy. This raises environmental concerns which the government may be held accountable for if the technology is not adequately regulated. ⁤This is regardless of whether the government is aiding in the creation of this technology.
    ],
    
    // //------------------------------------------
    
    // [
    //   *Competitors* (Indirect)

    //   #v(stakeholder-spacing, weak: true)
    //   Competitors of the advertising agency.
    // ],
    // [
    //   + *Innovation*
    //     #v(term-spacing, weak: true)
        
        
      
    //   + *Accuracy*
    //     #v(term-spacing, weak: true)
        
    // ],
    // [],

    //------------------------------------------
    
    [
      *General Public* (Indirect)

      #v(stakeholder-spacing, weak: true)
    ],
    [
      - *Informed consent*
        #v(term-spacing, weak: true)
        Companies should not record, store, or analyse the general public's data without explicit informed consent. Failure to obtain such consent constitutes a breach of trust between the agency and the public.

        
      - *Privacy*
        #v(term-spacing, weak: true)
        Although there is reduced privacy in public settings compared to personal homes, the general public still retains the right to a certain degree of privacy while in public spaces.
        
    ],
    [
      - *Invasion of Privacy*
        #v(term-spacing, weak: true)  
        The public may feel like they are constantly being recorded. This may feel like a dystopian society and is likely to affect the general public's welfare.

        Additionally, a large portion of the general public consists of young people and more specifically children who may be unaware of the risks associated with this sort of technology. This may make it difficult to acquire informed consent.
    ],
    
  ),
  caption: [Ethical Impact Assessment using VSD],
) <F_stakeholder_table>
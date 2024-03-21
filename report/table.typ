= Ethical Impact Assessment <S_EIA>

#show table.cell.where(y: 0): strong

#set enum(indent: 0em)
#figure(
  table(
    columns: (100pt, 1fr, 1fr),
    inset: (
      x: 6pt,
      y: 8pt
    ),
    fill: (_,y) => if y == 0 {luma(230)},
    align: (x, y) => 
      if y == 0 {
        center + horizon
      } else if x == 0 {
        left + top
      } else {
        left + top
      }
    ,
    table.header([Stakeholder],[Values],[Potential risks / harms]),
    //------------------------------------------
    
    [
      *Advertising Agency* (Direct)

      #v(1em, weak: true)
      Serves as the project initiator and aims to collect data on individual's first impressions to advertisements and leverage machine learning algorithms to optimise location, timing, and content of ad placements.
      
    ],
    [
      + *Accuracy*
        #v(0.55em, weak: true)
        Ensuring the data collected on people's immediate reactions to advertisements is accurate is vital to understand the true impact of the ads.
        
        
      + *Accountability*
        #v(0.55em, weak: true)
        The agency must be held partially or fully accountable for the technology's use, and potential misuse and consequences.
      
      + *Innovation*
        #v(0.55em, weak: true)
        Advertising is a highly competitive and constantly evolving landscape. 
        
        By developing new technologies, the agency can uncover insights that competitors cannot, giving it a competitive edge in the market.
        
      + *Consumer Engagement*
        #v(0.55em, weak: true)
        Engaging consumers effectively is crucial for the success of every advertisement @W_consumer_engagement_benefits_1.

        Higher consumer engagement leads to a boost in consumer loyalty, higher consumer retention @W_consumer_engagement_benefits_1, and ultimately higher conversion rates @W_consumer_engagement_benefits_2.

    ],
    [
      In recent years, Data-Driven Decision Making (DDDM) has seen increased adoption to help organisation reduce risk and take advantage of opportunities.
      It does however have its downfalls where faulty data can lead to disaster as was the case with the 2008 financial crisis where many data-driven models had hard-coded incorrect data. @P_dddm_fault_data
    ],

    //------------------------------------------
    
    [
      *Brands* (Direct)

      #v(1em, weak: true)
      Companies who approach the advertising agency with a product to advertise to the general public.
    ],
    [
      + *Consumer Trust*
        #v(1em, weak: true)
        The trust consumers have in a particular brand is directly correlated to their likelihood of purchasing products from that brand @W_business_com_repeat_customers_67. Moreover, given that the likelihood of converting an existing customer ranges from 60-70%, compared to only 5-20% for new customers @W_Forbes_repeat_customers, it is clear brands will ensure consumers stay loyal.
      
    ],
    [],
    
    //------------------------------------------
    
    [
      *Developers* (Direct)
      
      #v(1em, weak: true)
      Employed by the advertising agency and tasked with creating the technology.
    ],
    [
      + *Universal usability*
        #v(0.55em, weak: true)
        Developers are likely to prioritise usability by ensuring the technology is accessible to the widest possible audience, including individuals with disabilities, and people from a diverse range of backgrounds.
      
      + *Freedom from bias*
        #v(0.55em, weak: true)
        Valuing freedom from bias directly influences the integrity and fairness of the technology. This responsibility is particularly significant given the increasing regulation around data ethics and AI fairness @W_GOV_UK_2020
        
      
      + *Quality product*
        #v(0.55em, weak: true)
        The value placed on delivering a quality product/solution is closely linked to a developer's professional pride and technical reputation. Additionally, for developers it is clear that if the implemented system matches or goes beyond expectations their career prospects can improve significantly.
      
    ],
    [],
    
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

      #v(1em, weak: true)
      Members of the general public who are 
    ],
    [
      + *Autonomy*
        #v(0.55em, weak: true)
        Within consumer choice contexts, autonomy is viewed as "(the) ability to make and enact decisions on (your) own, free from external influences" @P_autonomy_in_consumer_choice. By allowing consumers to make independent choices that align with their personal preferences, needs, and values, they may experience higher levels of satisfaction.
        
      + *Relevant / Personalised ads*
        #v(0.55em, weak: true)
        Enables ads to cater to specific interests making the shopping experience more efficient and enjoyable. Reduces the amount of irrelevant advertising noise and makes the experience feel tailored to the consumer.
    ],
    [],
    
    //------------------------------------------
    
    [
      *Privacy advocates* (Indirect)

      #v(0.55em, weak: true)
      Organisiations or activist groups advocating for the general public's privacy rights 
    ],
    [
      + *Privacy*
        #v(0.55em, weak: true)
        These organisations consider privacy as a cornerstone of individual freedoms and societal well-being, consequently, they actively confront development of technologies that encroach upon human privacy @P_the_privacy_advocates.
        
      
    ],
    [],
    
    //------------------------------------------
    
    [
      *Government, Regulatory bodies, and policy-makers* (Indirect)

      #v(1em, weak: true)
      Organisations regulating the development and usage of AI and facial analysis systems
    ],
    [
      + *Human Welfare*
        #v(0.55em, weak: true)
        Governments have an ethical duty to ensure the well-being of their citizens, promoting policies that protect the vulnerable and support society as a whole. By prioritising welfare, it ensures social stability, avoiding social unrest. 
        
        This is most commonly achieved by heavily regulating new technologies @W_ICO_2022 and discussing pressing issues with a level of transparency @W_GOV_UK_2020.
        
      + *Courtesy*
        #v(0.55em, weak: true)
        Governments should be courteous in public course to promote a cooperative, respectful environment essential for democratic processes and effective implementation of policies. 
        
      
      + *Environmental sustainability*
        #v(0.55em, weak: true)
        Governments have an ethical and moral obligation to ensure companies act in an enivornmentally sustainable way such that inter-generational equity is not affected.
        
    ],
    [
      AI uses power
      
      May backfire and government may be scrutinised for not interfering and stopping this technology
      
    ],
    
    //------------------------------------------
    
    [
      *Competitors* (Indirect)

      #v(1em, weak: true)
      Competitors of the advertising agency.
    ],
    [
      + *Innovation*
        #v(0.55em, weak: true)
        
      
      + *Accuracy*
        #v(0.55em, weak: true)
    ],
    [],

    //------------------------------------------
    
    [
      *General Public* (Indirect)

      #v(1em, weak: true)
    ],
    [
      + *Informed consent*
        #v(0.55em, weak: true)

        
      + *Privacy*
        #v(0.55em, weak: true)

        
    ],
    [],
    
  ),
  caption: [Ethical Impact Assessment using VSD],
) <F_stakeholder_table>
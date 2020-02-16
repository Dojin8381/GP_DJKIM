// 2020_Ebay_GoogleAnalytisBuilder_SourceCode

#import "GoogleAnalyticsBuilder.h"
#import "GAI.h"
#import "GAIDictionaryBuilder.h"
#import "GAIEcommerceFields.h"
#import "GAIEcommerceProduct.h"
#import "GAIEcommerceProductAction.h"
#import "GAIEcommercePromotion.h"
#import "GAIFields.h"
#import "GAILogger.h"
#import "GAITrackedViewController.h"
#import "GAITracker.h"

NSString *GACustomKey(GACustom input) {
    NSArray *arr = @[
      @"dimension1", @"dimension2", @"dimension3", @"dimension4", @"dimension5",
      @"dimension6", @"dimension7", @"dimension8", @"dimension9", @"dimension10",
      @"dimension11", @"dimension12", @"dimension13", @"dimension14", @"dimension15",
      @"dimension16", @"dimension17", @"dimension18", @"dimension19", @"dimension20",
      @"dimension21", @"dimension22", @"dimension23", @"dimension24", @"dimension25",
      @"dimension26", @"dimension27", @"dimension28", @"dimension29", @"dimension30",
      @"dimension31", @"dimension32", @"dimension33", @"dimension34", @"dimension35",
      @"dimension36", @"dimension37", @"dimension38", @"dimension39", @"dimension40",
      @"dimension41", @"dimension42", @"dimension43", @"dimension44", @"dimension45",
      @"dimension46", @"dimension47", @"dimension48", @"dimension49", @"dimension50",
      @"dimension51", @"dimension52", @"dimension53", @"dimension54", @"dimension55",
      @"dimension56", @"dimension57", @"dimension58", @"dimension59", @"dimension60",
      @"dimension61", @"dimension62", @"dimension63", @"dimension64", @"dimension65",
      @"dimension66", @"dimension67", @"dimension68", @"dimension69", @"dimension70",
      @"dimension71", @"dimension72", @"dimension73", @"dimension74", @"dimension75",
      @"dimension76", @"dimension77", @"dimension78", @"dimension79", @"dimension80",
      @"dimension81", @"dimension82", @"dimension83", @"dimension84", @"dimension85",
      @"dimension86", @"dimension87", @"dimension88", @"dimension89", @"dimension90",
      @"dimension91", @"dimension92", @"dimension93", @"dimension94", @"dimension95",
      @"dimension96", @"dimension97", @"dimension98", @"dimension99", @"dimension100",
      @"dimension101", @"dimension102", @"dimension103", @"dimension104", @"dimension105",
      @"dimension106", @"dimension107", @"dimension108", @"dimension109", @"dimension110",
      @"dimension111", @"dimension112", @"dimension113", @"dimension114", @"dimension115",
      @"dimension116", @"dimension117", @"dimension118", @"dimension119", @"dimension120",
      @"dimension121", @"dimension122", @"dimension123", @"dimension124", @"dimension125",
      @"dimension126", @"dimension127", @"dimension128", @"dimension129", @"dimension130",
      @"dimension131", @"dimension132", @"dimension133", @"dimension134", @"dimension135",
      @"dimension136", @"dimension137", @"dimension138", @"dimension139", @"dimension140",
      @"dimension141", @"dimension142", @"dimension143", @"dimension144", @"dimension145",
      @"dimension146", @"dimension147", @"dimension148", @"dimension149", @"dimension150",
      @"dimension151", @"dimension152", @"dimension153", @"dimension154", @"dimension155",
      @"dimension156", @"dimension157", @"dimension158", @"dimension159", @"dimension160",
      @"dimension161", @"dimension162", @"dimension163", @"dimension164", @"dimension165",
      @"dimension166", @"dimension167", @"dimension168", @"dimension169", @"dimension170",
      @"dimension171", @"dimension172", @"dimension173", @"dimension174", @"dimension175",
      @"dimension176", @"dimension177", @"dimension178", @"dimension179", @"dimension180",
      @"dimension181", @"dimension182", @"dimension183", @"dimension184", @"dimension185",
      @"dimension186", @"dimension187", @"dimension188", @"dimension189", @"dimension190",
      @"dimension191", @"dimension192", @"dimension193", @"dimension194", @"dimension195",
      @"dimension196", @"dimension197", @"dimension198", @"dimension199", @"dimension200",

      @"metric1", @"metric2", @"metric3", @"metric4", @"metric5",
      @"metric6", @"metric7", @"metric8", @"metric9", @"metric10",
      @"metric11", @"metric12", @"metric13", @"metric14", @"metric15",
      @"metric16", @"metric17", @"metric18", @"metric19", @"metric20",
      @"metric21", @"metric22", @"metric23", @"metric24", @"metric25",
      @"metric26", @"metric27", @"metric28", @"metric29", @"metric30",
      @"metric31", @"metric32", @"metric33", @"metric34", @"metric35",
      @"metric36", @"metric37", @"metric38", @"metric39", @"metric40",
      @"metric41", @"metric42", @"metric43", @"metric44", @"metric45",
      @"metric46", @"metric47", @"metric48", @"metric49", @"metric50",
      @"metric51", @"metric52", @"metric53", @"metric54", @"metric55",
      @"metric56", @"metric57", @"metric58", @"metric59", @"metric60",
      @"metric61", @"metric62", @"metric63", @"metric64", @"metric65",
      @"metric66", @"metric67", @"metric68", @"metric69", @"metric70",
      @"metric71", @"metric72", @"metric73", @"metric74", @"metric75",
      @"metric76", @"metric77", @"metric78", @"metric79", @"metric80",
      @"metric81", @"metric82", @"metric83", @"metric84", @"metric85",
      @"metric86", @"metric87", @"metric88", @"metric89", @"metric90",
      @"metric91", @"metric92", @"metric93", @"metric94", @"metric95",
      @"metric96", @"metric97", @"metric98", @"metric99", @"metric100",
      @"metric101", @"metric102", @"metric103", @"metric104", @"metric105",
      @"metric106", @"metric107", @"metric108", @"metric109", @"metric110",
      @"metric111", @"metric112", @"metric113", @"metric114", @"metric115",
      @"metric116", @"metric117", @"metric118", @"metric119", @"metric120",
      @"metric121", @"metric122", @"metric123", @"metric124", @"metric125",
      @"metric126", @"metric127", @"metric128", @"metric129", @"metric130",
      @"metric131", @"metric132", @"metric133", @"metric134", @"metric135",
      @"metric136", @"metric137", @"metric138", @"metric139", @"metric140",
      @"metric141", @"metric142", @"metric143", @"metric144", @"metric145",
      @"metric146", @"metric147", @"metric148", @"metric149", @"metric150",
      @"metric151", @"metric152", @"metric153", @"metric154", @"metric155",
      @"metric156", @"metric157", @"metric158", @"metric159", @"metric160",
      @"metric161", @"metric162", @"metric163", @"metric164", @"metric165",
      @"metric166", @"metric167", @"metric168", @"metric169", @"metric170",
      @"metric171", @"metric172", @"metric173", @"metric174", @"metric175",
      @"metric176", @"metric177", @"metric178", @"metric179", @"metric180",
      @"metric181", @"metric182", @"metric183", @"metric184", @"metric185",
      @"metric186", @"metric187", @"metric188", @"metric189", @"metric190",
      @"metric191", @"metric192", @"metric193", @"metric194", @"metric195",
      @"metric196", @"metric197", @"metric198", @"metric199", @"metric200"

    ];
    return (NSString *)[arr objectAtIndex:input];
}

NSString *GAHitKey(GAHit input) {
    NSArray *arr = @[
      @"uid",
      @"camp_url",
      @"title",
      @"category",
      @"action",
      @"label",
      @"value",
      @"ni",
      @"promo_id",
      @"promo_nm",
      @"promo_cr",
      @"promo_ps",
      @"cu"
    ];
    return (NSString *)[arr objectAtIndex:input];
}

NSString *GAEcommerceStepKey(GAEcommerceStep input) {
    NSArray *arr = @[
      @"impression",
      @"detail",
      @"click",
      @"add",
      @"remove",
      @"checkout",
      @"purchase",
      @"refund",
      @"promotionimpression",
      @"promotionclick"
    ];
    return (NSString *)[arr objectAtIndex:input];
}

NSString *GAActionFieldKey(GAActionField input) {
    NSArray *arr = @[
      @"af_id",
      @"af_revenue",
      @"af_tax",
      @"af_shipping",
      @"af_coupon",
      @"af_affiliation",
      @"af_list",
      @"af_step",
      @"af_option"
    ];
    return (NSString *)[arr objectAtIndex:input];
}

NSString *GAProductKey(GAProduct input) {
    NSArray *arr = @[
      @"prid",
      @"prnm",
      @"prbr",
      @"prca",
      @"prva",
      @"prpr",
      @"prqt",
      @"prcc",
      @"prps",
      @"prlist",

      @"prcd1", @"prcd2", @"prcd3", @"prcd4", @"prcd5",
      @"prcd6", @"prcd7", @"prcd8", @"prcd9", @"prcd10",
      @"prcd11", @"prcd12", @"prcd13", @"prcd14", @"prcd15",
      @"prcd16", @"prcd17", @"prcd18", @"prcd19", @"prcd20",
      @"prcd21", @"prcd22", @"prcd23", @"prcd24", @"prcd25",
      @"prcd26", @"prcd27", @"prcd28", @"prcd29", @"prcd30",
      @"prcd31", @"prcd32", @"prcd33", @"prcd34", @"prcd35",
      @"prcd36", @"prcd37", @"prcd38", @"prcd39", @"prcd40",
      @"prcd41", @"prcd42", @"prcd43", @"prcd44", @"prcd45",
      @"prcd46", @"prcd47", @"prcd48", @"prcd49", @"prcd50",
      @"prcd51", @"prcd52", @"prcd53", @"prcd54", @"prcd55",
      @"prcd56", @"prcd57", @"prcd58", @"prcd59", @"prcd60",
      @"prcd61", @"prcd62", @"prcd63", @"prcd64", @"prcd65",
      @"prcd66", @"prcd67", @"prcd68", @"prcd69", @"prcd70",
      @"prcd71", @"prcd72", @"prcd73", @"prcd74", @"prcd75",
      @"prcd76", @"prcd77", @"prcd78", @"prcd79", @"prcd80",
      @"prcd81", @"prcd82", @"prcd83", @"prcd84", @"prcd85",
      @"prcd86", @"prcd87", @"prcd88", @"prcd89", @"prcd90",
      @"prcd91", @"prcd92", @"prcd93", @"prcd94", @"prcd95",
      @"prcd96", @"prcd97", @"prcd98", @"prcd99", @"prcd100",
      @"prcd101", @"prcd102", @"prcd103", @"prcd104", @"prcd105",
      @"prcd106", @"prcd107", @"prcd108", @"prcd109", @"prcd110",
      @"prcd111", @"prcd112", @"prcd113", @"prcd114", @"prcd115",
      @"prcd116", @"prcd117", @"prcd118", @"prcd119", @"prcd120",
      @"prcd121", @"prcd122", @"prcd123", @"prcd124", @"prcd125",
      @"prcd126", @"prcd127", @"prcd128", @"prcd129", @"prcd130",
      @"prcd131", @"prcd132", @"prcd133", @"prcd134", @"prcd135",
      @"prcd136", @"prcd137", @"prcd138", @"prcd139", @"prcd140",
      @"prcd141", @"prcd142", @"prcd143", @"prcd144", @"prcd145",
      @"prcd146", @"prcd147", @"prcd148", @"prcd149", @"prcd150",
      @"prcd151", @"prcd152", @"prcd153", @"prcd154", @"prcd155",
      @"prcd156", @"prcd157", @"prcd158", @"prcd159", @"prcd160",
      @"prcd161", @"prcd162", @"prcd163", @"prcd164", @"prcd165",
      @"prcd166", @"prcd167", @"prcd168", @"prcd169", @"prcd170",
      @"prcd171", @"prcd172", @"prcd173", @"prcd174", @"prcd175",
      @"prcd176", @"prcd177", @"prcd178", @"prcd179", @"prcd180",
      @"prcd181", @"prcd182", @"prcd183", @"prcd184", @"prcd185",
      @"prcd186", @"prcd187", @"prcd188", @"prcd189", @"prcd190",
      @"prcd191", @"prcd192", @"prcd193", @"prcd194", @"prcd195",
      @"prcd196", @"prcd197", @"prcd198", @"prcd199", @"prcd200",

      @"prme1", @"prme2", @"prme3", @"prme4", @"prme5",
      @"prme6", @"prme7", @"prme8", @"prme9", @"prme10",
      @"prme11", @"prme12", @"prme13", @"prme14", @"prme15",
      @"prme16", @"prme17", @"prme18", @"prme19", @"prme20",
      @"prme21", @"prme22", @"prme23", @"prme24", @"prme25",
      @"prme26", @"prme27", @"prme28", @"prme29", @"prme30",
      @"prme31", @"prme32", @"prme33", @"prme34", @"prme35",
      @"prme36", @"prme37", @"prme38", @"prme39", @"prme40",
      @"prme41", @"prme42", @"prme43", @"prme44", @"prme45",
      @"prme46", @"prme47", @"prme48", @"prme49", @"prme50",
      @"prme51", @"prme52", @"prme53", @"prme54", @"prme55",
      @"prme56", @"prme57", @"prme58", @"prme59", @"prme60",
      @"prme61", @"prme62", @"prme63", @"prme64", @"prme65",
      @"prme66", @"prme67", @"prme68", @"prme69", @"prme70",
      @"prme71", @"prme72", @"prme73", @"prme74", @"prme75",
      @"prme76", @"prme77", @"prme78", @"prme79", @"prme80",
      @"prme81", @"prme82", @"prme83", @"prme84", @"prme85",
      @"prme86", @"prme87", @"prme88", @"prme89", @"prme90",
      @"prme91", @"prme92", @"prme93", @"prme94", @"prme95",
      @"prme96", @"prme97", @"prme98", @"prme99", @"prme100",
      @"prme101", @"prme102", @"prme103", @"prme104", @"prme105",
      @"prme106", @"prme107", @"prme108", @"prme109", @"prme110",
      @"prme111", @"prme112", @"prme113", @"prme114", @"prme115",
      @"prme116", @"prme117", @"prme118", @"prme119", @"prme120",
      @"prme121", @"prme122", @"prme123", @"prme124", @"prme125",
      @"prme126", @"prme127", @"prme128", @"prme129", @"prme130",
      @"prme131", @"prme132", @"prme133", @"prme134", @"prme135",
      @"prme136", @"prme137", @"prme138", @"prme139", @"prme140",
      @"prme141", @"prme142", @"prme143", @"prme144", @"prme145",
      @"prme146", @"prme147", @"prme148", @"prme149", @"prme150",
      @"prme151", @"prme152", @"prme153", @"prme154", @"prme155",
      @"prme156", @"prme157", @"prme158", @"prme159", @"prme160",
      @"prme161", @"prme162", @"prme163", @"prme164", @"prme165",
      @"prme166", @"prme167", @"prme168", @"prme169", @"prme170",
      @"prme171", @"prme172", @"prme173", @"prme174", @"prme175",
      @"prme176", @"prme177", @"prme178", @"prme179", @"prme180",
      @"prme181", @"prme182", @"prme183", @"prme184", @"prme185",
      @"prme186", @"prme187", @"prme188", @"prme189", @"prme190",
      @"prme191", @"prme192", @"prme193", @"prme194", @"prme195",
      @"prme196", @"prme197", @"prme198", @"prme199", @"prme200",

    ];
    return (NSString *)[arr objectAtIndex:input];
}


void GAData_Nilset(NSDictionary *dict){
    @try {
        id<GAITracker> mTracker = [[GAI sharedInstance] defaultTracker];
        NSError* error;
        for(NSString *key in dict){
            if([key containsString:@"dimension"]){
                NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^0-9]" options:NSRegularExpressionCaseInsensitive  error:&error];
                NSString *idx = [regex stringByReplacingMatchesInString:key options:0 range:NSMakeRange(0, [key length]) withTemplate:@""];
                [mTracker set:[GAIFields customDimensionForIndex:[idx integerValue]] value:nil];
            }
            if([key containsString:@"metric"]){
                NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^0-9]" options:NSRegularExpressionCaseInsensitive  error:&error];
                NSString *idx = [regex stringByReplacingMatchesInString:key options:0 range:NSMakeRange(0, [key length]) withTemplate:@""];
                [mTracker set:[GAIFields customMetricForIndex:[idx integerValue]] value:nil];
            }
        }
        [mTracker set:kGAIScreenName value:nil];
        [mTracker set:kGAIUserId value:nil];
        [mTracker set:kGAICurrencyCode value:nil];
    }
    @catch (NSException *e) {
        NSLog(@"Exception: %@", e);
    }
}

void GADataSend_Screen(NSDictionary *GAInfo){
    NSError* error;
    id<GAITracker> mTracker = [[GAI sharedInstance] defaultTracker];
    [mTracker set:kGAIHitType value:@"screenview"];
    GAIDictionaryBuilder *eventBuilder = [[GAIDictionaryBuilder alloc]init];
    for(NSString *key in GAInfo){
        NSString *value = [GAInfo valueForKey:key];
        if(value != nil && [value length] >0 ){
            if([key.lowercaseString containsString:@"dimension"]){
                NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^0-9]" options:NSRegularExpressionCaseInsensitive  error:&error];
                NSString *idx = [regex stringByReplacingMatchesInString:key options:0 range:NSMakeRange(0, [key length]) withTemplate:@""];
                [mTracker set:[GAIFields customDimensionForIndex:[idx integerValue]] value:value];
            }
            if([key.lowercaseString containsString:@"metric"]){
                NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^0-9]" options:NSRegularExpressionCaseInsensitive  error:&error];
                NSString *idx = [regex stringByReplacingMatchesInString:key options:0 range:NSMakeRange(0, [key length]) withTemplate:@""];
                [mTracker set:[GAIFields customMetricForIndex:[idx integerValue]] value:value];
            }
            if([key.lowercaseString isEqual:@"uid"]){ [mTracker set:kGAIUserId  value:value]; }
            if([key.lowercaseString isEqual:@"title"]){ [mTracker set:kGAIScreenName value:value]; }
            if([key.lowercaseString isEqual:@"camp_url"]){
                [eventBuilder setCampaignParametersFromUrl:value];
            }
            if([key.lowercaseString isEqual:@"ni"] && [[GAInfo valueForKey:key]  isEqual:@"1"]){
                [eventBuilder set:value forKey:kGAINonInteraction];
            }
        }
    }
    NSDictionary *hitParamsDict = [eventBuilder build];
    [mTracker send:[[[GAIDictionaryBuilder createScreenView] setAll:hitParamsDict] build]];
    [mTracker set:kGAIScreenName value:nil];
    [mTracker set:kGAIUserId value:nil];
    GAData_Nilset(GAInfo);
}

void GADataSend_Event(NSDictionary *GAInfo){
    NSError* error;
    NSString *category;
    NSString *action;
    NSString *label;
    NSString *event_value;
    id<GAITracker> mTracker = [[GAI sharedInstance] defaultTracker];
    [mTracker set:kGAIHitType value:@"event"];
    GAIDictionaryBuilder *eventBuilder = [[GAIDictionaryBuilder alloc] init];
    for(NSString *key in GAInfo){
        NSString *value = [GAInfo valueForKey:key];
        if(value != nil && [value length] >0 ){
            if([key.lowercaseString containsString:@"dimension"]){
                NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^0-9]" options:NSRegularExpressionCaseInsensitive  error:&error];
                NSString *idx = [regex stringByReplacingMatchesInString:key options:0 range:NSMakeRange(0, [key length]) withTemplate:@""];
                [mTracker set:[GAIFields customDimensionForIndex:[idx integerValue]] value:value];
            }
            if([key.lowercaseString containsString:@"metric"]){
                NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^0-9]" options:NSRegularExpressionCaseInsensitive  error:&error];
                NSString *idx = [regex stringByReplacingMatchesInString:key options:0 range:NSMakeRange(0, [key length]) withTemplate:@""];
                [mTracker set:[GAIFields customMetricForIndex:[idx integerValue]] value:value];
            }
            if([key.lowercaseString isEqual:@"uid"]){ [mTracker set:kGAIUserId  value:value]; }
            if([key.lowercaseString isEqual:@"title"]){ [mTracker set:kGAIScreenName value:value]; }
            if([key.lowercaseString isEqual:@"camp_url"]){
                [eventBuilder setCampaignParametersFromUrl:value];
            }
            if([key.lowercaseString isEqual:@"category"]){ category = value; }
            if([key.lowercaseString isEqual:@"action"]){ action = value; }
            if([key.lowercaseString isEqual:@"label"]){ label = value; }
            if([key.lowercaseString isEqual:@"value"]){ event_value = value;}
            if([key.lowercaseString isEqual:@"ni"] && [[GAInfo valueForKey:key]  isEqual:@"1"]){
                [eventBuilder set:@"1" forKey:kGAINonInteraction];
            }
        }
    }
    NSDictionary *hitParams = [eventBuilder build];
    [mTracker send:[[[GAIDictionaryBuilder createEventWithCategory:category action:action label:label value:event_value != nil ?@([event_value integerValue]): nil ] setAll:hitParams] build] ];
    [mTracker set:kGAIScreenName value:nil];
    [mTracker set:kGAIUserId value:nil];
    GAData_Nilset(GAInfo);
}

GAIDictionaryBuilder *GA_Product(NSString *EcommerceStep ,NSDictionary *GAProduct, GAIDictionaryBuilder *ecommerceBuilder){
    NSError* error;
    NSString *productList ;
    for(NSString *keys in GAProduct){
        GAIEcommerceProduct *product = [[GAIEcommerceProduct alloc] init];;
        if([keys.lowercaseString containsString:@"pr"]){
            NSMutableDictionary *ProductInfo = [GAProduct valueForKey:keys];
            for(NSString *product_key in ProductInfo){
                NSString *value = [ProductInfo valueForKey:product_key];
                if([product_key.lowercaseString isEqual:@"prid"]){ [product setId:value]; }
                if([product_key.lowercaseString isEqual:@"prnm"]){ [product setName:value]; }
                if([product_key.lowercaseString isEqual:@"prbr"]){ [product setBrand:value]; }
                if([product_key.lowercaseString isEqual:@"prca"]){ [product setCategory:value]; }
                if([product_key.lowercaseString isEqual:@"prva"]){ [product setVariant:value]; }
                if([product_key.lowercaseString isEqual:@"prpr"]){ [product setPrice:@([value intValue])]; }
                if([product_key.lowercaseString isEqual:@"prqt"]){ [product setQuantity:@([value intValue])]; }
                if([product_key.lowercaseString isEqual:@"prcc"]){ [product setCouponCode:value]; }
                if([product_key.lowercaseString isEqual:@"prps"]){ [product setPosition:@([value intValue])]; }
                if([product_key.lowercaseString isEqual:@"prlist"]){ productList = value; }
                if([product_key.lowercaseString containsString:@"prcd"]){
                    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^0-9]" options:NSRegularExpressionCaseInsensitive error:&error];
                    NSString *idx = [regex stringByReplacingMatchesInString:product_key options:0 range:NSMakeRange(0, [product_key length]) withTemplate:@""];
                    [product setCustomDimension:[idx integerValue] value:value];
                }
                if([product_key.lowercaseString containsString:@"prme"]){
                    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^0-9]" options:NSRegularExpressionCaseInsensitive error:&error];
                    NSString *idx = [regex stringByReplacingMatchesInString:product_key options:0 range:NSMakeRange(0, [product_key length]) withTemplate:@""];
                    [product setCustomMetric:[idx integerValue] value:[NSNumber numberWithInt:[value intValue]]];
                }
            }
        }
        if(![EcommerceStep.lowercaseString isEqualToString:@"impression"]){
            [ecommerceBuilder addProduct:product];
        }
        else{
            [ecommerceBuilder addProductImpression:product impressionList:productList impressionSource:@"impressionSource"];
        }
    }
    return ecommerceBuilder;
}

GAIEcommerceProductAction *GA_ActionField(NSDictionary *GAAction, GAIEcommerceProductAction *productAction){
    for(NSString *actionField_key in GAAction){
        NSString *value = [GAAction valueForKey:actionField_key];

        if([actionField_key.lowercaseString isEqual:@"af_id"]){ [productAction setTransactionId:value]; }
        if([actionField_key.lowercaseString isEqual:@"af_revenue"]){ [productAction setRevenue:@([value intValue])];}
        if([actionField_key.lowercaseString isEqual:@"af_tax"]){ [productAction setTax:@([value intValue])]; }
        if([actionField_key.lowercaseString isEqual:@"af_shipping"]){ [productAction setShipping:@([value intValue])]; }
        if([actionField_key.lowercaseString isEqual:@"af_coupon"]){ [productAction setCouponCode:value]; }
        if([actionField_key.lowercaseString isEqual:@"af_affiliation"]){ [productAction setAffiliation:value];}
        if([actionField_key.lowercaseString isEqual:@"af_list"]){[productAction setProductActionList:value];}
        if([actionField_key.lowercaseString isEqual:@"af_step"]){[productAction setCheckoutStep:@([value intValue])];}
        if([actionField_key.lowercaseString isEqual:@"af_option"]){ [productAction setCheckoutOption:value];}
    }
    return productAction;
}

void GADataSend_Ecommerce(NSString *EcommerceStep, NSDictionary *GAAction, NSDictionary *GAProduct, NSDictionary *GAInfo ){
    NSError* error;
    NSString *category;
    NSString *action;
    NSString *label;
    NSString *event_value;
    id<GAITracker> mTracker = [[GAI sharedInstance] defaultTracker];
    [mTracker set:kGAIHitType value:@"event"];
    GAIDictionaryBuilder *ecommerceBuilder = [[GAIDictionaryBuilder alloc]init];
    for(NSString *key in GAInfo){
        NSString *value = [GAInfo valueForKey:key];
        if(value != nil && [value length] >0 ){
            if([key.lowercaseString containsString:@"dimension"]){
                NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^0-9]" options:NSRegularExpressionCaseInsensitive  error:&error];
                NSString *idx = [regex stringByReplacingMatchesInString:key options:0 range:NSMakeRange(0, [key length]) withTemplate:@""];
                [mTracker set:[GAIFields customDimensionForIndex:[idx integerValue]] value:value];
            }
            if([key.lowercaseString containsString:@"metric"]){
                NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^0-9]" options:NSRegularExpressionCaseInsensitive  error:&error];
                NSString *idx = [regex stringByReplacingMatchesInString:key options:0 range:NSMakeRange(0, [key length]) withTemplate:@""];
                [mTracker set:[GAIFields customMetricForIndex:[idx integerValue]] value:value];
            }
            if([key.lowercaseString isEqual:@"uid"]){ [mTracker set:kGAIUserId  value:value]; }
            if([key.lowercaseString isEqual:@"title"]){ [mTracker set:kGAIScreenName value:value]; }
            if([key.lowercaseString isEqual:@"camp_url"]){
                [ecommerceBuilder setCampaignParametersFromUrl:value];
            }
            if([key.lowercaseString isEqual:@"cu"]){ [mTracker set:kGAICurrencyCode value:value]; }
            if([key.lowercaseString isEqual:@"category"]){ category = value; }
            if([key.lowercaseString isEqual:@"action"]){ action = value; }
            if([key.lowercaseString isEqual:@"label"]){ label = value; }
            if([key.lowercaseString isEqual:@"value"]){ event_value = value; }
            if([key.lowercaseString isEqual:@"ni"] && [[GAInfo valueForKey:key]  isEqual:@"1"]){
                [ecommerceBuilder set:@"1" forKey:kGAINonInteraction];
            }
        }
    }
    ecommerceBuilder = [GAIDictionaryBuilder createEventWithCategory:category action:action label:label value:event_value != nil ?@([event_value integerValue]): nil  ];
    //제품클릭 단계

    if([EcommerceStep.lowercaseString isEqual:@"impression"]){
        NSString *productActionList = GAAction[@"af_list"];
        for(NSString *keys in GAProduct){
            [GAProduct[keys] setObject:productActionList forKey:@"prlist"];
        }
    }

    if([EcommerceStep.lowercaseString isEqual:@"click"]){
        GAIEcommerceProductAction *pa = [GAIEcommerceProductAction new];
        [pa setAction:kGAIPAClick];
        pa = GA_ActionField(GAAction, pa);
        [ecommerceBuilder setProductAction:pa];
    }
    //디테일단계
    if([EcommerceStep.lowercaseString isEqual:@"detail"]){
        GAIEcommerceProductAction *pa = [GAIEcommerceProductAction new];
        [pa setAction:kGAIPADetail];
        pa = GA_ActionField(GAAction, pa);
        [ecommerceBuilder setProductAction:pa];
    }
    //장바구니추가 단계
    if([EcommerceStep.lowercaseString isEqual:@"add"]){
        GAIEcommerceProductAction *pa = [GAIEcommerceProductAction new];
        [pa setAction:kGAIPAAdd];
        pa = GA_ActionField(GAAction, pa);
        [ecommerceBuilder setProductAction:pa];
    }
    //장바구니삭제 단계
    if([EcommerceStep.lowercaseString isEqual:@"remove"]){
        GAIEcommerceProductAction *pa = [GAIEcommerceProductAction new];
        [pa setAction:kGAIPARemove];
        pa = GA_ActionField(GAAction, pa);
        [ecommerceBuilder setProductAction:pa];
    }
    //체크아웃 단계
    if([EcommerceStep.lowercaseString isEqual:@"checkout"]){
        GAIEcommerceProductAction *pa = [GAIEcommerceProductAction new];
        [pa setAction:kGAIPACheckout];
        pa = GA_ActionField(GAAction, pa);
        [ecommerceBuilder setProductAction:pa];
    }
    //결제 단계
    if([EcommerceStep.lowercaseString isEqual:@"purchase"]){
        GAIEcommerceProductAction *pa = [GAIEcommerceProductAction new];
        [pa setAction:kGAIPAPurchase];
        pa = GA_ActionField(GAAction, pa);
        [ecommerceBuilder setProductAction:pa];
    }
    //리펀드 단계
    if([EcommerceStep.lowercaseString isEqual:@"refund"]){
        GAIEcommerceProductAction *pa = [GAIEcommerceProductAction new];
        [pa setAction:kGAIPARefund];
        pa = GA_ActionField(GAAction, pa);
        [ecommerceBuilder setProductAction:pa];
    }
    if([EcommerceStep.lowercaseString containsString:@"promotion"]){
        GAIEcommercePromotion *promotion = [[GAIEcommercePromotion alloc]init];
        for(NSString *key in GAInfo){
            NSString *value = [GAInfo valueForKey:key];
            if(value != nil && [value length] >0 ){
                if([key.lowercaseString isEqual:@"promo_id"]){ [promotion setId:value]; }
                if([key.lowercaseString isEqual:@"promo_nm"]){ [promotion setName:value]; }
                if([key.lowercaseString isEqual:@"promo_cr"]){ [promotion setCreative:value]; }
                if([key.lowercaseString isEqual:@"promo_ps"]){ [promotion setPosition:value]; }
            }
        }
        if([EcommerceStep.lowercaseString isEqual:@"promotionclick"]){
            [ecommerceBuilder set:kGAIPromotionClick forKey:kGAIPromotionAction];
        }
        [ecommerceBuilder addPromotion:promotion];
    }else{
        ecommerceBuilder = GA_Product(EcommerceStep, GAProduct, ecommerceBuilder);
    }
    [mTracker send:[ecommerceBuilder build]];
    [mTracker set:kGAIScreenName value:nil];
    [mTracker set:kGAIUserId value:nil];
    GAData_Nilset(GAInfo);
}



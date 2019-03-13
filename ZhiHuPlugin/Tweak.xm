#import <UIKit/UIKit.h>
#import <WebKit/WKWebView.h>

%hook ZHHybridWebViewController

- (void)webView:(id)arg1 didFinishNavigation:(id)arg2
{
    %orig(arg1,arg2);
	[arg1 evaluateJavaScript:@"var innStyle = document.createElement('style');var head = document.getElementsByTagName('head')[0];innStyle.type = 'text/css';innStyle.rel = 'stylesheet';innStyle.appendChild(document.createTextNode('.Advert-largeAd { display: none; }'));head.appendChild(innStyle);innStyle.appendChild(document.createTextNode('.AnswerRecomReading { display: none; }'));head.appendChild(innStyle);innStyle.appendChild(document.createTextNode('.RecommendList-Wrapper { display: none; }'));head.appendChild(innStyle);" completionHandler:nil];
}

%end

%hook ZHLaunchingAd

+ (id)sharedInstance
{
    return nil;
}

%end



%hook ZHFeedADWrap

- (id)initWithProperties:(id)arg1
{
    return nil;
}

%end

%hook ZHKMFeed

- (id)initWithProperties:(id)arg1
{
    return nil;
}

%end

%hook ZHListAD

+ (id)modelWithJSON:(id)arg1
{
    return nil;
}

%end

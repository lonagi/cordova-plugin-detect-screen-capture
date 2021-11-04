#import <Cordova/CDVPlugin.h> // this already includes Foundation.h
#import "DetectScreenRecording.h"

@implementation DetectScreenRecording
@synthesize captureStatusCallbackId;

- (void)pluginInitialize {
  NSLog(@"DetectScreenRecording initialize");

  NSNotificationCenter* center = [NSNotificationCenter defaultCenter];

  if (@available(iOS 11.0, *)) {
    [center
      addObserver:self
      selector:@selector(capturedDidChange:)
      name:UIScreenCapturedDidChangeNotification object:nil];
  }
}

- (void)capturedDidChange:(NSNotification*)notification {
  BOOL isCaptured = [UIScreen mainScreen].isCaptured;
  [self.webView performSelector:@selector(evaluateJavaScript:completionHandler:) withObject:@"cordova.fireDocumentEvent('screenrecord');" withObject:nil];
  [self.commandDelegate evalJs:@"cordova.fireDocumentEvent('screenrecord');" ];
}

@end
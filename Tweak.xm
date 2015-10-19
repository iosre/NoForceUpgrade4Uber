%hook NSDictionary
- (NSNumber *)validatedType:(Class)arg1 forKey:(NSString *)arg2 forCaller:(id)arg3 erroValue:(id)arg4
{
	if ([arg2 isEqualToString:@"forceUpgrade"]) return @NO;
	return %orig;
}
%end
/*
   %hook UBRootContainerViewControllerRider
   - (void)showForceUpgradeViewControllerWithURLString:(NSString *)urlString
   {
   }
   %end
 */

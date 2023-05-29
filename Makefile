PLATFORM_IOS = iOS Simulator,name=iPhone 14 Pro,OS=16.4

test:
	@xcodebuild test \
		-scheme design-system-Package \
		-destination platform="$(PLATFORM_IOS)"

format:
	@swift build -c release --package-path ./BuildTools/SwiftFormatTool --product swiftformat
	./BuildTools/SwiftFormatTool/.build/release/swiftformat ./
		
clean-snapshot:
	rm -rf Tests/**/__Snapshots__

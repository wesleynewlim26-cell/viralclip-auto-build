
# Keep all static initializers in our package
-keepclassmembers class id.wealthstock.viralclip.** {
    static <clinit>()V;
}

# Keep our Application and Activity classes
-keep class id.wealthstock.viralclip.ViralClipApplication { *; }
-keep class id.wealthstock.viralclip.MainActivity { *; }

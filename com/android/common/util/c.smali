.class public final synthetic Lcom/android/common/util/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lcom/android/common/util/AppFeatureUtils;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

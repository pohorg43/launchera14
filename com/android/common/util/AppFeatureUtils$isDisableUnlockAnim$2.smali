.class final Lcom/android/common/util/AppFeatureUtils$isDisableUnlockAnim$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/AppFeatureUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/AppFeatureUtils$isDisableUnlockAnim$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/AppFeatureUtils$isDisableUnlockAnim$2;

    invoke-direct {v0}, Lcom/android/common/util/AppFeatureUtils$isDisableUnlockAnim$2;-><init>()V

    sput-object v0, Lcom/android/common/util/AppFeatureUtils$isDisableUnlockAnim$2;->INSTANCE:Lcom/android/common/util/AppFeatureUtils$isDisableUnlockAnim$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .registers 4

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_32

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.android.launcher.disable_unlock_anim"

    invoke-static {v0, v2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "debug.launcher.disable_unlock_animation"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isRLMDevice()Z

    move-result p0

    if-eqz p0, :cond_33

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getAppContext()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->isHighLevelAnimation(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_33

    :cond_32
    const/4 v1, 0x1

    :cond_33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils$isDisableUnlockAnim$2;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

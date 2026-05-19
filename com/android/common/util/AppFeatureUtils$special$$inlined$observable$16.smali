.class public final Lcom/android/common/util/AppFeatureUtils$special$$inlined$observable$16;
.super Lv4/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/AppFeatureUtils;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv4/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 AppFeatureUtils.kt\ncom/android/common/util/AppFeatureUtils\n*L\n1#1,73:1\n1108#2,6:74\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lv4/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public afterChange(Lz4/n;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/n<",
            "*>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string/jumbo p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "FEATURE_DEFAULT_ADD_TO_WORKSPACE_OFF_COTA_NONREBOOT. old = "

    const-string p3, ", new = "

    const-string v0, "AppFeatureUtils"

    invoke-static {p2, p1, p3, p0, v0}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eq p1, p0, :cond_3f

    if-eqz p0, :cond_3f

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "getAppContext()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isAddAppToWorkSpaceForDrawerMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3f

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isDefaultAddToWorkspace()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isDefaultAddToWorkspaceOffCotaNonRebootListener()Lcom/android/common/util/OnFeatureChangedListener;

    move-result-object p0

    if-eqz p0, :cond_3f

    invoke-interface {p0}, Lcom/android/common/util/OnFeatureChangedListener;->onFeatureChanged()V

    :cond_3f
    return-void
.end method

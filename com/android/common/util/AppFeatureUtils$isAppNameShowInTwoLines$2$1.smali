.class final Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/AppFeatureUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1;

    invoke-direct {v0}, Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1;-><init>()V

    sput-object v0, Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1;->INSTANCE:Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    invoke-virtual {p0, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->needUpdateLayoutAfterCota(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_40

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    if-eqz p0, :cond_40

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    if-eqz p0, :cond_40

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    :cond_3d
    invoke-virtual {p0, v1}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->setCurrentGridManual(Landroid/content/Context;)V

    :cond_40
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    if-eqz p0, :cond_63

    sget-object v0, Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1$1;->INSTANCE:Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1$1;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->updateAllIcons(Ljava/util/function/Consumer;)V

    :cond_63
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isCotaReload()Z

    move-result p0

    if-nez p0, :cond_7f

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_78

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_78

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_78
    const-string p0, "AppFeatureUtils"

    const-string v0, "isAppNameShowInTwoLines is forceReload"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7f
    return-void
.end method

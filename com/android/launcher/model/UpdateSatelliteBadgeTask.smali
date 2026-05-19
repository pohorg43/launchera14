.class public final Lcom/android/launcher/model/UpdateSatelliteBadgeTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/model/UpdateSatelliteBadgeTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/model/UpdateSatelliteBadgeTask$Companion;

.field private static final PHONE_BOOK_CLASS_NAME:Ljava/lang/String; = "com.android.contacts.PeopleActivityAlias"

.field private static final TAG:Ljava/lang/String; = "UpdateSatelliteBadgeTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/model/UpdateSatelliteBadgeTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/model/UpdateSatelliteBadgeTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;->Companion:Lcom/android/launcher/model/UpdateSatelliteBadgeTask$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;->mUser:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static final execute$lambda$1$lambda$0(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 5

    const-string v0, "$updatedSatelliteBadge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspaceItemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v1, :cond_2e

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.contacts.PeopleActivityAlias"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    return-void
.end method

.method public static synthetic l(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;->execute$lambda$1$lambda$0(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 10

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appsList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    monitor-enter p2

    :try_start_1e
    iget-object v2, p0, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_29

    :cond_28
    move-object v2, v3

    :goto_29
    if-eqz v2, :cond_32

    const v3, 0x7f030050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    :cond_32
    if-eqz v3, :cond_6a

    invoke-static {v3}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;->mUser:Landroid/os/UserHandle;

    new-instance v5, Lcom/android/launcher/model/b;

    invoke-direct {v5, v3, v0}, Lcom/android/launcher/model/b;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    iget-object v4, p0, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v4}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    const-string/jumbo v4, "satelliteAPPPackage"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p3, v4, v3, v5}, Lcom/android/launcher3/model/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    const-string v5, "appsList.updatePackage(m…telliteAPPPackage, mUser)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_1e .. :try_end_69} :catchall_ca

    goto :goto_38

    :cond_6a
    monitor-exit p2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p1

    sget-object p2, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne p1, p2, :cond_7d

    invoke-virtual {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindApplicationsIfNeeded()V

    :cond_7d
    iget-object p1, p0, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p1

    if-eqz p1, :cond_c9

    iget-object p0, p0, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_ac

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getSuperPowerSaveModeLauncher()Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    move-result-object p1

    if-eqz p1, :cond_ac

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getSuperPowerSaveModeLauncher()Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    move-result-object p0

    if-eqz p0, :cond_a4

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->refreshSatelliteBadge()V

    :cond_a4
    const-string p0, "UpdateSatelliteBadgeTask"

    const-string p1, " Refresh SuperPowerSaveModeLauncher\'s data to display or hide satellite badge."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :cond_ac
    const-string p0, "UpdateSatelliteBadgeTask"

    const-string p1, " SuperPowerSaveModeLauncher is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b3
    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p0

    new-instance p1, Lcom/android/launcher/model/UpdateSatelliteBadgeEvent;

    const-string/jumbo p2, "updateSuperPowerSaveSelectAppActivitySatelliteBadge"

    invoke-direct {p1, p2}, Lcom/android/launcher/model/UpdateSatelliteBadgeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    const-string p0, "UpdateSatelliteBadgeTask"

    const-string p1, " The event of the super power saving interface refreshing the satellite icon has been sent."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c9
    return-void

    :catchall_ca
    move-exception p0

    monitor-exit p2

    throw p0
.end method

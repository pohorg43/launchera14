.class public Lcom/android/launcher3/model/OplusUserUnlockedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source ""


# static fields
.field private static final HAS_BIND_GLOBAL_SEARCH_APPWIDGET:Ljava/lang/String; = "has_bind_global_search_appwidget"

.field private static final TAG:Ljava/lang/String; = "OplusUserUnlockedTask"


# instance fields
.field private mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/OplusUserUnlockedTask;->mUser:Landroid/os/UserHandle;

    return-void
.end method

.method public static synthetic l(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->lambda$updateWidget$2(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private synthetic lambda$notifyUserUnlocked$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/model/OplusUserUnlockedTask;->mUser:Landroid/os/UserHandle;

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onUserUnlocked(Landroid/os/UserHandle;)V

    return-void
.end method

.method private static synthetic lambda$ofAppWidgetInfo$3(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateDeepShortcutAsUser$1(Landroid/os/UserHandle;Lcom/android/launcher3/util/ComponentKey;)Z
    .registers 2

    iget-object p1, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateWidget$2(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->rebindWidgetsWhenUserUnlocked(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/model/OplusUserUnlockedTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->lambda$notifyUserUnlocked$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic n(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->lambda$ofAppWidgetInfo$3(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method private notifyUserUnlocked()V
    .registers 2

    new-instance v0, Lcom/android/launcher/settings/g;

    invoke-direct {v0, p0}, Lcom/android/launcher/settings/g;-><init>(Lcom/android/launcher3/model/OplusUserUnlockedTask;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public static synthetic o(Landroid/os/UserHandle;Lcom/android/launcher3/util/ComponentKey;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->lambda$updateDeepShortcutAsUser$1(Landroid/os/UserHandle;Lcom/android/launcher3/util/ComponentKey;)Z

    move-result p0

    return p0
.end method

.method private static ofAppWidgetInfo(Ljava/util/List;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/badge/f;

    invoke-direct {v0, p0}, Lcom/android/launcher/badge/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private updateDeepShortcutAsUser(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/pm/UserCache;Lcom/android/launcher3/shortcuts/DeepShortcutManager;Landroid/os/UserHandle;)V
    .registers 16

    invoke-virtual {p3, p5}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "OplusUserUnlockedTask"

    if-eqz p3, :cond_21

    invoke-virtual {p4, p5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForAllShortcuts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->wasLastCallSuccess()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {p4, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->shortcutsLoaded(Z)V

    goto :goto_21

    :cond_1b
    const-string p3, "last call fail, set unlocked to false!"

    invoke-static {v2, p3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/model/j1;->b:Lcom/android/launcher3/model/j1;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/model/i1;->b:Lcom/android/launcher3/model/i1;

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string/jumbo v4, "updateDeepShortcutAsUser -- pinnedShortcutMaps = "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", user = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",isUserUnlocked："

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_70
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v9, v1, :cond_d3

    iget-object v1, v8, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p5, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p3, :cond_ca

    invoke-static {v8}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    if-nez v9, :cond_9c

    invoke-static {p1, v8, v1, p4}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->pinLegacyDeepShortcutIfNeeded(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/shortcuts/ShortcutKey;Lcom/android/launcher3/shortcuts/DeepShortcutManager;)Landroid/content/pm/ShortcutInfo;

    move-result-object v9

    :cond_9c
    if-nez v9, :cond_b7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remove invalid shortcut "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    :cond_b7
    iget v1, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    invoke-virtual {v8, v9, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    goto :goto_d0

    :cond_ca
    iget v1, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    :goto_d0
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d3
    :goto_d3
    const/4 v1, 0x1

    goto :goto_70

    :cond_d5
    invoke-virtual {p0, v4}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_e8

    invoke-static {v6}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/Set;)Ljava/util/function/Predicate;

    move-result-object p4

    const-string/jumbo v1, "removed because the target component is invalid, from updateDeepShortcutAsUser."

    invoke-virtual {p0, p4, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    :cond_e8
    invoke-static {p1}, Lcom/android/launcher3/util/PackageManagerHelper;->hasShortcutsPermission(Landroid/content/Context;)Z

    move-result p1

    iget-object p4, p0, Lcom/android/launcher3/model/OplusUserUnlockedTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    const/4 v1, 0x1

    invoke-virtual {p4, v1, p1}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data mode short permission = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_123

    iget-object p1, p2, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance p3, Lcom/android/launcher/badge/e;

    invoke-direct {p3, p5}, Lcom/android/launcher/badge/e;-><init>(Landroid/os/UserHandle;)V

    invoke-interface {p1, p3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p5, v0}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindDeepShortcuts(Lcom/android/launcher3/model/BgDataModel;)V

    :cond_123
    return-void
.end method

.method private updateWidget(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;)V
    .registers 13

    const-string/jumbo v0, "updateWidget, dataModel appWidgets size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusUserUnlockedTask"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object p2, p3, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    iget-object p3, p3, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_41
    :goto_41
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_de

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_69

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateWidget, appWidget = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    iget-object v6, p0, Lcom/android/launcher3/model/OplusUserUnlockedTask;->mUser:Landroid/os/UserHandle;

    iget-object v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    const-string v5, "ignore user "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_86
    iget-object v6, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_b3

    const/4 v6, 0x0

    invoke-virtual {v4, v7}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRuntimeFlag(I)Z

    move-result v8

    if-eqz v8, :cond_9f

    iget v6, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->runtimeStatusFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->runtimeStatusFlags:I

    move v6, v7

    :cond_9f
    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_ac

    iget v5, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_ad

    :cond_ac
    move v7, v6

    :goto_ad
    if-eqz v7, :cond_41

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_b3
    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_d9

    invoke-virtual {v4, v7}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_d9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWidget, widget maybe a auto install widget, can\'t delete it! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41

    :cond_d9
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41

    :cond_de
    const-string/jumbo p3, "updateWidget, updateWidget, update size = "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remove size = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_10f

    invoke-static {v2}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->ofAppWidgetInfo(Ljava/util/List;)Ljava/util/function/Predicate;

    move-result-object p3

    const-string/jumbo v2, "removed because the target component is invalid, from updateWidget."

    invoke-virtual {p0, p3, v2}, Lcom/android/launcher3/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    :cond_10f
    if-eqz p2, :cond_122

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    const-string/jumbo p1, "updateWidget, getInstalledProvidersForProfile when no widget"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_122
    new-instance p1, Lcom/android/launcher3/model/e1;

    invoke-direct {p1, v0, v5}, Lcom/android/launcher3/model/e1;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 12

    iput-object p3, p0, Lcom/android/launcher3/model/OplusUserUnlockedTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->notifyUserUnlocked()V

    sget-boolean p3, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    const-string v0, "OplusUserUnlockedTask"

    if-eqz p3, :cond_20

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher3/ota/OpOtaManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/ota/OpOtaManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/ota/OpOtaManager;->runOtaAsyncIfNeeded()Z

    move-result p3

    if-eqz p3, :cond_20

    const-string/jumbo p0, "op ota"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v1, p0, Lcom/android/launcher3/model/OplusUserUnlockedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {p3, v1}, Lcom/android/launcher/widget/GlobalSearchWidgetHelper;->checkAndAddGlobalSearch(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-direct {p0, p3, p1, p2}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->updateWidget(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;)V

    invoke-static {p3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/launcher3/pm/UserCache;

    iget-object v2, p0, Lcom/android/launcher3/model/OplusUserUnlockedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v7, v2}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    const-string/jumbo v3, "user = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/model/OplusUserUnlockedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isUnlocked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/UserHandle;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, v7

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->updateDeepShortcutAsUser(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/pm/UserCache;Lcom/android/launcher3/shortcuts/DeepShortcutManager;Landroid/os/UserHandle;)V

    goto :goto_68

    :cond_7e
    return-void
.end method

.class public Lcom/android/launcher3/popup/PopupPopulator;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MAX_SHORTCUTS:I = 0x4

.field public static final MAX_SHORTCUTS_IF_NOTIFICATIONS:I = 0x2

.field public static final NUM_DYNAMIC:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/popup/PopupPopulator$1;

    invoke-direct {v0}, Lcom/android/launcher3/popup/PopupPopulator$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/PopupPopulator;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/popup/PopupPopulator;->lambda$createUpdateRunnable$2(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/popup/PopupPopulator;->lambda$createUpdateRunnable$4(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationInfo;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/popup/PopupPopulator;->lambda$createUpdateRunnable$0(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static createUpdateRunnable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/os/Handler;",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/shortcuts/DeepShortcutView;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    new-instance v7, Lcom/android/launcher3/model/s0;

    move-object v0, v7

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/model/s0;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V

    return-object v7
.end method

.method public static synthetic d(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/PopupPopulator;->lambda$createUpdateRunnable$1(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V

    return-void
.end method

.method public static getShortcutInfoList(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_e
    move-object v3, v2

    :goto_f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-static {p0, v3}, Lcom/android/launcher3/Utilities;->isAppNeedHideDynamicShortcuts(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {p0, v3, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageUserEncrypted(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-static {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p0

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForManifestShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    goto :goto_3b

    :cond_2c
    new-instance p1, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->withContainer(Landroid/content/ComponentName;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object p0

    :goto_3b
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_4b

    :cond_42
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/notification/NotificationKeyData;

    iget-object v2, p1, Lcom/android/launcher3/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    :goto_4b
    invoke-static {}, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->getInstance()Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->filterShortcuts(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/launcher3/popup/PopupPopulator;->sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createUpdateRunnable$0(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationInfo;
    .registers 4

    new-instance v0, Lcom/android/launcher3/notification/NotificationInfo;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/notification/NotificationInfo;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v0
.end method

.method private static synthetic lambda$createUpdateRunnable$1(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->applyNotificationInfos(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$createUpdateRunnable$2(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->applyShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-void
.end method

.method private static synthetic lambda$createUpdateRunnable$3(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method

.method private static synthetic lambda$createUpdateRunnable$4(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .registers 11

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2c

    :cond_11
    invoke-virtual {v0, p0}, Lcom/android/launcher3/notification/NotificationListener;->getNotificationsForKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/d0;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/popup/d0;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_2c
    new-instance v1, Lcom/android/launcher3/model/s;

    invoke-direct {v1, p4, v0}, Lcom/android/launcher3/model/s;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_34
    invoke-static {p1, p2, p0}, Lcom/android/launcher3/popup/PopupPopulator;->getShortcutInfoList(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p2

    const/4 v0, 0x0

    :goto_41
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_72

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_72

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    new-instance v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v2, v1, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    invoke-virtual {p2, v2, v1}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    iput v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const/16 v3, -0x6b

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    new-instance v4, Lcom/android/common/debug/c;

    invoke-direct {v4, v3, v2, v1, p4}, Lcom/android/common/debug/c;-><init>(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {p3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_72
    return-void
.end method

.method public static sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1f

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1f
    sget-object p1, Lcom/android/launcher3/popup/PopupPopulator;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    return-object p0
.end method

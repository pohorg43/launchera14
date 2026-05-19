.class public Lcom/android/launcher3/model/BgDataModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/BgDataModel$Callbacks;,
        Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BgDataModel"


# instance fields
.field public final appWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final deepShortcutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;",
            ">;"
        }
    .end annotation
.end field

.field public final folders:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public lastBindId:I

.field public mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

.field public final marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

.field public final stringCache:Lcom/android/launcher3/model/StringCache;

.field public final widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

.field public final workspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/launcher3/model/WidgetsModel;

    invoke-direct {v0}, Lcom/android/launcher3/model/WidgetsModel;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    new-instance v0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-direct {v0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    new-instance v0, Lcom/android/launcher3/model/StringCache;

    invoke-direct {v0}, Lcom/android/launcher3/model/StringCache;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    new-instance v0, Lcom/android/launcher/model/BgDataModelHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher/model/BgDataModelHelper;-><init>(Lcom/android/launcher3/model/BgDataModel;)V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/BgDataModel;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/BgDataModel;->lambda$removeItem$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/model/BgDataModel;->lambda$updateShortcutPinnedState$2(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/model/BgDataModel;->lambda$updateShortcutPinnedState$3(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/BgDataModel;->lambda$removeItem$1(Landroid/content/Context;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$removeItem$0()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/LauncherCardUtil;->INSTANCE:Lcom/android/launcher3/card/LauncherCardUtil;

    invoke-static {p0}, Lcom/android/launcher3/card/LauncherCardUtil;->hasSeedOrGroupCard(Lcom/android/launcher3/model/BgDataModel;)Z

    move-result p0

    if-nez p0, :cond_d

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->release()V

    :cond_d
    return-void
.end method

.method private synthetic lambda$removeItem$1(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static synthetic lambda$updateShortcutPinnedState$2(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static synthetic lambda$updateShortcutPinnedState$3(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p0

    const-string p1, "BgDataModel"

    const-string p2, "Failed to unpin shortcut"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void
.end method

.method private declared-synchronized updateShortcutPinnedState(Landroid/content/Context;Lcom/android/launcher3/shortcuts/ShortcutKey;Ljava/util/function/BiConsumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_d

    :try_start_3
    const-string p1, "BgDataModel"

    const-string/jumbo p2, "shortcutkey is null , return"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_56

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    iget-object v0, p2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    new-instance v2, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-virtual {v2, v0}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/model/z;->a:Lcom/android/launcher3/model/z;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/model/c0;->b:Lcom/android/launcher3/model/c0;

    invoke-static {v3}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {p3, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_56

    :try_start_40
    const-class p3, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0, v2, p2}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_4b} :catch_4c
    .catchall {:try_start_40 .. :try_end_4b} :catchall_56

    goto :goto_54

    :catch_4c
    move-exception p1

    :try_start_4d
    const-string p2, "BgDataModel"

    const-string p3, "Failed to pin shortcut"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_56

    :goto_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/model/LoaderMemoryLogger;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/model/LoaderMemoryLogger;)V
    .registers 12
    .param p4  # Lcom/android/launcher3/model/LoaderMemoryLogger;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p4, :cond_1a

    :try_start_6
    const-string v3, "BgDataModel"

    const-string v4, "Adding item to ID map: %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p4, v1, v3, v4, v5}, Lcom/android/launcher3/model/LoaderMemoryLogger;->addLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1a
    iget-object p4, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/launcher/model/BgDataModelHelper;->hasFilterItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result p4
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_fb

    if-eqz p4, :cond_24

    monitor-exit p0

    return-void

    :cond_24
    :try_start_24
    iget-object p4, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    invoke-virtual {p4, p2}, Lcom/android/launcher/model/BgDataModelHelper;->filterItemForIdMap(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget p4, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz p4, :cond_69

    if-eq p4, v2, :cond_69

    if-eq p4, v1, :cond_58

    const/4 v1, 0x5

    if-eq p4, v1, :cond_4e

    const/4 v1, 0x6

    if-eq p4, v1, :cond_69

    const/16 v1, 0x63

    if-eq p4, v1, :cond_4e

    const/16 v1, 0x64

    if-eq p4, v1, :cond_44

    packed-switch p4, :pswitch_data_fe

    goto/16 :goto_e5

    :cond_44
    iget-object p4, p0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e5

    :cond_4e
    iget-object p4, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e5

    :cond_58
    iget-object p4, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p4, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e5

    :cond_69
    :pswitch_69  #0xc9, 0xca, 0xcb, 0xcc, 0xcd, 0xce
    iget p4, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-eq p4, v1, :cond_db

    const/16 v1, -0x65

    if-ne p4, v1, :cond_74

    goto :goto_db

    :cond_74
    if-eqz p3, :cond_9a

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p4}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result p4

    if-nez p4, :cond_e5

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adding item: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to a folder that  doesn\'t exist"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "BgDataModel"

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    :cond_9a
    invoke-virtual {p0, p4}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p4

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v1

    if-eqz v1, :cond_d4

    sget-object v1, Lcom/android/launcher3/folder/OplusFolderUtil;->INSTANCE:Lcom/android/launcher3/folder/OplusFolderUtil;

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v3, p4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1, v3}, Lcom/android/launcher3/folder/OplusFolderUtil;->isExistInFolderContents(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_d4

    const-string p4, "BgDataModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addItem, isInSimpleMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e5

    :cond_d4
    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p4, v1, v0}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_e5

    :cond_db
    :goto_db
    const-string p4, "bgData_add"

    invoke-static {p2, p4}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->printBgDataExpandItemAction(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e5
    :goto_e5
    iget-object p4, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    invoke-virtual {p4, p2}, Lcom/android/launcher/model/BgDataModelHelper;->onItemAdded(Lcom/android/launcher3/model/data/ItemInfo;)V

    if-eqz p3, :cond_f9

    iget p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne p3, v2, :cond_f9

    invoke-static {p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p2

    sget-object p3, Lcom/android/launcher3/model/y;->a:Lcom/android/launcher3/model/y;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;Lcom/android/launcher3/shortcuts/ShortcutKey;Ljava/util/function/BiConsumer;)V
    :try_end_f9
    .catchall {:try_start_24 .. :try_end_f9} :catchall_fb

    :cond_f9
    monitor-exit p0

    return-void

    :catchall_fb
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_fe
    .packed-switch 0xc9
        :pswitch_69  #000000c9
        :pswitch_69  #000000ca
        :pswitch_69  #000000cb
        :pswitch_69  #000000cc
        :pswitch_69  #000000cd
        :pswitch_69  #000000ce
    .end packed-switch
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    invoke-virtual {v0}, Lcom/android/launcher/model/BgDataModelHelper;->clearOplus()V

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v0, v0, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "--proto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/model/BgDataModelHelper;->dumpProto(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Data Model:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ---- workspace screens: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v0, p2

    :goto_3c
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v1, v1, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    const-string v1, " "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_61
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ---- card items "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, p2

    :goto_79
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x9

    if-ge v0, v1, :cond_a7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_a7
    const-string v0, " ---- workspace items "

    invoke-static {p1, v0, p3}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    move v0, p2

    :goto_ad
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    :cond_d9
    const-string v0, " ---- appwidget items "

    invoke-static {p1, v0, p3}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    move v0, p2

    :goto_df
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_df

    :cond_10b
    const-string v0, " ---- folder items "

    invoke-static {p1, v0, p3}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    move v0, p2

    :goto_111
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_194

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p2

    :goto_13b
    :try_start_13b
    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_190

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_176} :catch_179

    add-int/lit8 v1, v1, 0x1

    goto :goto_13b

    :catch_179
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump folder contents e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BgDataModel"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_190
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_111

    :cond_194
    const-string v0, " ---- items id map "

    invoke-static {p1, v0, p3}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    move v0, p2

    :goto_19a
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19a

    :cond_1c6
    array-length v0, p4

    if-lez v0, :cond_207

    aget-object p2, p4, p2

    const-string p4, "--all"

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_207

    const-string/jumbo p2, "shortcut counts "

    invoke-static {p1, p2, p3}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_204

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1e3

    :cond_204
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_207
    return-void
.end method

.method public declared-synchronized findFolderByTitle(Ljava/lang/String;)Lcom/android/launcher3/model/data/FolderInfo;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_e

    goto :goto_34

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_32

    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_36

    if-eqz v3, :cond_2f

    monitor-exit p0

    return-object v2

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_32
    monitor-exit p0

    return-object v1

    :cond_34
    :goto_34
    monitor-exit p0

    return-object v1

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_6

    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2a

    :cond_4a
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarExpandDataItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_52
    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_52

    :cond_72
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7a
    if-ltz v0, :cond_ab

    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8a
    :goto_8a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_8a

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_8a

    :cond_a8
    add-int/lit8 v0, v0, -0x1

    goto :goto_7a

    :cond_ab
    return-void
.end method

.method public declared-synchronized getAllWorkspaceItems()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v2, :cond_60

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4e

    const/4 v3, 0x5

    if-eq v2, v3, :cond_48

    const/4 v3, 0x6

    if-eq v2, v3, :cond_60

    const/16 v3, 0x63

    if-eq v2, v3, :cond_48

    const/16 v3, 0x64

    if-eq v2, v3, :cond_32

    packed-switch v2, :pswitch_data_84

    goto :goto_6a

    :cond_32
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/android/launcher3/card/LauncherCardUtil;->isSeedOrGroupCard(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/model/n;

    invoke-direct {v3, p0}, Lcom/android/launcher3/model/n;-><init>(Lcom/android/launcher3/model/BgDataModel;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_6a

    :cond_48
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6a

    :cond_4e
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6a

    :cond_5b
    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_60
    :pswitch_60  #0xc9, 0xca, 0xcb, 0xcc, 0xcd, 0xce
    const-string v2, "bgData_remove"

    invoke-static {v1, v2}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->printBgDataExpandItemAction(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6a
    :goto_6a
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    invoke-virtual {v2, v1}, Lcom/android/launcher/model/BgDataModelHelper;->onItemRemoved(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_a

    :cond_77
    new-instance p2, Lcom/android/launcher/model/b;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher/model/b;-><init>(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V
    :try_end_7f
    .catchall {:try_start_1 .. :try_end_7f} :catchall_81

    monitor-exit p0

    return-void

    :catchall_81
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_84
    .packed-switch 0xc9
        :pswitch_60  #000000c9
        :pswitch_60  #000000ca
        :pswitch_60  #000000cb
        :pswitch_60  #000000cc
        :pswitch_60  #000000cd
        :pswitch_60  #000000ce
    .end packed-switch
.end method

.method public varargs declared-synchronized removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_31

    :try_start_3
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/ComponentKey;

    iget-object v2, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v1, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :cond_31
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_35
    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_5c

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p3

    if-nez p3, :cond_54

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p3

    if-eqz p3, :cond_5c

    :cond_54
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_5c

    move p3, v0

    goto :goto_5d

    :cond_5c
    const/4 p3, 0x0

    :goto_5d
    if-eqz p3, :cond_35

    new-instance p3, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-direct {p3, v1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object p2, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    if-nez p2, :cond_79

    goto :goto_7e

    :cond_79
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr v0, p2

    :goto_7e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_3 .. :try_end_85} :catchall_88

    goto :goto_35

    :cond_86
    monitor-exit p0

    return-void

    :catchall_88
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateShortcutPinnedState(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;Landroid/os/UserHandle;)V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public declared-synchronized updateShortcutPinnedState(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->wasSuccess()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_da

    if-nez v1, :cond_13

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/model/a0;->a:Lcom/android/launcher3/model/a0;

    sget-object v2, Lcom/android/launcher3/d2;->d:Lcom/android/launcher3/d2;

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {}, Ljava/util/stream/Stream;->builder()Ljava/util/stream/Stream$Builder;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/common/a;

    invoke-direct {v2, v1}, Lcom/android/common/a;-><init>(Ljava/util/stream/Stream$Builder;)V

    invoke-virtual {p0, p2, v2}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    invoke-interface {v1}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/folder/c;->c:Lcom/android/launcher3/folder/c;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/model/b0;->b:Lcom/android/launcher3/model/b0;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/model/ItemInstallQueue;->getPendingShortcuts(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/folder/f;->c:Lcom/android/launcher3/folder/f;

    sget-object v3, Lcom/android/launcher3/folder/g;->c:Lcom/android/launcher3/folder/g;

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7a
    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-nez v4, :cond_9c

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    :cond_9c
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    if-ne v5, v6, :cond_ac

    invoke-interface {v4, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4
    :try_end_aa
    .catchall {:try_start_13 .. :try_end_aa} :catchall_da

    if-nez v4, :cond_7a

    :cond_ac
    :try_start_ac
    const-class v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v2, v5, p2}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_c2
    .catch Ljava/lang/SecurityException; {:try_start_ac .. :try_end_c2} :catch_c3
    .catch Ljava/lang/IllegalStateException; {:try_start_ac .. :try_end_c2} :catch_c3
    .catchall {:try_start_ac .. :try_end_c2} :catchall_da

    goto :goto_7a

    :catch_c3
    move-exception v2

    :try_start_c4
    const-string v3, "BgDataModel"

    const-string v4, "Failed to pin shortcut"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a

    :cond_cc
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/model/c;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher/model/c;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V
    :try_end_d8
    .catchall {:try_start_c4 .. :try_end_d8} :catchall_da

    monitor-exit p0

    return-void

    :catchall_da
    move-exception p1

    monitor-exit p0

    throw p1
.end method

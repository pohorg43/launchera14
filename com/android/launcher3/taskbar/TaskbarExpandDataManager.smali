.class public final Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;,
        Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$Companion;

.field public static final MAX_EXPAND_ITEM_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TaskbarExpandDataManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsBinding:Z

.field private final mIsLayoutRtl:Z

.field private final mItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadExpandTask:Ljava/lang/Runnable;

.field private mOnDataChangeListenerListener:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;

.field private final mOnExpandAreaEnableChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private final mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpDatas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->Companion:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mItemInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mPackages:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mTmpDatas:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher/touch/c;

    invoke-direct {v0, p0}, Lcom/android/launcher/touch/c;-><init>(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mOnExpandAreaEnableChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mIsLayoutRtl:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mOnExpandAreaEnableChangeListener$lambda$0(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;Z)V

    return-void
.end method

.method public static final synthetic access$getMIsLayoutRtl$p(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mIsLayoutRtl:Z

    return p0
.end method

.method public static final synthetic access$getMItemInfos$p(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mItemInfos:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMLoadExpandTask$p(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mLoadExpandTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getMOnDataChangeListenerListener$p(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;)Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mOnDataChangeListenerListener:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;

    return-object p0
.end method

.method public static final synthetic access$runOnMain(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final mOnExpandAreaEnableChangeListener$lambda$0(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;Z)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mTmpDatas:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mPackages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mItemInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mOnDataChangeListenerListener:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;

    if-eqz p1, :cond_35

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mItemInfos:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;->onDataChange(Ljava/util/List;)V

    goto :goto_35

    :cond_21
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p0

    if-eqz p0, :cond_35

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "getAppContext()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    :cond_35
    :goto_35
    return-void
.end method

.method private final runAsync(Ljava/lang/Runnable;)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final runOnMain(Ljava/lang/Runnable;)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final updateItems(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mItemInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSparseArrayKeys(Landroid/util/SparseArray;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v2, "item"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mItemInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mPackages:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateItems item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pkg null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskbarExpandDataManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_68
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mOnDataChangeListenerListener:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;

    if-eqz p1, :cond_71

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mItemInfos:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;->onDataChange(Ljava/util/List;)V

    :cond_71
    return-void
.end method


# virtual methods
.method public final getItemInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mItemInfos:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final handleItemsAdded(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->expandSwitchOffAndRemoveDirtyData(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mIsBinding:Z

    if-eqz v0, :cond_37

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mPackages:Ljava/util/List;

    invoke-static {v2, v0}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mTmpDatas:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mTmpDatas:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->updateItems(Landroid/util/SparseArray;)V

    const/4 p0, 0x1

    return p0

    :cond_37
    return v1
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onDataChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mOnDataChangeListenerListener:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;

    sget-object p1, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mOnExpandAreaEnableChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->registerTaskbarExpandAreaEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mOnDataChangeListenerListener:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mOnExpandAreaEnableChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->unregisterTaskbarExpandAreaEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final onFinishBinding()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mIsBinding:Z

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mTmpDatas:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final onHotseatExpandDataChange(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "packages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Taskbar"

    const-string v1, "TaskbarExpandDataManager"

    const-string/jumbo v2, "onHotseatExpandDataChange"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getAppContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->forceUpdateWhenPackageUninstall(Ljava/util/ArrayList;Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2d
    if-ge v6, v4, :cond_60

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "packagesCopy[i]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->trimIDOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4a

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_48

    goto :goto_4a

    :cond_48
    move v7, v5

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v7, 0x1

    :goto_4b
    if-nez v7, :cond_5d

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->trimIDOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    :cond_60
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mPackages:Ljava/util/List;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    if-eqz v2, :cond_a0

    :cond_6a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onHotseatExpandDataChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mPackages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mPackages:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isBinding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mIsBinding:Z

    invoke-static {v2, v3, v0, v1}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$onHotseatExpandDataChange$task$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$onHotseatExpandDataChange$task$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mLoadExpandTask:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->runAsync(Ljava/lang/Runnable;)V

    :cond_a0
    return-void
.end method

.method public final onStartBinding()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mIsBinding:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mItemInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->mTmpDatas:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

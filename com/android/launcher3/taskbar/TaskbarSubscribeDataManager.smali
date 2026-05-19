.class public final Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$OnDataChangeListener;,
        Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$Companion;

.field private static final TAG:Ljava/lang/String; = "TaskbarSubscribeDataManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItemInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDataChangeListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$OnDataChangeListener;

.field private final mSubscribeStateListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$mSubscribeStateListener$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->Companion:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mItemInfos:Landroid/util/SparseArray;

    new-instance p1, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$mSubscribeStateListener$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$mSubscribeStateListener$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mSubscribeStateListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$mSubscribeStateListener$1;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->updateSubscribeData$lambda$1$lambda$0(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static final synthetic access$runOnMain(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$updateSubscribeData(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->updateSubscribeData(IZ)V

    return-void
.end method

.method public static synthetic b(ILcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->updateSubscribeData$lambda$1(ILcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;)V

    return-void
.end method

.method private final runAsync(Ljava/lang/Runnable;)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final runOnMain(Ljava/lang/Runnable;)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final updateSubscribeData(IZ)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSubscribeData itemType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taskbar"

    const-string v2, "TaskbarSubscribeDataManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4a

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mItemInfos:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    if-nez p2, :cond_34

    new-instance p2, Landroidx/core/content/res/c;

    invoke-direct {p2, p1, p0}, Landroidx/core/content/res/c;-><init>(ILcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->runAsync(Ljava/lang/Runnable;)V

    goto :goto_76

    :cond_34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSubscribeData already contains itemType: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    :cond_4a
    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mItemInfos:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p2, :cond_61

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mItemInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mOnDataChangeListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$OnDataChangeListener;

    if-eqz p0, :cond_76

    invoke-interface {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$OnDataChangeListener;->onItemRemove(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_76

    :cond_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSubscribeData not contains itemType: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    :goto_76
    return-void
.end method

.method private static final updateSubscribeData$lambda$1(ILcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->createSubscribeItemInfo(II)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/badge/c;

    invoke-direct {v1, p1, p0, v0}, Lcom/android/launcher/badge/c;-><init>(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-direct {p1, v1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final updateSubscribeData$lambda$1$lambda$0(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mItemInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mItemInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    iput p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mOnDataChangeListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$OnDataChangeListener;

    if-eqz p0, :cond_21

    invoke-interface {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$OnDataChangeListener;->onItemAdd(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_21
    return-void
.end method


# virtual methods
.method public final clearItems(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "tobeRemoveTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mItemInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_a

    :cond_20
    return-void
.end method

.method public final getItems(Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mItemInfos:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSparseArrayKeys(Landroid/util/SparseArray;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_34

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "keys[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mItemInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v4, "item"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_34
    return-object v0
.end method

.method public final handleItemsAdded(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-static {p1, v1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->subscribeItemSwitchOffAndRemoveDirtyData(Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_26

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-nez v2, :cond_26

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    :cond_26
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mItemInfos:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_5d

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_45

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->getSubscribeIconBitmap(I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_4d

    :cond_45
    new-instance v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    :goto_4d
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mItemInfos:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mOnDataChangeListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$OnDataChangeListener;

    if-eqz p0, :cond_5b

    invoke-interface {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$OnDataChangeListener;->onItemAdd(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_5b
    const/4 p0, 0x1

    return p0

    :cond_5d
    return v1
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$OnDataChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mOnDataChangeListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$OnDataChangeListener;

    sget-object p1, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;->getInstance()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mSubscribeStateListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$mSubscribeStateListener$1;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->registerListener(Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;->getInstance()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->mSubscribeStateListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$mSubscribeStateListener$1;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->unregisterListener(Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;)V

    return-void
.end method

.class public final Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecentViewEmbeddedRuler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentViewEmbeddedRuler.kt\ncom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1855#2,2:80\n1611#2:86\n1855#2:87\n1856#2:89\n1612#2:90\n1855#2,2:91\n54#3,2:82\n57#3:85\n1#4:84\n1#4:88\n*S KotlinDebug\n*F\n+ 1 RecentViewEmbeddedRuler.kt\ncom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler\n*L\n38#1:80,2\n61#1:86\n61#1:87\n61#1:89\n61#1:90\n71#1:91,2\n41#1:82,2\n41#1:85\n61#1:88\n*E\n"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler$Companion;

.field private static final TAG:Ljava/lang/String; = "RecentViewEmbeddedRuler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mRecentsView:Lcom/android/quickstep/views/RecentsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;->Companion:Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "mRecentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;->clearAndRemoveAllTasks$lambda$5(Ljava/util/List;)V

    return-void
.end method

.method private static final clearAndRemoveAllTasks$lambda$5(Ljava/util/List;)V
    .registers 3

    const-string v0, "$clearEmbeddedContainerList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    goto :goto_9

    :cond_25
    return-void
.end method


# virtual methods
.method public final clearAndRemoveAllTasks(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 10

    sget-object v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->INSTANCE:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

    invoke-virtual {v0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getHasFeature()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;->getAllRecentTasks()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.oplus.exserviceui"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLocking(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.oplus.pscanvas"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLocking(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_98

    :cond_33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3c
    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_52

    :cond_50
    move-object v2, v5

    goto :goto_6b

    :cond_52
    const/4 v4, 0x0

    if-eqz p1, :cond_62

    iget-object v6, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v6, :cond_62

    iget-object v7, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v7, v6, :cond_62

    goto :goto_63

    :cond_62
    move v3, v4

    :goto_63
    if-nez v3, :cond_50

    invoke-static {v2, v0}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->hasLockedEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;)Z

    move-result v3

    if-nez v3, :cond_50

    :goto_6b
    if-eqz v2, :cond_3c

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_71
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_98

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "clearAndRemoveAllTasks(), list: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentViewEmbeddedRuler"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p1, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {p1, v1}, Lcom/android/wm/shell/draganddrop/b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_98
    return-void
.end method

.method public final getAllRecentTasks()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel;

    iget-object v1, v1, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/OplusRecentTasksListImpl;->getFilter()Lcom/oplus/quickstep/data/OplusRecentTasksFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->getEmbeddedCacheTaskList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/GroupTask;

    iget-object v2, v2, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    const-string v3, "it.task1"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_38
    iget-object p0, p0, Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_3f
    if-ge v1, v2, :cond_65

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(index)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v3, Lcom/android/quickstep/views/TaskView;

    if-eqz v4, :cond_51

    check-cast v3, Lcom/android/quickstep/views/TaskView;

    goto :goto_52

    :cond_51
    const/4 v3, 0x0

    :goto_52
    if-eqz v3, :cond_62

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_62

    const-string v4, "task"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_65
    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

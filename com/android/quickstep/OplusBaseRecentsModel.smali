.class public abstract Lcom/android/quickstep/OplusBaseRecentsModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusBaseRecentsModel$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusBaseRecentsModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusBaseRecentsModel.kt\ncom/android/quickstep/OplusBaseRecentsModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1855#2,2:170\n1855#2,2:172\n1855#2:174\n1856#2:176\n1#3:175\n*S KotlinDebug\n*F\n+ 1 OplusBaseRecentsModel.kt\ncom/android/quickstep/OplusBaseRecentsModel\n*L\n104#1:170,2\n125#1:172,2\n151#1:174\n151#1:176\n*E\n"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusBaseRecentsModel$Companion;

.field private static final RECENTS_ICON_EXECUTOR:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final RECENTS_THUMBNAIL_EXECUTOR:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private currentTaskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field public final mIconCache:Lcom/android/quickstep/OplusTaskIconCacheImpl;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final mTaskListTaskBar:Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/quickstep/OplusBaseRecentsModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusBaseRecentsModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusBaseRecentsModel;->Companion:Lcom/android/quickstep/OplusBaseRecentsModel$Companion;

    new-instance v0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;

    const-string v1, "TaskIconCache-"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/OplusBaseRecentsModel;->RECENTS_ICON_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;

    const-string v1, "TaskThumbnailCache-"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/OplusBaseRecentsModel;->RECENTS_THUMBNAIL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/quickstep/OplusRecentTasksListImpl;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v2, "MAIN_EXECUTOR"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    invoke-direct {v3, p1}, Lcom/android/systemui/shared/system/KeyguardManagerCompat;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "INSTANCE.get(context)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/quickstep/SystemUiProxy;

    invoke-direct {v0, v1, v3, v5}, Lcom/android/quickstep/OplusRecentTasksListImpl;-><init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/quickstep/SystemUiProxy;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    new-instance v3, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    invoke-direct {v2, p1}, Lcom/android/systemui/shared/system/KeyguardManagerCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/quickstep/SystemUiProxy;

    invoke-direct {v3, v1, v2, v5}, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;-><init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/quickstep/SystemUiProxy;)V

    iput-object v3, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskListTaskBar:Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;

    new-instance v1, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    sget-object v2, Lcom/android/quickstep/OplusBaseRecentsModel;->RECENTS_ICON_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const-string v3, "RECENTS_ICON_EXECUTOR"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v3, p1}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/quickstep/OplusTaskIconCacheImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v1, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mIconCache:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    new-instance v2, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    sget-object v3, Lcom/android/quickstep/OplusBaseRecentsModel;->RECENTS_THUMBNAIL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const-string v5, "RECENTS_THUMBNAIL_EXECUTOR"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1, v3}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->setRecentTasksList(Lcom/android/quickstep/OplusRecentTasksListImpl;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "oplus.intent.action.SKIN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/quickstep/OplusBaseRecentsModel$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/OplusBaseRecentsModel$1;-><init>(Lcom/android/quickstep/OplusBaseRecentsModel;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/SystemUiProxy;

    new-instance v0, Lcom/android/quickstep/OplusBaseRecentsModel$2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/OplusBaseRecentsModel$2;-><init>(Lcom/android/quickstep/OplusBaseRecentsModel;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/SystemUiProxy;->registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    return-void
.end method

.method public static synthetic a(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/OplusBaseRecentsModel;->updateTasksInTaskStackChanged$lambda$7(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic b(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/OplusBaseRecentsModel;->updateTasksInTaskRemoved$lambda$4(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic c(ILcom/android/quickstep/OplusBaseRecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/util/ArrayList;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseRecentsModel;->preLoadTaskThumbnail$lambda$2(ILcom/android/quickstep/OplusBaseRecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/util/ArrayList;)V

    return-void
.end method

.method private final forceUpdateTaskSnapShot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->forceUpdateTaskSnapShot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method private static final preLoadTaskThumbnail$lambda$2(ILcom/android/quickstep/OplusBaseRecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/util/ArrayList;)V
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupTasks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_f
    :goto_f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, p0, :cond_2c

    const-string v0, "groupTask.task1.key"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceUpdateTaskSnapShot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    goto :goto_f

    :cond_2c
    iget-object v0, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_3a

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, p0, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    if-eqz v1, :cond_f

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const-string v1, "groupTask.task2!!.key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p2}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceUpdateTaskSnapShot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    goto :goto_f

    :cond_4a
    return-void
.end method

.method private static final updateTasksInTaskRemoved$lambda$4(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V
    .registers 13

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tasks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    move v1, v0

    :cond_12
    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/GroupTask;

    iget-object v3, v2, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v4, 0x0

    if-ne v3, p0, :cond_29

    :goto_27
    move v1, v4

    goto :goto_12

    :cond_29
    iget-object v2, v2, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_37

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_37

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, p0, :cond_37

    move v2, v0

    goto :goto_38

    :cond_37
    move v2, v4

    :goto_38
    if-eqz v2, :cond_12

    goto :goto_27

    :cond_3b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_60

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateTasksInTaskRemoved(), "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isRealRemoved="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OplusBaseRecentsModel"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    if-eqz v1, :cond_7d

    new-instance p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v2, p2

    move v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJ)V

    iget-object p0, p1, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/TaskThumbnailCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    iget-object p0, p1, Lcom/android/quickstep/OplusBaseRecentsModel;->mIconCache:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/TaskIconCache;->onTaskRemoved(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    :cond_7d
    return-void
.end method

.method private static final updateTasksInTaskStackChanged$lambda$7(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V
    .registers 8

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tasks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    :goto_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v3, p0, :cond_27

    iput-object v2, p1, Lcom/android/quickstep/OplusBaseRecentsModel;->currentTaskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    goto :goto_10

    :cond_27
    iget-object v2, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    iget-object v4, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v4, :cond_35

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v4, p0, :cond_35

    const/4 v3, 0x1

    :cond_35
    if-eqz v3, :cond_40

    if-eqz v2, :cond_3c

    iget-object v0, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    iput-object v0, p1, Lcom/android/quickstep/OplusBaseRecentsModel;->currentTaskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    goto :goto_10

    :cond_40
    iget-object v2, p1, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    const-string/jumbo v3, "task.task1"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object v0, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_10

    iget-object v1, p1, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_10

    :cond_5a
    return-void
.end method


# virtual methods
.method public final forceReloadedTasks()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentTasksList;->invalidateLoadedTasks()V

    return-void
.end method

.method public final getCurrentTaskKey()Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->currentTaskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    return-object p0
.end method

.method public final getLastLoadedTask()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusRecentTasksListImpl;->getLastLoadedTasks()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final preLoadTaskThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/TaskThumbnailCache;->getCacheSize()I

    move-result v1

    new-instance v2, Lcom/android/launcher3/allapps/q;

    invoke-direct {v2, p1, p0, p2}, Lcom/android/launcher3/allapps/q;-><init>(ILcom/android/quickstep/OplusBaseRecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentTasksList;->getTaskKeys(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public final updateTasksInTaskRemoved(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/TaskThumbnailCache;->getCacheSize()I

    move-result v1

    new-instance v2, Lcom/android/quickstep/q0;

    const/4 v3, 0x1

    invoke-direct {v2, p1, p0, v3}, Lcom/android/quickstep/q0;-><init>(ILcom/android/quickstep/OplusBaseRecentsModel;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentTasksList;->getTaskKeys(ILjava/util/function/Consumer;)V

    return v3
.end method

.method public final updateTasksInTaskStackChanged(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/TaskThumbnailCache;->getCacheSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    new-instance v2, Lcom/android/quickstep/q0;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Lcom/android/quickstep/q0;-><init>(ILcom/android/quickstep/OplusBaseRecentsModel;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentTasksList;->getTaskKeys(ILjava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

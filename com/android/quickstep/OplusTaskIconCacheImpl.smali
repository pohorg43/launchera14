.class public final Lcom/android/quickstep/OplusTaskIconCacheImpl;
.super Lcom/android/quickstep/TaskIconCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusTaskIconCacheImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskIconCacheImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskIconCacheImpl.kt\ncom/android/quickstep/OplusTaskIconCacheImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,407:1\n1549#2:408\n1620#2,3:409\n1855#2:414\n1855#2:415\n1856#2:417\n1856#2:418\n37#3,2:412\n1#4:416\n*S KotlinDebug\n*F\n+ 1 OplusTaskIconCacheImpl.kt\ncom/android/quickstep/OplusTaskIconCacheImpl\n*L\n136#1:408\n136#1:409,3\n328#1:414\n332#1:415\n332#1:417\n328#1:418\n136#1:412,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/OplusTaskIconCacheImpl$Companion;

.field public static final MAX_EMBEDDED_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OplusTaskIconCacheImpl"


# instance fields
.field private recentTasksList:Lcom/android/quickstep/OplusRecentTasksListImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusTaskIconCacheImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusTaskIconCacheImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusTaskIconCacheImpl;->Companion:Lcom/android/quickstep/OplusTaskIconCacheImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/launcher3/icons/IconProvider;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TaskIconCache;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/launcher3/icons/IconProvider;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/OplusTaskIconCacheImpl;Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->updateCache$lambda$8(Lcom/android/quickstep/OplusTaskIconCacheImpl;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/quickstep/util/GroupTask;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->updateTaskViewHeadTitle$lambda$12$lambda$11(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/quickstep/util/GroupTask;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/quickstep/util/GroupTask;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->updateTaskViewHeadTitle$lambda$12$lambda$10(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/quickstep/util/GroupTask;)V

    return-void
.end method

.method private final getEmbeddedCacheEntry(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
    .registers 10

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p2

    :cond_7
    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl;->recentTasksList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Lcom/android/quickstep/OplusRecentTasksListImpl;->checkEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_16
    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz p2, :cond_26

    iget-object v2, p2, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->emmbeddedTaskIds:[I

    if-eqz v2, :cond_26

    array-length v2, v2

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    if-ne v0, v1, :cond_2b

    if-eq v0, v2, :cond_61

    :cond_2b
    const-string v3, "getEmbeddedCacheEntry(), taskId="

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const-string v5, ", cur="

    const-string v6, ", new="

    invoke-static {v3, v4, v5, v0, v6}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cache="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remove cache."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskIconCacheImpl"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_60

    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    :cond_60
    const/4 p2, 0x0

    :cond_61
    return-object p2
.end method

.method private final getEntry(Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Bitmap;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
    .registers 11

    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->getCacheEntry(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    :cond_5
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    invoke-direct {v3}, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;-><init>()V

    iget-object v4, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    const-string v5, "mContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->title:Ljava/lang/String;

    iget v4, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->modifiedType:I

    iput v4, v3, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->modifiedType:I

    const/4 v4, 0x0

    if-eqz p2, :cond_41

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget p2, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    invoke-virtual {p0, v5, p2, v0, v4}, Lcom/android/quickstep/TaskIconCache;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p2

    iput-object p2, v3, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->splitIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_a6

    :cond_41
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget v5, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2, v2, v5}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    const-string p2, "getEntry: activityInfo is null "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez v2, :cond_58

    const/4 v4, 0x1

    :cond_58
    const-string v5, "QuickStep"

    const-string v6, "OplusTaskIconCacheImpl"

    invoke-static {p2, v4, v5, v6}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_9e

    iget-object p2, p0, Lcom/android/quickstep/TaskIconCache;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    invoke-virtual {p2, v2}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v4, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v7

    invoke-virtual {p0, p2, v4, v0, v7}, Lcom/android/quickstep/TaskIconCache;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p2

    iput-object p2, v3, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->splitIcon:Landroid/graphics/drawable/Drawable;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getEntry(), getBitmapInfo, task="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", splitIcon="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->splitIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, v6, p2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a6

    :cond_9e
    iget p2, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, p2}, Lcom/android/quickstep/TaskIconCache;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v3, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->splitIcon:Landroid/graphics/drawable/Drawable;

    :goto_a6
    iget-object p2, p0, Lcom/android/quickstep/TaskIconCache;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_cc

    if-nez v2, :cond_be

    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    :cond_be
    if-eqz v2, :cond_cc

    iget-object p2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/quickstep/TaskIconCache;->getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->contentDescription:Ljava/lang/String;

    :cond_cc
    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1, v3}, Lcom/android/quickstep/util/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    return-object v3
.end method

.method private final setTaskOrderInGroup(Lcom/android/quickstep/util/GroupTask;)V
    .registers 3

    iget-object p0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->taskOrder:I

    iget-object p0, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    if-nez p0, :cond_12

    goto :goto_15

    :cond_12
    const/4 p1, 0x2

    iput p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->taskOrder:I

    :goto_15
    return-void
.end method

.method private static final updateCache$lambda$8(Lcom/android/quickstep/OplusTaskIconCacheImpl;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl;->recentTasksList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    if-eqz v0, :cond_9d

    invoke-virtual {v0}, Lcom/android/quickstep/OplusRecentTasksListImpl;->getLastLoadedTasks()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9d

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    iget-object v2, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v3

    const-string/jumbo v4, "this"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_58

    invoke-virtual {v2}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v7, v5

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    :cond_50
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p3}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->updateEntry(Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V

    move v7, v6

    goto :goto_36

    :cond_58
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne v3, p2, :cond_70

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p3}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->updateEntry(Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V

    move v7, v6

    goto :goto_71

    :cond_70
    move v7, v5

    :cond_71
    :goto_71
    iget-object v2, v1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_95

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne v3, p2, :cond_86

    move v5, v6

    :cond_86
    if-eqz v5, :cond_89

    goto :goto_8a

    :cond_89
    const/4 v2, 0x0

    :goto_8a
    if-eqz v2, :cond_95

    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p3}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->updateEntry(Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V

    goto :goto_96

    :cond_95
    move v6, v7

    :goto_96
    if-eqz v6, :cond_14

    invoke-direct {p0, v1}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->updateTaskViewHeadTitle(Lcom/android/quickstep/util/GroupTask;)V

    goto/16 :goto_14

    :cond_9d
    return-void
.end method

.method private final updateEntry(Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->getEmbeddedCacheEntry(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object v0

    const-string/jumbo v1, "updateEntry(), entry=null?"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1b

    move v4, v3

    goto :goto_1c

    :cond_1b
    move v4, v2

    :goto_1c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", entry.title="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_29

    iget-object v4, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->title:Ljava/lang/String;

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    :goto_2a
    const-string v5, ", title="

    invoke-static {v1, v4, v5, p2}, Landroidx/fragment/app/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "QuickStep"

    const-string v4, "OplusTaskIconCacheImpl"

    invoke-static {v1, v4, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-le p2, v3, :cond_44

    move v2, v3

    :cond_44
    const-string p2, "mContext"

    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_52

    invoke-static {p1, p0}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->getEmbeddedTitle(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_56

    :cond_52
    invoke-static {p0, p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object p0

    :goto_56
    iput-object p0, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->title:Ljava/lang/String;

    iget p0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->modifiedType:I

    iput p0, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->modifiedType:I

    :cond_5c
    return-void
.end method

.method private final updateTaskViewHeadTitle(Lcom/android/quickstep/util/GroupTask;)V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    goto :goto_19

    :cond_18
    move-object v2, v1

    :goto_19
    if-eqz v2, :cond_26

    iget-object v3, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    goto :goto_27

    :cond_26
    move-object v2, v1

    :goto_27
    instance-of v3, v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v3, :cond_2e

    check-cast v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_2f

    :cond_2e
    move-object v2, v1

    :goto_2f
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_9b

    iget-object v5, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v5, :cond_7c

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->getSplitScreenCacheEntry(Lcom/android/quickstep/util/GroupTask;)Ljava/util/List;

    move-result-object p0

    iget-object v5, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    iget-object v6, v6, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->title:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    iget v6, v6, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->modifiedType:I

    iput v6, v5, Lcom/oplus/systemui/shared/system/OplusBaseTask;->modifiedType:I

    iget-object v5, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    iget-object v6, v6, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->title:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    iget p0, p0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->modifiedType:I

    iput p0, v5, Lcom/oplus/systemui/shared/system/OplusBaseTask;->modifiedType:I

    iget-object p0, v0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/quickstep/r;

    invoke-direct {v0, v2, p1}, Lcom/android/quickstep/r;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/quickstep/util/GroupTask;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9b

    :cond_7c
    iget-object v5, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    const-string v6, "groupTask.task1"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->getCacheEntry(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object p0

    iget-object v5, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v6, p0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->title:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iget p0, p0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->modifiedType:I

    iput p0, v5, Lcom/oplus/systemui/shared/system/OplusBaseTask;->modifiedType:I

    iget-object p0, v0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/quickstep/s;

    invoke-direct {v0, v2, p1}, Lcom/android/quickstep/s;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/quickstep/util/GroupTask;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9b
    :goto_9b
    const-string/jumbo p0, "updateTaskViewHeadTitle(), title1="

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", title2="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_b4

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    :cond_b4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", tv=null?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_bf

    goto :goto_c0

    :cond_bf
    move v3, v4

    :goto_c0
    const-string p1, "QuickStep"

    const-string v0, "OplusTaskIconCacheImpl"

    invoke-static {p0, v3, p1, v0}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final updateTaskViewHeadTitle$lambda$12$lambda$10(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/quickstep/util/GroupTask;)V
    .registers 3

    const-string v0, "$groupTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTitle(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private static final updateTaskViewHeadTitle$lambda$12$lambda$11(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/quickstep/util/GroupTask;)V
    .registers 3

    const-string v0, "$groupTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTitle(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method


# virtual methods
.method public getCacheEntry(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
    .registers 12

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->getEmbeddedCacheEntry(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v2, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    if-eqz v2, :cond_1e

    return-object v0

    :cond_1e
    new-instance v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    invoke-direct {v0}, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;-><init>()V

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, v2, v3}, Lcom/android/quickstep/TaskIconCache;->getIcon(Landroid/app/ActivityManager$TaskDescription;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_3b

    move v3, v5

    goto :goto_3c

    :cond_3b
    move v3, v4

    :goto_3c
    const-string v6, "mContext"

    iget-object v7, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_4a

    invoke-static {p1, v7}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->getEmbeddedTitle(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4e

    :cond_4a
    invoke-static {v7, p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v7

    :goto_4e
    iput-object v7, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->title:Ljava/lang/String;

    if-eqz v3, :cond_93

    iget-object v3, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    :cond_7e
    new-array v6, v4, [Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-static {v3, v6, v5}, Lcom/android/common/util/SplitScreenUtils;->getCombinationBitmapOriginal(Landroid/content/Context;[Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_99

    iget-object v3, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->convertIconByThemeSafely(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_99

    :cond_93
    iget-object v3, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->convertIconByThemeSafely(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_99
    :goto_99
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const-string v6, "OplusTaskIconCacheImpl"

    const-string v7, "QuickStep"

    if-eqz v2, :cond_c6

    const-string v2, "getCacheEntry: taskId="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v8, v8, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , icon null ? "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_b8

    goto :goto_b9

    :cond_b8
    move v5, v4

    :goto_b9
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->title:Ljava/lang/String;

    invoke-static {v2, v5, v7, v6}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c6
    if-eqz v3, :cond_f5

    sget-boolean v2, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    if-nez v2, :cond_d2

    invoke-static {p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isPairTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_f5

    :cond_d2
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v5

    invoke-virtual {p0, v2, v3, v5, v4}, Lcom/android/quickstep/TaskIconCache;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    move-object v2, v1

    goto :goto_154

    :cond_f5
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_14a

    iget-object v3, p0, Lcom/android/quickstep/TaskIconCache;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v8, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v8

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v9

    invoke-virtual {p0, v3, v5, v8, v9}, Lcom/android/quickstep/TaskIconCache;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCacheEntry(), task="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " getBitmapInfo, icon="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v6, v3}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_154

    :cond_14a
    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, v3}, Lcom/android/quickstep/TaskIconCache;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    :goto_154
    iget-object v3, p0, Lcom/android/quickstep/TaskIconCache;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_17e

    if-nez v2, :cond_170

    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    :cond_170
    if-eqz v2, :cond_17e

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/quickstep/TaskIconCache;->getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->contentDescription:Ljava/lang/String;

    :cond_17e
    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v2

    if-eqz v2, :cond_1aa

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    new-array v2, v1, [I

    :goto_18e
    if-ge v4, v1, :cond_1a7

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_1a1

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_1a2

    :cond_1a1
    const/4 v3, -0x1

    :goto_1a2
    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_18e

    :cond_1a7
    iput-object v2, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->emmbeddedTaskIds:[I

    goto :goto_1b0

    :cond_1aa
    iget v2, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->modifiedType:I

    iput v2, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->modifiedType:I

    iput-object v1, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->emmbeddedTaskIds:[I

    :goto_1b0
    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/util/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "InvariantDeviceProfile.INSTANCE[mContext]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v1, Lcom/oplus/quickstep/icons/OplusDockIconFactory;

    iget-object v2, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-direct {v1, v2, v3, v0}, Lcom/oplus/quickstep/icons/OplusDockIconFactory;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/android/quickstep/TaskIconCache;->mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    :cond_20
    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    const-string v0, "mIconFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRecentTasksList()Lcom/android/quickstep/OplusRecentTasksListImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl;->recentTasksList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    return-object p0
.end method

.method public final getSplitScreenCacheEntry(Lcom/android/quickstep/util/GroupTask;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/util/GroupTask;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object v2, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    iget-object v3, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->splitIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_28

    :cond_27
    move-object v3, v2

    :goto_28
    const-string v4, "entry2"

    const-string v5, "entry1"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_48

    if-eqz v1, :cond_35

    iget-object v2, v1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->splitIcon:Landroid/graphics/drawable/Drawable;

    :cond_35
    if-eqz v2, :cond_48

    new-array p0, v7, [Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p0, v6

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, p0, v8

    invoke-static {p0}, Li4/o;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_48
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v7, [Ljava/lang/String;

    iget-object v2, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "task.task1.key.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v6

    iget-object v2, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "task.task2!!.key.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v8

    invoke-static {v0, v1, v8}, Lcom/android/common/util/SplitScreenUtils;->getCombinationBitmapOriginal(Landroid/content/Context;[Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    const-string/jumbo v2, "task.task1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->getEntry(Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Bitmap;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object v1

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->getEntry(Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Bitmap;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object p0

    new-array p1, v7, [Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, p1, v6

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p0, p1, v8

    invoke-static {p1}, Li4/o;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final setRecentTasksList(Lcom/android/quickstep/OplusRecentTasksListImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl;->recentTasksList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    return-void
.end method

.method public updateCache(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_f

    if-nez p3, :cond_5

    goto :goto_f

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Ld0/b;

    invoke-direct {v1, p0, p1, p2, p3}, Ld0/b;-><init>(Lcom/android/quickstep/OplusTaskIconCacheImpl;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_f
    :goto_f
    return-void
.end method

.method public final updateIconInBackground(Lcom/android/quickstep/util/GroupTask;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/util/GroupTask;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)",
            "Lcom/android/quickstep/util/CancellableTask<",
            "Ljava/util/List<",
            "Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;",
            ">;>;"
        }
    .end annotation

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->splitIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->splitIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_22
    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->setTaskOrderInGroup(Lcom/android/quickstep/util/GroupTask;)V

    new-instance v0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$2;-><init>(Lcom/android/quickstep/OplusTaskIconCacheImpl;Lcom/android/quickstep/util/GroupTask;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)",
            "Lcom/android/quickstep/util/CancellableTask<",
            "*>;"
        }
    .end annotation

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_28

    :cond_24
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v1

    :cond_28
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->getEmbeddedCacheEntry(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v2, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_42

    :cond_41
    move-object v2, v1

    :goto_42
    if-eqz v2, :cond_58

    iget-object p0, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p0, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->contentDescription:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    iget-object p0, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->title:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iget p0, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->modifiedType:I

    iput p0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->modifiedType:I

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v1

    :cond_58
    new-instance v0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;-><init>(Lcom/android/quickstep/OplusTaskIconCacheImpl;Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

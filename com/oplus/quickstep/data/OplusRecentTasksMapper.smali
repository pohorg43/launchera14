.class public final Lcom/oplus/quickstep/data/OplusRecentTasksMapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/data/OplusRecentTasksMapper$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusRecentTasksMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusRecentTasksMapper.kt\ncom/oplus/quickstep/data/OplusRecentTasksMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,201:1\n1611#2:202\n1855#2:203\n1747#2,3:204\n1856#2:208\n1612#2:209\n1747#2,3:210\n1747#2,3:213\n1747#2,3:216\n1#3:207\n*S KotlinDebug\n*F\n+ 1 OplusRecentTasksMapper.kt\ncom/oplus/quickstep/data/OplusRecentTasksMapper\n*L\n158#1:202\n158#1:203\n161#1:204,3\n158#1:208\n158#1:209\n178#1:210,3\n179#1:213,3\n180#1:216,3\n158#1:207\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/data/OplusRecentTasksMapper$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusRecentTasksMapper"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/data/OplusRecentTasksMapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->Companion:Lcom/oplus/quickstep/data/OplusRecentTasksMapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkIfContentProtected(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 8

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p0, v0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getKeyByUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isAppProtected(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_75

    iput-boolean v2, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isAppSupportPaymentProtect:Z

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->topComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v3}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isPaymentProtectComponent(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iput-boolean v2, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isPaymentProtect:Z

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isContentProtectClosed(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    :cond_3a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_75

    const-string v1, "checkIfContentProtected(), pkg="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isAppSupportPaymentProtect:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isPaymentProtect:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    const-string v4, "QuickStep"

    const-string v5, "OplusRecentTasksMapper"

    invoke-static {v1, v3, v4, v5}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_75
    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isContentProtectOpened(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7d

    iput-boolean v2, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    :cond_7d
    return-void
.end method

.method private final checkIfSupportQuickStartup(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_d

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    iput-boolean p0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSupportQuickStartup:Z

    if-eqz p0, :cond_29

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_29

    const-string p0, "checkIfSupportQuickStartup(), support, "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const-string p2, "QuickStep"

    const-string v0, "OplusRecentTasksMapper"

    invoke-static {p0, p1, p2, v0}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method private final convertSplitBounds(Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;
    .registers 5

    if-eqz p1, :cond_10

    new-instance p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    iget-object v0, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    iget p1, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method private final createNormalTask(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;ZLandroid/util/SparseBooleanArray;Ljava/util/ArrayList;)Lcom/android/quickstep/util/GroupTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            "Z",
            "Landroid/util/SparseBooleanArray;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/quickstep/util/GroupTask;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    const-string v1, "info.taskInfo1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v1, v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    if-eqz p2, :cond_16

    new-instance p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p2, v1}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_20

    :cond_16
    iget p2, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    invoke-static {v1, v0, p2}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    :goto_20
    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/recents/model/Task;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo;)V

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2a

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto :goto_2b

    :cond_2a
    const/4 v0, -0x1

    :goto_2b
    invoke-direct {p0, v0}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->isLandscape(I)Z

    move-result v0

    iput-boolean v0, p2, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isTaskLandscape:Z

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->checkIfSupportQuickStartup(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/ArrayList;)V

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->checkIfContentProtected(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p4

    if-nez p4, :cond_45

    invoke-virtual {p0, p2, p3}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->checkIfEmbedded(Lcom/android/systemui/shared/recents/model/Task;Landroid/util/SparseBooleanArray;)V

    :cond_45
    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getSplitBounds()Lcom/android/wm/shell/util/SplitBounds;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->convertSplitBounds(Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    move-result-object p0

    new-instance p1, Lcom/android/quickstep/util/GroupTask;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p0}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_6f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createNormalTask(), groupTask="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "OplusRecentTasksMapper"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    return-object p1
.end method

.method private final createSplitScreenTask(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;ZLandroid/util/SparseBooleanArray;Ljava/util/ArrayList;)Lcom/android/quickstep/util/GroupTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            "Z",
            "Landroid/util/SparseBooleanArray;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/quickstep/util/GroupTask;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->createNormalTask(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;ZLandroid/util/SparseBooleanArray;Ljava/util/ArrayList;)Lcom/android/quickstep/util/GroupTask;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v1, p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    if-eqz p2, :cond_15

    new-instance p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p2, v1}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_1f

    :cond_15
    iget p2, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    invoke-static {v1, p1, p2}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    :goto_1f
    iput-object p2, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/model/Task;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo;)V

    iget-object p1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    const/4 p3, 0x1

    iput-boolean p3, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSplitScreenTask:Z

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v1, :cond_2e

    goto :goto_30

    :cond_2e
    iput-boolean p3, v1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSplitScreenTask:Z

    :goto_30
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSecondaryTask:Z

    const-string p1, "task"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->checkIfSupportQuickStartup(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/ArrayList;)V

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->checkIfContentProtected(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object p0, v0, Lcom/android/quickstep/util/GroupTask;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-eqz p0, :cond_4e

    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTopTaskId:I

    iget-object p1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p0, p1, :cond_4e

    move p0, p3

    goto :goto_4f

    :cond_4e
    move p0, v1

    :goto_4f
    if-eqz p0, :cond_54

    iget-object p1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_59

    :cond_54
    iget-object p1, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_59
    const-string p2, "if (firstTaskIsLeftTopTa…k1 else groupTask.task2!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_63

    iget-object p0, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_65

    :cond_63
    iget-object p0, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    :goto_65
    iput-boolean v1, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSecondaryTask:Z

    if-nez p0, :cond_6a

    goto :goto_6c

    :cond_6a
    iput-boolean p3, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSecondaryTask:Z

    :goto_6c
    return-object v0
.end method

.method private final isLandscape(I)Z
    .registers 2

    if-eqz p1, :cond_10

    const/4 p0, 0x6

    if-eq p1, p0, :cond_10

    const/16 p0, 0x8

    if-eq p1, p0, :cond_10

    const/16 p0, 0xb

    if-ne p1, p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method


# virtual methods
.method public final checkIfEmbedded(Lcom/android/systemui/shared/recents/model/Task;Landroid/util/SparseBooleanArray;)V
    .registers 14

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tmpLockedUsers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    goto :goto_4a

    :cond_18
    invoke-static {p1}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->isNormalContainerTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getNormalEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    goto :goto_4a

    :cond_23
    iput-boolean v3, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isEmbedded:Z

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_37

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_37
    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getNormalEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_49

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getNormalEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_49
    move-object v4, v1

    :goto_4a
    if-nez v4, :cond_4d

    return-void

    :cond_4d
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_57

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_57
    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v5, :cond_62

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_63

    :cond_62
    move-object v5, v1

    :goto_63
    invoke-static {v5}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getEmbeddedTasks(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_14f

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6d
    :goto_6d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v7, v6}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_85

    goto :goto_a7

    :cond_85
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_89
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v9, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v10, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v9, v10, :cond_a2

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a2

    move v9, v2

    goto :goto_a3

    :cond_a2
    move v9, v3

    :goto_a3
    if-eqz v9, :cond_89

    move v8, v2

    goto :goto_a8

    :cond_a7
    :goto_a7
    move v8, v3

    :goto_a8
    if-eqz v8, :cond_ad

    move-object v6, v1

    goto/16 :goto_148

    :cond_ad
    iget v8, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    invoke-static {v7, v6, v8}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    iput-boolean v2, v6, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isEmbedded:Z

    const-string v8, "embededdedTask"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->checkIfContentProtected(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_148

    const-string v8, "checkIfEmbedded(), add ["

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cp="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v6, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", pp="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v6, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isPaymentProtect:Z

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", spp="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v6, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isAppSupportPaymentProtect:Z

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] -> ["

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v7, :cond_112

    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_113

    :cond_112
    move-object v7, v1

    :goto_113
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v7, :cond_124

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_125

    :cond_124
    move-object v7, v1

    :goto_125
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v7, :cond_136

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_137

    :cond_136
    move-object v7, v1

    :goto_137
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x5d

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OplusRecentTasksMapper"

    invoke-static {v8, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_148
    :goto_148
    if-eqz v6, :cond_6d

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6d

    :cond_14f
    if-eqz v0, :cond_1b0

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_158

    goto :goto_16e

    :cond_158
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_16e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p2, p2, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isAppSupportPaymentProtect:Z

    if-eqz p2, :cond_15c

    move p0, v2

    goto :goto_16f

    :cond_16e
    :goto_16e
    move p0, v3

    :goto_16f
    iput-boolean p0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isAppSupportPaymentProtect:Z

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_178

    goto :goto_18e

    :cond_178
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p2, p2, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    if-eqz p2, :cond_17c

    move p0, v2

    goto :goto_18f

    :cond_18e
    :goto_18e
    move p0, v3

    :goto_18f
    iput-boolean p0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_198

    goto :goto_1ad

    :cond_198
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1ad

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p2, p2, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isPaymentProtect:Z

    if-eqz p2, :cond_19c

    goto :goto_1ae

    :cond_1ad
    :goto_1ad
    move v2, v3

    :goto_1ae
    iput-boolean v2, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isPaymentProtect:Z

    :cond_1b0
    return-void
.end method

.method public final map(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;ZLandroid/util/SparseBooleanArray;Ljava/util/ArrayList;)Lcom/android/quickstep/util/GroupTask;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            "Z",
            "Landroid/util/SparseBooleanArray;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/quickstep/util/GroupTask;"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tmpLockedUsers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->createSplitScreenTask(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;ZLandroid/util/SparseBooleanArray;Ljava/util/ArrayList;)Lcom/android/quickstep/util/GroupTask;

    move-result-object p0

    goto :goto_19

    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->createNormalTask(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;ZLandroid/util/SparseBooleanArray;Ljava/util/ArrayList;)Lcom/android/quickstep/util/GroupTask;

    move-result-object p0

    :goto_19
    return-object p0
.end method

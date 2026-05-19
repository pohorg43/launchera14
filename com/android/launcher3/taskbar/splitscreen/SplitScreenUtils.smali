.class public final Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSplitScreenUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitScreenUtils.kt\ncom/android/launcher3/taskbar/splitscreen/SplitScreenUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,271:1\n1549#2:272\n1620#2,3:273\n3792#3:276\n4307#3,2:277\n*S KotlinDebug\n*F\n+ 1 SplitScreenUtils.kt\ncom/android/launcher3/taskbar/splitscreen/SplitScreenUtils\n*L\n53#1:272\n53#1:273,3\n54#1:276\n54#1:277,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;

.field private static final NUM_RECENT_TASK:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PocketStudioSplitScreenUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->INSTANCE:Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/tooltips/COUIToolTips;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->showTopToolTips$lambda$2(Lcom/coui/appcompat/tooltips/COUIToolTips;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static final getVisibleTasks()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTasks(ZI)[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    new-instance v1, Landroid/app/OplusActivityManager;

    invoke-direct {v1}, Landroid/app/OplusActivityManager;-><init>()V

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->getAllTopAppInfos()Ljava/util/List;

    move-result-object v1

    const-string v2, "mAm.allTopAppInfos"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/app/OplusAppInfo;

    iget v3, v3, Lcom/oplus/app/OplusAppInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3d
    invoke-static {v2}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "runningTasks"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    array-length v4, v0

    :goto_4e
    if-ge v3, v4, :cond_64

    aget-object v5, v0, v3

    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_64
    invoke-static {v2}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final isEmbeddedTask(Landroid/content/Intent;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isSplitScreenCombination"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isEmbeddedTask(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static final isNativeSplitScreen(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tasks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object p0

    const-string/jumbo v0, "splitTaskIds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    xor-int/2addr v0, v2

    if-eqz v0, :cond_6b

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_48

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_48

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4e

    :cond_48
    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_4e
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p0, v0}, Li4/k;->q([II)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "PocketStudioSplitScreenUtils"

    const-string p1, "isTaskInSplitScreen-->in splitTaskIds"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6b
    return v1
.end method

.method public static final isPocketStudioSplitScreen(Lcom/oplus/app/OplusAppInfo;Landroid/content/ComponentName;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/app/OplusAppInfo;->taskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getEmbeddedTasks(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5d

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget p0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    const-string p1, "isTaskInSplitScreen  packageName:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,taskId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PocketStudioSplitScreenUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "isTaskInSplitScreen  当前长按的icon 是处于pocketStudio分屏, 禁止拖拽"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_5d
    const/4 p0, 0x0

    return p0
.end method

.method public static final isSupportDrag(Landroid/view/View;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .registers 20
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "view"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "tag"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    instance-of v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const v5, 0x7f12058b

    const-string v6, "context.getString(R.stri…t_app_unable_support_tip)"

    const/4 v7, 0x0

    const/4 v8, 0x4

    const-string v9, "PocketStudioSplitScreenUtils"

    if-eqz v4, :cond_44

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v10}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v10

    if-eqz v10, :cond_44

    const-string v2, "isTaskInSplitScreen  icon isEmbeddedTask true"

    invoke-static {v9, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->onClickNavVibrate()V

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8, v1}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->showTopToolTips(Landroid/view/View;ILjava/lang/CharSequence;)V

    return v7

    :cond_44
    if-eqz v4, :cond_64

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-boolean v10, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsPocketStudioVersion:Z

    if-nez v10, :cond_51

    iget-boolean v4, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsMultipleTasks:Z

    if-eqz v4, :cond_64

    :cond_51
    const-string v2, "mIsPocketStudioVersion or mIsMultipleTasks true"

    invoke-static {v9, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->onClickNavVibrate()V

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8, v1}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->showTopToolTips(Landroid/view/View;ILjava/lang/CharSequence;)V

    return v7

    :cond_64
    invoke-static {}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->getVisibleTasks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6c
    :goto_6c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "context.getString(R.stri…plit_hint_app_has_opened)"

    const v12, 0x7f12058c

    if-eqz v10, :cond_172

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v10, :cond_6c

    if-eqz v3, :cond_6c

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v10, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v8, :cond_95

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_95

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9b

    :cond_95
    iget-object v8, v10, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :cond_9b
    iget-object v13, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    iget v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isTaskInSplitScreen  iconPackageName："

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " ,topPackageName："

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_da

    if-eqz v8, :cond_da

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_da

    if-ne v13, v10, :cond_da

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->onClickNavVibrate()V

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->showTopToolTips(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto :goto_14f

    :cond_da
    const/4 v7, 0x0

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getTopAppSplitScreenState()I

    move-result v8

    invoke-static {v8}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->isSupportSplitScreen(I)Z

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isAppOnStackTopSupportSplitScreen:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x3e8

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_11f

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "tag.intent is not null "

    invoke-static {v9, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenState(Landroid/content/Intent;)I

    move-result v10

    :cond_11f
    invoke-static {v10}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->isSupportSplitScreen(I)Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v13, v7}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->isSupportZoomWindow(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v7

    const-string v11, "isLongPressAppInTaskbarSupportSplitScreen:"

    const-string v12, " ,isLongPressAppInTaskbarSupportZoomWindow:"

    invoke-static {v11, v10, v12, v7, v9}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz v10, :cond_151

    if-nez v7, :cond_151

    if-nez v8, :cond_151

    const-string/jumbo v2, "not support ZoomWindow but support SplitScreen"

    invoke-static {v9, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->onClickNavVibrate()V

    const v2, 0x7f120263

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->showTopToolTips(Landroid/view/View;ILjava/lang/CharSequence;)V

    :goto_14f
    const/4 v0, 0x0

    return v0

    :cond_151
    if-nez v10, :cond_16e

    if-nez v7, :cond_16e

    const-string/jumbo v2, "not support ZoomWindow yet not support SplitScreen"

    invoke-static {v9, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->onClickNavVibrate()V

    const v2, 0x7f12058b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->showTopToolTips(Landroid/view/View;ILjava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0

    :cond_16e
    const/4 v7, 0x0

    const/4 v8, 0x4

    goto/16 :goto_6c

    :cond_172
    invoke-static {v1, v4, v3}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->isNativeSplitScreen(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_186

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->onClickNavVibrate()V

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8, v1}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->showTopToolTips(Landroid/view/View;ILjava/lang/CharSequence;)V

    return v7

    :cond_186
    const/4 v0, 0x1

    return v0
.end method

.method public static final isSupportSplitScreen(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_d

    const-string p0, "PocketStudioSplitScreenUtils"

    const-string v0, "isSupportSplitScreen:true ,state == OplusSplitScreenManager.STATE_SUPPORT"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private static final isSupportZoomWindow(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    if-nez p2, :cond_6

    goto :goto_24

    :cond_6
    :try_start_6
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v1

    const-string v2, "com.android.launcher"

    invoke-virtual {v1, p0, p1, v2, p2}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return p0

    :catchall_11
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1d

    goto :goto_24

    :cond_1d
    const-string p1, "isSupportZoomWindow e:"

    const-string p2, "PocketStudioSplitScreenUtils"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_24
    :goto_24
    return v0
.end method

.method public static final showTopToolTips(Landroid/view/View;ILjava/lang/CharSequence;)V
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showTopToolTips location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, v0, v3

    const-string v5, "PocketStudioSplitScreenUtils"

    invoke-static {v1, v4, v5}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    aget v1, v0, v2

    if-ltz v1, :cond_9b

    aget v0, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "view.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_47

    goto :goto_9b

    :cond_47
    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;I)V

    new-instance v1, Ll0/a;

    invoke-direct {v1, v0, p0}, Ll0/a;-><init>(Lcom/coui/appcompat/tooltips/COUIToolTips;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, p0

    move v8, p1

    :try_start_61
    invoke-virtual/range {v6 .. v11}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZII)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "showTopToolTips , mCOUIToolTips ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , isShowing = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_87
    .catchall {:try_start_61 .. :try_end_87} :catchall_88

    goto :goto_8d

    :catchall_88
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_8d
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_94

    goto :goto_9a

    :cond_94
    const-string/jumbo p1, "showWithDirection "

    invoke-static {v5, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9a
    return-void

    :cond_9b
    :goto_9b
    const-string p0, " location is out of screen and return"

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final showTopToolTips$lambda$2(Lcom/coui/appcompat/tooltips/COUIToolTips;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const-string v0, "$mCOUIToolTips"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    if-eq v0, v1, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    invoke-static {p3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return v2
.end method

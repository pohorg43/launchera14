.class public Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;,
        Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;,
        Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;,
        Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DragAndDropPolicy"


# instance fields
.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mContext:Landroid/content/Context;

.field private final mDisallowHitRegion:Landroid/graphics/RectF;

.field private mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

.field private mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

.field private mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

.field private final mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private final mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

.field private final mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;)V
    .registers 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p3, :cond_1a

    move-object p4, p3

    :cond_1a
    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    new-instance p4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    invoke-direct {p4, p3, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/content/Context;Landroid/app/ActivityTaskManager;)V

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 5

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;-><init>(Landroid/content/Context;Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private startClipDescription(Landroid/content/ClipDescription;Landroid/content/Intent;I)V
    .registers 5
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startClipDescription(Landroid/content/ClipDescription;Landroid/content/Intent;ILandroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private startClipDescription(Landroid/content/ClipDescription;Landroid/content/Intent;ILandroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 15
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const-string v0, "application/vnd.android.task"

    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "application/vnd.android.shortcut"

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "android.intent.extra.ACTIVITY_OPTIONS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1e

    :cond_19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_1e
    const-string v2, "android.intent.extra.USER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/os/UserHandle;

    if-eqz v0, :cond_36

    const/4 p1, -0x1

    const-string p4, "android.intent.extra.TASK_ID"

    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    invoke-interface {p0, p1, p3, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startTask(IILandroid/os/Bundle;)V

    goto :goto_94

    :cond_36
    if-eqz p1, :cond_4d

    const-string p1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "android.intent.extra.shortcut.ID"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    move v5, p3

    move-object v6, v1

    move-object v7, v9

    invoke-interface/range {v2 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_94

    :cond_4d
    if-nez v1, :cond_58

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "opts = null, startClipDescription fail"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_58
    const-string p1, "android.intent.extra.PENDING_INTENT"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    const-string v0, "android.pendingIntent.backgroundActivityAllowed"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "android.pendingIntent.backgroundActivityAllowedByPermission"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p1, :cond_76

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startClipDescription failed. launchIntent NULL "

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_76
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz v2, :cond_87

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    move-object v6, v1

    move-object v7, p4

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->startIntentAndTask(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_87

    return-void

    :cond_87
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    move-object v3, p1

    move v6, p3

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_94
    return-void
.end method


# virtual methods
.method public getExtImpl()Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    return-object p0
.end method

.method public getInSideBarTarget()Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->getInSideBarTarget(Ljava/util/ArrayList;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLatestRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getNumTargets()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTargetAtLocation(II)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_2a

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->hitRegion:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_27

    return-object v2

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_2a
    return-object v1
.end method

.method public getTargets(Landroid/graphics/Insets;Z)Ljava/util/ArrayList;
    .registers 16
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Insets;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    if-nez v0, :cond_c

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    return-object p0

    :cond_c
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v3

    iget v0, p1, Landroid/graphics/Insets;->left:I

    sub-int v1, v2, v0

    iget v4, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v1, v4

    iget v4, p1, Landroid/graphics/Insets;->top:I

    sub-int v5, v3, v4

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v5, p1

    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v1, v0

    add-int/2addr v5, v4

    invoke-direct {p1, v0, v4, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object v4, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v4

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceDivision()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceVerticalDivision()Z

    move-result v4

    :cond_4b
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_59

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v5

    if-eqz v5, :cond_59

    move v7, v8

    goto :goto_5a

    :cond_59
    move v7, v6

    :goto_5a
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcom/android/wm/shell/R$dimen;->split_divider_bar_width:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    if-nez v7, :cond_76

    iget-object v9, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget v10, v9, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskActType:I

    if-ne v10, v8, :cond_74

    iget v9, v9, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskWinMode:I

    if-ne v9, v8, :cond_74

    goto :goto_76

    :cond_74
    move v9, v6

    goto :goto_77

    :cond_76
    :goto_76
    move v9, v8

    :goto_77
    iget-object v10, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    invoke-virtual {v10, v9}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->hookAllowSplit(Z)Z

    move-result v9

    if-eqz v9, :cond_135

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v1, :cond_90

    invoke-virtual {v1, v0, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_90
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {v9, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    const/high16 v1, 0x40000000  # 2.0f

    const/4 v10, 0x2

    if-eqz v4, :cond_e8

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    if-eqz v7, :cond_b8

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    invoke-virtual {v11, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    float-to-int v1, v5

    iput v1, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual {v12, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v1, v12, Landroid/graphics/Rect;->left:I

    goto :goto_c1

    :cond_b8
    new-array v1, v10, [Landroid/graphics/Rect;

    aput-object v11, v1, v6

    aput-object v12, v1, v8

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    :goto_c1
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    move-object v4, v11

    move-object v5, v12

    move v6, v7

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->prepareAddTargetsLandPad(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {v1, v8, v11, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v12, v9}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->addTargetsCenterPad(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    goto :goto_13f

    :cond_e8
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    if-eqz v7, :cond_105

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    invoke-virtual {v11, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    float-to-int v1, v5

    iput v1, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v1, v12, Landroid/graphics/Rect;->top:I

    goto :goto_10e

    :cond_105
    new-array v1, v10, [Landroid/graphics/Rect;

    aput-object v11, v1, v6

    aput-object v12, v1, v8

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->splitHorizontally([Landroid/graphics/Rect;)V

    :goto_10e
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    move-object v4, v11

    move-object v5, v12

    move v6, v7

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->prepareAddTargetsPortPad(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {v1, v10, v11, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v12, v9}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->addTargetsCenterPad(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    goto :goto_13f

    :cond_135
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {p2, v6, v1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_13f
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    return-object p0
.end method

.method public handleDrop(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Landroid/content/ClipData;)V
    .registers 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->handleDrop(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Landroid/content/ClipData;Landroid/view/DragEvent;ZZLandroid/app/ActivityManager$RunningTaskInfo;)Z

    return-void
.end method

.method public handleDrop(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Landroid/content/ClipData;Landroid/view/DragEvent;ZZLandroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_93

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_93

    :cond_d
    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_18

    if-ne p1, v2, :cond_16

    goto :goto_18

    :cond_16
    move v1, v0

    goto :goto_19

    :cond_18
    :goto_18
    move v1, v2

    :goto_19
    const/4 v3, -0x1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p1, :cond_32

    xor-int/lit8 v3, v1, 0x1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterNormalType(I)I

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {p1, v3, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V

    :cond_32
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p1, :cond_48

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->startZoomWindowFromDrag(Landroid/view/DragEvent;)Z

    move-result p1

    if-eqz p1, :cond_48

    move p1, v2

    goto :goto_49

    :cond_48
    move p1, v0

    :goto_49
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz v1, :cond_51

    invoke-virtual {v1, p4, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->hookPositionWithDeviceType(ZI)I

    move-result v3

    :cond_51
    if-nez p1, :cond_78

    iget-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p4, :cond_78

    invoke-virtual {p4, p6, p3, v3, p5}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->onHandleDrop(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/DragEvent;IZ)Z

    move-result p4

    if-nez p4, :cond_78

    sget-object p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->TAG:Ljava/lang/String;

    const-string p2, "handleDrop() don\'t start app"

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p1, :cond_77

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p1

    if-eqz p1, :cond_77

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setIsDropEntering(Z)V

    :cond_77
    return v0

    :cond_78
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    iget-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object p4, p4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    if-nez p1, :cond_85

    invoke-direct {p0, p2, p4, v3, p6}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startClipDescription(Landroid/content/ClipDescription;Landroid/content/Intent;ILandroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_85
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mExtImpl:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p1, :cond_8c

    invoke-virtual {p1, p3, v3, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->notifyDragAction(Landroid/view/DragEvent;IZ)V

    :cond_8c
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenLaunched(Landroid/content/Context;I)V

    return v2

    :cond_93
    :goto_93
    return v0
.end method

.method public start(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Lcom/android/internal/logging/InstanceId;)V
    .registers 5

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    new-instance p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-direct {p3, v0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;-><init>(Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;)V

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-virtual {p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->update()V

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    const-string p2, "DISALLOW_HIT_REGION"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    if-nez p1, :cond_22

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_27

    :cond_22
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_27
    return-void
.end method

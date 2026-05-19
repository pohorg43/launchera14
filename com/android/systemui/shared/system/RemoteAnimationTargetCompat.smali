.class public Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final ACTIVITY_TYPE_HOME:I = 0x2

.field public static final ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field public static final MODE_CHANGING:I = 0x2

.field public static final MODE_CLOSING:I = 0x1

.field public static final MODE_OPENING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemoteAnimationTargetCompat"

.field public static sInterruptScene:Z


# instance fields
.field public final activityType:I

.field public final allowEnterPip:Z

.field public final clipRect:Landroid/graphics/Rect;

.field public final contentInsets:Landroid/graphics/Rect;

.field public final isNotInRecents:Z

.field public isTaskRestartBecauseRemovedInRecents:Z

.field public final isTranslucent:Z

.field public launchPkg:Ljava/lang/String;

.field public final leash:Landroid/view/SurfaceControl;

.field private final leashAsyncLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final localBounds:Landroid/graphics/Rect;

.field private final mStartLeash:Landroid/view/SurfaceControl;

.field public final mode:I

.field public final position:Landroid/graphics/Point;

.field public final prefixOrderIndex:I

.field public final rotationChange:I

.field public final screenSpaceBounds:Landroid/graphics/Rect;

.field public final sourceContainerBounds:Landroid/graphics/Rect;

.field private final startBounds:Landroid/graphics/Rect;

.field public startFromAssistScreen:Z

.field public final startScreenSpaceBounds:Landroid/graphics/Rect;

.field public taskId:I

.field public taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public taskLeash:Landroid/view/SurfaceControl;

.field public viewLeash:Landroid/view/SurfaceControl;

.field public viewLocation:Landroid/graphics/Point;

.field public final windowConfiguration:Landroid/app/WindowConfiguration;

.field public final windowType:I


# direct methods
.method public constructor <init>(Landroid/view/RemoteAnimationTarget;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leashAsyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTaskRestartBecauseRemovedInRecents:Z

    iget v1, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    iput v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget v1, p1, Landroid/view/RemoteAnimationTarget;->mode:I

    iput v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget-boolean v1, p1, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    iput-boolean v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startScreenSpaceBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    iput v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    iget-boolean v1, p1, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    iput-boolean v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, p1, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    iput-boolean v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->allowEnterPip:Z

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mStartLeash:Landroid/view/SurfaceControl;

    iget v0, p1, Landroid/view/RemoteAnimationTarget;->windowType:I

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    if-nez p2, :cond_67

    invoke-static {p0}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->initOplusField(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    :cond_67
    invoke-static {p0, p1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->initTaskLeashField(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/RemoteAnimationTarget;)V

    invoke-static {p1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isTaskRestartBecauseRemovedInRecents(Landroid/view/RemoteAnimationTarget;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTaskRestartBecauseRemovedInRecents:Z

    return-void
.end method

.method public constructor <init>(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leashAsyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTaskRestartBecauseRemovedInRecents:Z

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1c

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_1d

    :cond_1c
    move v2, v3

    :goto_1d
    iput v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->newModeToLegacyMode(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    invoke-static {p3, p1, p2, p4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p3

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_41

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p3

    and-int/2addr p3, v1

    if-eqz p3, :cond_3f

    goto :goto_41

    :cond_3f
    move p3, v0

    goto :goto_42

    :cond_41
    :goto_41
    move p3, v1

    :goto_42
    iput-boolean p3, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p4, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p4, v2, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p4, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p4, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startScreenSpaceBounds:Landroid/graphics/Rect;

    iput p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    if-eqz p2, :cond_9e

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iget-boolean p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    xor-int/2addr p2, v1

    iput-boolean p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    goto :goto_a2

    :cond_9e
    iput-boolean v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    :goto_a2
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getAllowEnterPip()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->allowEnterPip:Z

    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mStartLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result p2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    iput v3, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    if-eqz p2, :cond_cc

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    goto :goto_d1

    :cond_cc
    new-instance p2, Landroid/app/WindowConfiguration;

    invoke-direct {p2}, Landroid/app/WindowConfiguration;-><init>()V

    :goto_d1
    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic a(ZLandroid/window/TransitionInfo$Change;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->lambda$wrapNonApps$0(ZLandroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0
.end method

.method public static changeMode(Landroid/view/RemoteAnimationTarget;I)Landroid/view/RemoteAnimationTarget;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v3, p1

    new-instance v19, Landroid/view/RemoteAnimationTarget;

    move-object/from16 v1, v19

    iget v2, v0, Landroid/view/RemoteAnimationTarget;->taskId:I

    iget-object v4, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-boolean v5, v0, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    iget-object v6, v0, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    iget-object v7, v0, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    iget v8, v0, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    iget-object v9, v0, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iget-object v10, v0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget-object v11, v0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget-object v12, v0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-boolean v13, v0, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    iget-object v14, v0, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    iget-object v15, v0, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    move-object/from16 p1, v1

    iget-object v1, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    move/from16 v17, v1

    iget v0, v0, Landroid/view/RemoteAnimationTarget;->windowType:I

    move/from16 v18, v0

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    return-object v19
.end method

.method private static createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {p1, p0}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v1

    if-nez v1, :cond_29

    goto :goto_35

    :cond_29
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    :cond_35
    :goto_35
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_transition-leash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-nez v4, :cond_6e

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    :cond_6e
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result p2

    invoke-static {v0, p1, p2, p0, p3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->setupLeash(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p3, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    sget-boolean p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sInterruptScene:Z

    if-nez p0, :cond_a6

    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isDividerBar(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-nez p0, :cond_a6

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p3, p0, p2, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_a6
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_c8

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_c8

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_c8

    invoke-virtual {p3, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_c8
    return-object v0
.end method

.method private static synthetic lambda$wrapNonApps$0(ZLandroid/window/TransitionInfo$Change;)Z
    .registers 2

    if-eqz p0, :cond_7

    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    goto :goto_b

    :cond_7
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isNonApp(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    :goto_b
    return p0
.end method

.method private static newModeToLegacyMode(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v2, 0x3

    if-eq p0, v2, :cond_e

    const/4 v2, 0x4

    if-eq p0, v2, :cond_d

    return v1

    :cond_d
    return v0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo$Change;",
            "I",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->newTarget(Landroid/window/TransitionInfo$Change;IZLandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static newTarget(Landroid/window/TransitionInfo$Change;IZLandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo$Change;",
            "IZ",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    invoke-static {p3, p0, p1, p4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object p3

    if-eqz p5, :cond_d

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p4

    invoke-virtual {p5, p4, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-static {p0, p1, p3, p2}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method private static setupLeash(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    invoke-static {p1, p3}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v5

    if-nez v3, :cond_2f

    invoke-virtual {p3, v5}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p4, p0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2f
    if-ne v2, v4, :cond_36

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_3a

    :cond_36
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    :goto_3a
    invoke-static {p1, p3}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v6

    const/4 v7, 0x3

    if-nez v6, :cond_5a

    if-eq v2, v4, :cond_48

    if-eq v2, v7, :cond_48

    const/4 p2, 0x6

    if-ne v2, p2, :cond_59

    :cond_48
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p4, p0, p2, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_59
    return-void

    :cond_5a
    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, v5}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v8

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v5}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v5

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {p4, p0, v6, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isDividerBar(Landroid/window/TransitionInfo$Change;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_93

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p1

    if-eqz p1, :cond_89

    invoke-virtual {p4, p0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_89
    invoke-virtual {p4, p0, v5, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const p1, 0x7fffffff

    invoke-virtual {p4, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_93
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    const/4 v6, 0x2

    and-int/2addr v3, v6

    if-eqz v3, :cond_b7

    if-eq v2, v4, :cond_a7

    if-ne v2, v7, :cond_a0

    goto :goto_a7

    :cond_a0
    neg-int p1, v1

    sub-int/2addr p1, p2

    invoke-virtual {p4, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_126

    :cond_a7
    :goto_a7
    neg-int p1, v1

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p3, p1

    sub-int/2addr p3, p2

    invoke-virtual {p4, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_126

    :cond_b7
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_fe

    if-eqz v0, :cond_f9

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p3, v1

    sub-int/2addr p3, p2

    invoke-virtual {p4, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_126

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    if-eqz p2, :cond_f5

    sget-boolean p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sInterruptScene:Z

    if-eqz p2, :cond_f1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p1

    if-eq p1, v6, :cond_e9

    goto :goto_f1

    :cond_e9
    const-string p0, "RemoteAnimationTargetCompat"

    const-string p1, "cannot make launcher surface invisible when interrupt"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_126

    :cond_f1
    :goto_f1
    invoke-virtual {p4, p0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_126

    :cond_f5
    invoke-virtual {p4, p0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_126

    :cond_f9
    sub-int/2addr v1, p2

    invoke-virtual {p4, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_126

    :cond_fe
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result p1

    if-eqz p1, :cond_119

    if-eqz v0, :cond_10b

    sub-int/2addr v1, p2

    invoke-virtual {p4, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_126

    :cond_10b
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v1

    sub-int/2addr p1, p2

    invoke-virtual {p4, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_126

    :cond_119
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v1

    sub-int/2addr p1, p2

    invoke-virtual {p4, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_126
    :goto_126
    return-void
.end method

.method public static unwrap([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)[Landroid/view/RemoteAnimationTarget;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    array-length v1, p0

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    new-array v2, v1, [Landroid/view/RemoteAnimationTarget;

    :goto_8
    if-ge v0, v1, :cond_15

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->unwrap()Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    return-object v2
.end method

.method private static wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/window/TransitionInfo$Change;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-interface {p3, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3, p0, p1, p2}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method public static wrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Z",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9d

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2f

    const/4 v6, 0x1

    goto :goto_30

    :cond_2f
    move v6, v3

    :goto_30
    if-eq p1, v6, :cond_33

    goto :goto_99

    :cond_33
    new-instance v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {p0, v4}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v7

    invoke-direct {v6, v5, v7, p0, p2}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;-><init>(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    if-eqz p3, :cond_47

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    iget-object v8, v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_96

    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v7}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_57

    goto :goto_99

    :cond_57
    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v7, :cond_6e

    iget-object v9, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v9, v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iput v7, v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->remove(I)V

    :cond_6e
    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    if-eq v7, v8, :cond_96

    invoke-virtual {v2, v7}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v7

    if-ne v7, v8, :cond_96

    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-nez v7, :cond_86

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_99

    :cond_86
    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    :cond_96
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_99
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11

    :cond_9d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-object p0
.end method

.method public static wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    array-length v1, p0

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    new-array v2, v1, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move v3, v0

    :goto_9
    if-ge v3, v1, :cond_17

    new-instance v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v5, p0, v3

    invoke-direct {v4, v5, v0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;Z)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    return-object v2
.end method

.method public static wrap([Landroid/view/RemoteAnimationTarget;Z)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    array-length v1, p0

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    new-array v2, v1, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    :goto_8
    if-ge v0, v1, :cond_16

    new-instance v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v4, p0, v0

    invoke-direct {v3, v4, p1}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;Z)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    return-object v2
.end method

.method public static wrapApps(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v0}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Z",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/shared/system/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/shared/system/b;-><init>(ZI)V

    invoke-static {p0, p2, p3, v0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leashAsyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mStartLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_19

    :cond_13
    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leashAsyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_19
    move-exception v0

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leashAsyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public unwrap()Landroid/view/RemoteAnimationTarget;
    .registers 22

    move-object/from16 v0, p0

    new-instance v19, Landroid/view/RemoteAnimationTarget;

    move-object/from16 v1, v19

    iget v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget v3, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    iget-object v4, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget-boolean v5, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    iget-object v6, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    iget v8, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    iget-object v9, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-boolean v13, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    iget-object v14, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mStartLeash:Landroid/view/SurfaceControl;

    iget-object v15, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->allowEnterPip:Z

    move/from16 v17, v1

    iget v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    move/from16 v18, v0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    return-object v19
.end method

.method public updateSurfaceAsync(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leashAsyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leashAsyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leashAsyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.class public final Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/RemoteTransitionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemoteTransitionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteTransitionAdapter.kt\ncom/android/systemui/animation/RemoteTransitionAdapter$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,457:1\n37#2,2:458\n*S KotlinDebug\n*F\n+ 1 RemoteTransitionAdapter.kt\ncom/android/systemui/animation/RemoteTransitionAdapter$Companion\n*L\n219#1:458,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;-><init>()V

    return-void
.end method

.method private final createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_18

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const-string p1, "change.leash"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_18
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_transition-leash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_59

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result v1

    if-gez v1, :cond_50

    move v1, v2

    :cond_50
    invoke-virtual {p1, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_6b

    :cond_59
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    :goto_6b
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    const-string v1, "leashSurface"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v6

    move-object v3, p0

    move-object v4, v0

    move-object v5, p2

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->setupLeash(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p4, p0, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p4, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p4, p0, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method private final newModeToLegacyMode(I)I
    .registers 4

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    if-eq p1, p0, :cond_d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d

    goto :goto_10

    :cond_d
    move p0, v0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private final rectOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/graphics/Rect;
    .registers 3

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object p0
.end method

.method private final setupLeash(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_12

    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    if-ne p0, v1, :cond_10

    goto :goto_12

    :cond_10
    move p0, v0

    goto :goto_13

    :cond_12
    :goto_12
    move p0, v2

    :goto_13
    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result v5

    if-gez v5, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v5

    :goto_2b
    invoke-virtual {p4, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v5

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {p5, p1, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v6

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    int-to-float v0, v6

    invoke-virtual {p5, p1, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p5, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eq v4, v2, :cond_8d

    const/4 v0, 0x2

    if-eq v4, v0, :cond_78

    if-eq v4, v1, :cond_8d

    const/4 p2, 0x4

    if-eq v4, p2, :cond_78

    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v3

    sub-int/2addr p0, p3

    invoke-virtual {p5, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_ad

    :cond_78
    if-eqz p0, :cond_7f

    sub-int/2addr v3, p3

    invoke-virtual {p5, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_ad

    :cond_7f
    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v3

    sub-int/2addr p0, p3

    invoke-virtual {p5, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_ad

    :cond_8d
    if-eqz p0, :cond_a9

    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v3

    sub-int/2addr p0, p3

    invoke-virtual {p5, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_ad

    const/4 p0, 0x0

    invoke-virtual {p5, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_ad

    :cond_a9
    sub-int/2addr v3, p3

    invoke-virtual {p5, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_ad
    :goto_ad
    return-void
.end method


# virtual methods
.method public final adaptRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Ljava/lang/String;)Landroid/window/RemoteTransition;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/window/RemoteTransition;

    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v1

    const-string v2, "adapter.runner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->adaptRemoteRunner(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getCallingApplication()Landroid/app/IApplicationThread;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    return-object v0
.end method

.method public final adaptRemoteRunner(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "runner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;-><init>(Landroid/view/IRemoteAnimationRunner;)V

    return-object p0
.end method

.method public final createTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Landroid/view/RemoteAnimationTarget;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "change"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "info"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "t"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/view/RemoteAnimationTarget;

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_2b

    :cond_2a
    const/4 v5, -0x1

    :goto_2b
    move v6, v5

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->newModeToLegacyMode(I)I

    move-result v7

    move/from16 v12, p2

    invoke-direct {v0, v2, v1, v12, v3}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_4e

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_4c

    goto :goto_4e

    :cond_4c
    move v9, v5

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v9, v3

    :goto_4f
    const/4 v10, 0x0

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-string v14, "change.endAbsBounds"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v14

    const-string v15, "change.endRelOffset"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v14}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->rectOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v14

    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v15, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_87

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    goto :goto_8c

    :cond_87
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    :goto_8c
    move-object/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_a3

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    if-nez v0, :cond_a0

    goto :goto_a3

    :cond_a0
    move/from16 v17, v5

    goto :goto_a5

    :cond_a3
    :goto_a3
    move/from16 v17, v3

    :goto_a5
    const/16 v18, 0x0

    new-instance v0, Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getAllowEnterPip()Z

    move-result v21

    const/16 v22, -0x1

    move-object v5, v4

    move/from16 v12, p2

    invoke-direct/range {v5 .. v22}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    move-result v0

    iput v0, v4, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    return-object v4
.end method

.method public final wrapTargets(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .registers 11
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

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "t"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_72

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    if-nez v5, :cond_6f

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_6f

    :cond_3c
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-ne p2, v5, :cond_6f

    const-string v5, "change"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0, v4, v5, p1, p3}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->createTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Landroid/view/RemoteAnimationTarget;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_6f

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/RemoteAnimationTarget;

    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-interface {p4, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_72
    new-array p0, v2, [Landroid/view/RemoteAnimationTarget;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

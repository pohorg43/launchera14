.class public final Lcom/android/common/util/OplusFoldStateHelper$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/OplusFoldStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;-><init>()V

    return-void
.end method

.method private final getFoldingModeFromDisplay()I
    .registers 6

    sget-object p0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getWindowBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "getFoldingModeFromDisplay,realWidth:"

    const-string v3, ",realHeight:"

    const-string v4, "OplusFoldStateHelper"

    invoke-static {v2, v0, v3, p0, v4}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :cond_21
    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result p0

    if-gt v1, p0, :cond_29

    const/4 p0, 0x0

    goto :goto_2a

    :cond_29
    const/4 p0, 0x1

    :goto_2a
    return p0
.end method

.method private final isNeedRefreshFoldingModeFromSettings()Z
    .registers 3

    sget-object p0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-eqz p0, :cond_1f

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldingModeMismatchSizeInfo(II)Z

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getFoldingMode()I
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLastFoldingMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "context"

    const-string v5, "OplusFoldStateHelper"

    const/4 v6, 0x1

    if-eq v1, v2, :cond_68

    const-string/jumbo v1, "updateFoldingMode when foldState changed from "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLastFoldingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for no reason, need update!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/common/util/FoldStateMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/util/FoldStateMonitor;->isFold()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMFoldingMode(I)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMLastFoldingMode(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWideScreenLarge "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v1

    if-ne v1, v6, :cond_63

    move v3, v6

    :cond_63
    invoke-static {v0, v3, v5}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto/16 :goto_e4

    :cond_68
    sget-boolean v1, Lcom/android/common/util/OplusFoldStateHelper;->mChangingFoldState:Z

    if-nez v1, :cond_e4

    invoke-direct {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isNeedRefreshFoldingModeFromSettings()Z

    move-result v1

    if-eqz v1, :cond_e4

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    if-eqz v1, :cond_81

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    goto :goto_82

    :cond_81
    const/4 v1, 0x0

    :goto_82
    if-eqz v1, :cond_b8

    const-string/jumbo v2, "updateFoldingMode when foldState not match with screen size, now screen realW-H: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", now state: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", need update!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b8
    sget-object v1, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/common/util/FoldStateMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/util/FoldStateMonitor;->isFold()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMFoldingMode(I)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMLastFoldingMode(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWideScreenLarge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v1

    if-ne v1, v6, :cond_e1

    move v3, v6

    :cond_e1
    invoke-static {v0, v3, v5}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_e4
    :goto_e4
    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result p0

    return p0
.end method

.method public final getInstance()Lcom/android/common/util/OplusFoldStateHelper;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getSInstance$cp()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p0

    if-nez p0, :cond_1e

    const-class p0, Lcom/android/common/util/OplusFoldStateHelper;

    monitor-enter p0

    :try_start_9
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getSInstance$cp()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    new-instance v0, Lcom/android/common/util/OplusFoldStateHelper;

    invoke-direct {v0}, Lcom/android/common/util/OplusFoldStateHelper;-><init>()V

    invoke-static {v0}, Lcom/android/common/util/OplusFoldStateHelper;->access$setSInstance$cp(Lcom/android/common/util/OplusFoldStateHelper;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    :goto_1e
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getSInstance$cp()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getMFoldAnimation()Lcom/android/launcher3/anim/LauncherFoldAnimation;
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getMFoldAnimation$cp()Lcom/android/launcher3/anim/LauncherFoldAnimation;

    move-result-object p0

    return-object p0
.end method

.method public final getMFolderConfigurationChange()Z
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getMFolderConfigurationChange$cp()Z

    move-result p0

    return p0
.end method

.method public final getMFoldingMode()I
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getMFoldingMode$cp()I

    move-result p0

    return p0
.end method

.method public final getMHandler()Landroid/os/Handler;
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getMHandler$cp()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public final getMLastFoldingMode()I
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getMLastFoldingMode$cp()I

    move-result p0

    return p0
.end method

.method public final isFold()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isFoldScreenExpandedFromDisplay()Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getFoldingModeFromDisplay()I

    move-result p0

    if-ne p0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public final isFoldScreenFoldedFromDisplay()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getFoldingModeFromDisplay()I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isFoldingModeMismatchSizeInfo(II)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result p0

    invoke-static {p0, p1, p2}, Lcom/android/common/util/DisplayUtils;->isFoldingModeMatchConfig(III)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isLargeScreen(II)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result p1

    if-le p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isUpdatingIdp()Z
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$isUpdatingIdp$cp()Z

    move-result p0

    return p0
.end method

.method public final setMFoldAnimation(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/OplusFoldStateHelper;->access$setMFoldAnimation$cp(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V

    return-void
.end method

.method public final setMFolderConfigurationChange(Z)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/OplusFoldStateHelper;->access$setMFolderConfigurationChange$cp(Z)V

    return-void
.end method

.method public final setMFoldingMode(I)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/OplusFoldStateHelper;->access$setMFoldingMode$cp(I)V

    return-void
.end method

.method public final setMLastFoldingMode(I)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/OplusFoldStateHelper;->access$setMLastFoldingMode$cp(I)V

    return-void
.end method

.method public final setUpdatingIdp(Z)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/OplusFoldStateHelper;->access$setUpdatingIdp$cp(Z)V

    return-void
.end method

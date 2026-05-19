.class public final Lcom/android/launcher3/DragLayerStateTranslationAnimation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/DragLayerStateTranslationAnimation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/states/OplusBaseLauncherState;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/DragLayerStateTranslationAnimation$Companion;

.field public static final DRAG_LAYER_DEFAULT_SCALE:F = 1.0f

.field public static final DRAG_LAYER_SCALE_IN_OVERVIEW:F = 0.92f

.field private static final TAG:Ljava/lang/String; = "DragLayerStateTranslationAnimation"


# instance fields
.field private final mDragLayer:Lcom/android/launcher3/OplusDragLayer;

.field private final mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/DragLayerStateTranslationAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/DragLayerStateTranslationAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->Companion:Lcom/android/launcher3/DragLayerStateTranslationAnimation$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    const-string v0, "launcher.dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    return-void
.end method


# virtual methods
.method public final getMDragLayer()Lcom/android/launcher3/OplusDragLayer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    return-object p0
.end method

.method public final getMLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public setState(Lcom/android/launcher3/states/OplusBaseLauncherState;)V
    .registers 11

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getDragLayerScaleAndAlpha(Lcom/android/launcher3/Launcher;)[F

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->ignoreBackgroundState()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    :goto_23
    sget-object v4, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object v5

    sget-object v6, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v5, v6, :cond_46

    sget-object v6, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v5, v6, :cond_46

    sget-object v6, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v5, v6, :cond_46

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isMultiLaunchForceFinish()Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_46

    :cond_44
    move v4, v3

    goto :goto_47

    :cond_46
    :goto_46
    move v4, v2

    :goto_47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isReverseAnimating = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", currentAnimState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", isMultiSceneNotNeedReset="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", state = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DragLayerStateTranslationAnimation"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v5

    const/high16 v7, 0x3f800000  # 1.0f

    if-eqz v5, :cond_9e

    iget-object v3, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    iget-object v5, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/OplusWorkspace;->mDragLayerScale:F

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    iget-object v5, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/OplusWorkspace;->mDragLayerScale:F

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    goto :goto_b8

    :cond_9e
    if-nez v1, :cond_b8

    if-nez v4, :cond_b8

    iget-object v5, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    if-eqz v0, :cond_a9

    aget v8, v0, v3

    goto :goto_aa

    :cond_a9
    move v8, v7

    :goto_aa
    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v5, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    if-eqz v0, :cond_b4

    aget v3, v0, v3

    goto :goto_b5

    :cond_b4
    move v3, v7

    :goto_b5
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_b8
    :goto_b8
    iget-object v3, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDismissState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_e4

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ca

    goto :goto_e4

    :cond_ca
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DragLayerStateTranslationAnimation setState="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",but launcher in KeyGuardDismissedService.STATE_LOCK"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_132

    :cond_e4
    :goto_e4
    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v3, :cond_10b

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10b

    iget-object v3, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v3

    if-nez v3, :cond_104

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10b

    :cond_104
    iget-object p0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    goto :goto_132

    :cond_10b
    iget-object p1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->isOverlayAlphaing()Z

    move-result p1

    if-eqz p1, :cond_125

    iget-object p1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    iget-object p0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusWorkspace;->mDragLayerAlpha:F

    invoke-virtual {p1, p0}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    goto :goto_132

    :cond_125
    if-nez v1, :cond_132

    if-nez v4, :cond_132

    iget-object p0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    if-eqz v0, :cond_12f

    aget v7, v0, v2

    :cond_12f
    invoke-virtual {p0, v7}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    :cond_132
    :goto_132
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->setState(Lcom/android/launcher3/states/OplusBaseLauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/states/OplusBaseLauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/states/OPlusBaseState;->getDragLayerScaleAndAlpha(Lcom/android/launcher3/Launcher;)[F

    move-result-object p1

    goto :goto_b

    :cond_a
    move-object p1, v0

    :goto_b
    const/4 v1, 0x1

    if-eqz p2, :cond_14

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    :cond_14
    const/high16 p2, 0x3f800000  # 1.0f

    if-eqz p3, :cond_26

    iget-object v2, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    sget-object v3, Lcom/android/launcher3/OplusLauncherAnimUtils;->SCALE:Landroid/util/FloatProperty;

    if-eqz p1, :cond_22

    const/4 v4, 0x0

    aget v4, p1, v4

    goto :goto_23

    :cond_22
    move v4, p2

    :goto_23
    invoke-virtual {p3, v2, v3, v4, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :cond_26
    if-eqz p3, :cond_33

    iget-object p0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    sget-object v2, Lcom/android/launcher3/OplusLauncherAnimUtils;->ALPHA:Landroid/util/FloatProperty;

    if-eqz p1, :cond_30

    aget p2, p1, v1

    :cond_30
    invoke-virtual {p3, p0, v2, p2, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :cond_33
    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    check-cast p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->setStateWithAnimation(Lcom/android/launcher3/states/OplusBaseLauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

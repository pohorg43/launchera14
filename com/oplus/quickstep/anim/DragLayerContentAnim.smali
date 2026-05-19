.class public final Lcom/oplus/quickstep/anim/DragLayerContentAnim;
.super Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/anim/DragLayerContentAnim$Companion;
    }
.end annotation


# static fields
.field private static final ALPHA_MIN:F = 0.0f

.field public static final Companion:Lcom/oplus/quickstep/anim/DragLayerContentAnim$Companion;

.field private static final TAG:Ljava/lang/String; = "DragLayerContentAnim"


# instance fields
.field private mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

.field private mDragLayer:Lcom/android/launcher3/OplusDragLayer;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mResetDragLayerState:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/anim/DragLayerContentAnim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->Companion:Lcom/oplus/quickstep/anim/DragLayerContentAnim$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    iget-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->endOverlayScrollSpring()V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method public static final synthetic access$getMDepthController$p(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)Lcom/android/launcher3/uioverrides/states/OplusDepthController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    return-object p0
.end method

.method public static final synthetic access$getMDragLayer$p(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)Lcom/android/launcher3/OplusDragLayer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    return-object p0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static final varargs synthetic access$setViewAlpha(Lcom/oplus/quickstep/anim/DragLayerContentAnim;F[Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->setViewAlpha(F[Landroid/view/View;)V

    return-void
.end method

.method public static final varargs synthetic access$setViewScale(Lcom/oplus/quickstep/anim/DragLayerContentAnim;F[Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->setViewScale(F[Landroid/view/View;)V

    return-void
.end method

.method private final varargs setViewAlpha(F[Landroid/view/View;)V
    .registers 6

    array-length p0, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_1a

    aget-object v1, p2, v0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isIconAlignmentAnimRunning()Z

    move-result v2

    if-eqz v2, :cond_11

    instance-of v2, v1, Lcom/android/launcher3/Hotseat;

    if-eqz v2, :cond_11

    goto :goto_17

    :cond_11
    if-nez v1, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    return-void
.end method

.method private final varargs setViewScale(F[Landroid/view/View;)V
    .registers 6

    array-length p0, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_1b

    aget-object v1, p2, v0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isIconAlignmentAnimRunning()Z

    move-result v2

    if-eqz v2, :cond_11

    instance-of v2, v1, Lcom/android/launcher3/Hotseat;

    if-eqz v2, :cond_11

    goto :goto_18

    :cond_11
    if-eqz v1, :cond_18

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v2, v1, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :cond_18
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1b
    return-void
.end method


# virtual methods
.method public createAnimListenerForLayerType()Landroid/animation/AnimatorListenerAdapter;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    const-string v0, "mDragLayer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createAnimListenerForLayerType(Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;-><init>(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)V

    return-object v0
.end method

.method public final getMResetDragLayerState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mResetDragLayerState:Z

    return p0
.end method

.method public final setMResetDragLayerState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mResetDragLayerState:Z

    return-void
.end method

.method public setReversing(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->setReversing(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v0, p0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/android/launcher/Launcher;

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/WorkSpaceScrimView;->setIsOpeningIconBlur(Z)V

    :cond_18
    return-void
.end method

.method public update(FZ)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getAnimParams(F)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getMIsReversing()Z

    move-result v0

    if-eq v0, p2, :cond_12

    const-string p0, "DragLayerContentAnim"

    const-string p1, "the reverse state is changed, abandoned this update"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getScale()F

    move-result p2

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, p2, v1}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->setViewScale(F[Landroid/view/View;)V

    iget-object p2, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v1, p2, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_2a

    check-cast p2, Lcom/android/launcher/Launcher;

    goto :goto_2b

    :cond_2a
    const/4 p2, 0x0

    :goto_2b
    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object p2

    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Lcom/android/launcher3/views/WorkSpaceScrimView;->isSupportIconBlur()Z

    move-result p2

    if-ne p2, v0, :cond_3b

    move p2, v0

    goto :goto_3c

    :cond_3b
    move p2, v3

    :goto_3c
    if-eqz p2, :cond_41

    const/high16 p2, 0x3f800000  # 1.0f

    goto :goto_45

    :cond_41
    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getAlpha()F

    move-result p2

    :goto_45
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    aput-object v1, v0, v3

    invoke-direct {p0, p2, v0}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->setViewAlpha(F[Landroid/view/View;)V

    sget-object p2, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {p2}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result p2

    if-nez p2, :cond_5f

    iget-object p2, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getDepth()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    :cond_5f
    iget-object p2, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-object v0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getBlur()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/views/WorkSpaceScrimViewKt;->getDynamicBlurProgress(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    iget-object p2, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-object p0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getBlur()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher3/views/WorkSpaceScrimViewKt;->getDynamicBlurProgress(Landroid/content/Context;F)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setIconBlurWithoutAnim(F)V

    return-void
.end method

.method public updateBlur(F)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getAnimParamBlur(F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/launcher3/views/WorkSpaceScrimViewKt;->getDynamicBlurProgress(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getAnimParamBlur(F)F

    move-result p0

    invoke-static {v1, p0}, Lcom/android/launcher3/views/WorkSpaceScrimViewKt;->getDynamicBlurProgress(Landroid/content/Context;F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setIconBlurWithoutAnim(F)V

    return-void
.end method

.method public updateScale(F)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getAnimParamScale(F)F

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->setViewScale(F[Landroid/view/View;)V

    return-void
.end method

.class public final Lcom/oplus/quickstep/anim/WorkspaceContentAnim;
.super Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/anim/WorkspaceContentAnim$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/anim/WorkspaceContentAnim$Companion;

.field private static final TAG:Ljava/lang/String; = "WorkspaceContentAnim"


# instance fields
.field private animateViews:[Landroid/view/View;

.field private mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

.field private mHotseat:Lcom/android/launcher3/OplusHotseat;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPageIndicator:Landroid/view/View;

.field private mWorkspace:Lcom/android/launcher3/OplusWorkspace;

.field private shouldAnimateWithHotseat:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->Companion:Lcom/oplus/quickstep/anim/WorkspaceContentAnim$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object p1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mPageIndicator:Landroid/view/View;

    iget-object p1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget-object p1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-object p1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->endOverlayScrollSpring()V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method public static final synthetic access$getAnimateViews$p(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;)[Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->animateViews:[Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static final synthetic access$setViewAlpha(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;F[Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->setViewAlpha(F[Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setViewScale(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;F[Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->setViewScale(F[Landroid/view/View;)V

    return-void
.end method

.method private final getAnimateViews(Z)[Landroid/view/View;
    .registers 7

    const/4 v0, 0x1

    const-string v1, "mWorkspace"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_1f

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/view/View;

    iget-object v4, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, p1, v2

    iget-object v1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mPageIndicator:Landroid/view/View;

    aput-object v1, p1, v0

    iget-object p0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    const-string v0, "mHotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p0, p1, v3

    goto :goto_2c

    :cond_1f
    new-array p1, v3, [Landroid/view/View;

    iget-object v3, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, p1, v2

    iget-object p0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mPageIndicator:Landroid/view/View;

    aput-object p0, p1, v0

    :goto_2c
    return-object p1
.end method

.method private final setViewAlpha(F[Landroid/view/View;)V
    .registers 4

    if-eqz p2, :cond_21

    invoke-static {p2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->iconAlignmentAnimationRunningWithHotseat()Z

    move-result v0

    if-eqz v0, :cond_1d

    instance-of v0, p2, Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_1d

    goto :goto_6

    :cond_1d
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_6

    :cond_21
    return-void
.end method

.method private final setViewScale(F[Landroid/view/View;)V
    .registers 4

    if-eqz p2, :cond_23

    invoke-static {p2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->iconAlignmentAnimationRunningWithHotseat()Z

    move-result v0

    if-eqz v0, :cond_1d

    instance-of v0, p2, Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_1d

    goto :goto_6

    :cond_1d
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v0, p2, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    goto :goto_6

    :cond_23
    return-void
.end method


# virtual methods
.method public createAnimListenerForLayerType()Landroid/animation/AnimatorListenerAdapter;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const-string v0, "mWorkspace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createAnimListenerForLayerType(Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->iconAlignmentAnimationRunningWithHotseat()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->shouldAnimateWithHotseat:Z

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->getAnimateViews(Z)[Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->animateViews:[Landroid/view/View;

    const-string v0, "shouldAnimateHotseat:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->shouldAnimateWithHotseat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",viewSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->animateViews:[Landroid/view/View;

    if-eqz v1, :cond_28

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WorkspaceContentAnim"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;-><init>(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;)V

    return-object v0
.end method

.method public update(FZ)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getAnimParams(F)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getMIsReversing()Z

    move-result v0

    if-eq v0, p2, :cond_12

    const-string p0, "WorkspaceContentAnim"

    const-string p1, "the reverse state is changed, abandoned this update"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getScale()F

    move-result p2

    iget-object v0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->animateViews:[Landroid/view/View;

    invoke-direct {p0, p2, v0}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->setViewScale(F[Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getAlpha()F

    move-result p2

    iget-object v0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->animateViews:[Landroid/view/View;

    invoke-direct {p0, p2, v0}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->setViewAlpha(F[Landroid/view/View;)V

    iget-object p2, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getDepth()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    iget-object p2, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-object v0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getBlur()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/views/WorkSpaceScrimViewKt;->getDynamicBlurProgress(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    iget-object p2, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-object p0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getBlur()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher3/views/WorkSpaceScrimViewKt;->getDynamicBlurProgress(Landroid/content/Context;F)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setIconBlurWithoutAnim(F)V

    return-void
.end method

.method public updateBlur(F)V
    .registers 2

    return-void
.end method

.method public updateScale(F)V
    .registers 2

    return-void
.end method

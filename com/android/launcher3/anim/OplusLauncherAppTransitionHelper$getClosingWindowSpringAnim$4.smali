.class public final Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->getClosingWindowSpringAnim([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;Lcom/android/systemui/shared/system/AppTransitionParam;)Lcom/android/launcher3/anim/AppTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $anim:Lcom/android/launcher3/anim/AppTransitionAnimator;

.field public final synthetic $isViewSupportAsync:Z

.field public final synthetic this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/AppTransitionAnimator;ZLcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$4;->$anim:Lcom/android/launcher3/anim/AppTransitionAnimator;

    iput-boolean p2, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$4;->$isViewSupportAsync:Z

    iput-object p3, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$4;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSamePackage(Ljava/lang/String;IZ)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts$DefaultImpls;->isSamePackage(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public run(ILjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object p2, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$4;->$anim:Lcom/android/launcher3/anim/AppTransitionAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$4;->$isViewSupportAsync:Z

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;->finishAnimImmediately(Landroid/animation/Animator;Z)V

    const/4 p2, 0x4

    if-ne p1, p2, :cond_23

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$4;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getMAppTransitionManagerImpl()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconFallbackAnimation()Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_23
    return-void
.end method

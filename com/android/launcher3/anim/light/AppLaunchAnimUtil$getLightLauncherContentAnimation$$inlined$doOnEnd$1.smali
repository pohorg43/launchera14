.class public final Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightLauncherContentAnimation(Landroid/view/View;ZFLcom/android/launcher3/Launcher;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 AppLaunchAnimUtil.kt\ncom/android/launcher3/anim/light/AppLaunchAnimUtil\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n275#3,15:129\n97#4:144\n96#5:145\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $animator$inlined:Landroid/animation/ValueAnimator;

.field public final synthetic $isOpen$inlined:Z

.field public final synthetic $launcher$inlined:Lcom/android/launcher3/Launcher;

.field public final synthetic $view$inlined:Landroid/view/View;


# direct methods
.method public constructor <init>(ZLcom/android/launcher3/Launcher;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$$inlined$doOnEnd$1;->$isOpen$inlined:Z

    iput-object p2, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$$inlined$doOnEnd$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$$inlined$doOnEnd$1;->$view$inlined:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$$inlined$doOnEnd$1;->$animator$inlined:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "AppLaunchAnimUtil"

    const-string v0, "getLightLauncherContentAnimation doOnEnd"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$$inlined$doOnEnd$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$$inlined$doOnEnd$1;->$view$inlined:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_25
    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$$inlined$doOnEnd$1;->$animator$inlined:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.class public final Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$startHideCapsuleSurfaceAnim$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->startHideCapsuleSurfaceAnim(Landroid/view/SurfaceControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 OplusBackToCapsuleManager.kt\ncom/android/launcher3/capsule/OplusBackToCapsuleManager\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n572#3,5:129\n97#4:134\n96#5:135\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $capsuleSurfaceCtl$inlined:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$startHideCapsuleSurfaceAnim$$inlined$addListener$default$1;->$capsuleSurfaceCtl$inlined:Landroid/view/SurfaceControl;

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

    sget-object p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->INSTANCE:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;

    invoke-static {p1}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->access$notifyInterruptedEnd(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;)V

    const-string p1, "OplusBackToCapsuleManager"

    const-string v0, "alphaAnimation:  animate end"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->mIsRunningCapsuleAnim:Z

    iget-object p0, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$startHideCapsuleSurfaceAnim$$inlined$addListener$default$1;->$capsuleSurfaceCtl$inlined:Landroid/view/SurfaceControl;

    invoke-static {p0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->access$hideSurface(Landroid/view/SurfaceControl;)V

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

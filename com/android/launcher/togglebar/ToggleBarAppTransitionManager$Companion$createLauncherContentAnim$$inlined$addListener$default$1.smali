.class public final Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion$createLauncherContentAnim$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;->createLauncherContentAnim(ZLcom/android/launcher/Launcher;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 ToggleBarAppTransitionManager.kt\ncom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n140#3,8:129\n97#4:137\n96#5:138\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $contentTarget$inlined:Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;


# direct methods
.method public constructor <init>(Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion$createLauncherContentAnim$$inlined$addListener$default$1;->$contentTarget$inlined:Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;

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
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "ToggleBarAppTransitionManager"

    const-string v1, "createLauncherContentAnim : ToggleBarAppTransitionManager reset target."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion$createLauncherContentAnim$$inlined$addListener$default$1;->$contentTarget$inlined:Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    :cond_19
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

.class public final Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager$getAnimator$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;->getAnimator(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 TaskbarAllAppsAnimationManager.kt\ncom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n65#3,9:129\n97#4:138\n96#5:139\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $open$inlined:Z

.field public final synthetic $targetView$inlined:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager$getAnimator$$inlined$doOnEnd$1;->$targetView$inlined:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager$getAnimator$$inlined$doOnEnd$1;->$open$inlined:Z

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

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager$getAnimator$$inlined$doOnEnd$1;->$targetView$inlined:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->resetPivot()V

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager$getAnimator$$inlined$doOnEnd$1;->$open$inlined:Z

    const-string p1, "TaskbarAllAppsAnimationManager"

    if-eqz p0, :cond_1b

    const-string p0, "Taskbar all apps open animation end"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_ALL_APPS_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    goto :goto_25

    :cond_1b
    const-string p0, "Taskbar all apps close animation end"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_ALL_APPS_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :goto_25
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

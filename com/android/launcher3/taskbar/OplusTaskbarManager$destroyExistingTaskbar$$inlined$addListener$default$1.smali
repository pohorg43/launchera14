.class public final Lcom/android/launcher3/taskbar/OplusTaskbarManager$destroyExistingTaskbar$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarManager;->destroyExistingTaskbar(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 OplusTaskbarManager.kt\ncom/android/launcher3/taskbar/OplusTaskbarManager\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n310#3,3:129\n97#4:132\n96#5:133\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $force$inlined:Z

.field public final synthetic $reason$inlined:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarManager;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager$destroyExistingTaskbar$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager$destroyExistingTaskbar$$inlined$addListener$default$1;->$reason$inlined:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager$destroyExistingTaskbar$$inlined$addListener$default$1;->$force$inlined:Z

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

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager$destroyExistingTaskbar$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager$destroyExistingTaskbar$$inlined$addListener$default$1;->$reason$inlined:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager$destroyExistingTaskbar$$inlined$addListener$default$1;->$force$inlined:Z

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->access$destroyExistingTaskbar$s-1239244929(Lcom/android/launcher3/taskbar/OplusTaskbarManager;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager$destroyExistingTaskbar$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->access$setMTaskbarDisableAnim$p(Lcom/android/launcher3/taskbar/OplusTaskbarManager;Landroid/animation/AnimatorSet;)V

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

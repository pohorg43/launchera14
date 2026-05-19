.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$startArrowAnimation$lambda$4$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->startArrowAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 TaskBarFolderIconBackground.kt\ncom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n71#3,2:129\n97#4:131\n96#5:132\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$startArrowAnimation$lambda$4$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

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

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$startArrowAnimation$lambda$4$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->setMArrowAnimator(Landroid/animation/ValueAnimator;)V

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

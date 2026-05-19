.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$startArrowAnimation$lambda$4$$inlined$doOnStart$1;
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
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 TaskBarFolderIconBackground.kt\ncom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground\n*L\n1#1,127:1\n98#2:128\n95#3:129\n97#4:130\n68#5,2:131\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $a$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$startArrowAnimation$lambda$4$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    iput-object p2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$startArrowAnimation$lambda$4$$inlined$doOnStart$1;->$a$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

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
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$startArrowAnimation$lambda$4$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$startArrowAnimation$lambda$4$$inlined$doOnStart$1;->$a$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->setMArrowAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

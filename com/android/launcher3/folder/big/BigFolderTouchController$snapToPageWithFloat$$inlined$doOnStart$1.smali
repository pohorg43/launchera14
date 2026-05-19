.class public final Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnStart$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithFloat(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 BigFolderTouchController.kt\ncom/android/launcher3/folder/big/BigFolderTouchController\n*L\n1#1,127:1\n98#2:128\n95#3:129\n97#4:130\n496#5,4:131\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/big/BigFolderTouchController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

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

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->access$getMBigFolderIcon$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageStart()V

    :cond_10
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->access$getMBigFolderIcon$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->access$getMTargetPageInAnimation$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)F

    :cond_21
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-static {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->access$getMBigFolderIcon$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    return-void
.end method

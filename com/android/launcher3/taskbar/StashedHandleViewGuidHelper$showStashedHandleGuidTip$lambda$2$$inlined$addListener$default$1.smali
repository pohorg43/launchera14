.class public final Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper$showStashedHandleGuidTip$lambda$2$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->showStashedHandleGuidTip(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 StashedHandleViewGuidHelper.kt\ncom/android/launcher3/taskbar/StashedHandleViewGuidHelper\n*L\n1#1,127:1\n98#2:128\n95#3:129\n97#4:130\n72#5,3:131\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $this_apply$inlined:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field public final synthetic $topMargin$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $view$inlined:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tooltips/COUIToolTips;Landroid/view/View;Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper$showStashedHandleGuidTip$lambda$2$$inlined$addListener$default$1;->$this_apply$inlined:Lcom/coui/appcompat/tooltips/COUIToolTips;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper$showStashedHandleGuidTip$lambda$2$$inlined$addListener$default$1;->$view$inlined:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper$showStashedHandleGuidTip$lambda$2$$inlined$addListener$default$1;->$topMargin$inlined:Lkotlin/jvm/internal/Ref$IntRef;

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
    .registers 10

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper$showStashedHandleGuidTip$lambda$2$$inlined$addListener$default$1;->$this_apply$inlined:Lcom/coui/appcompat/tooltips/COUIToolTips;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper$showStashedHandleGuidTip$lambda$2$$inlined$addListener$default$1;->$view$inlined:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper$showStashedHandleGuidTip$lambda$2$$inlined$addListener$default$1;->$topMargin$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    neg-int v6, p0

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZIIZ)V

    return-void
.end method

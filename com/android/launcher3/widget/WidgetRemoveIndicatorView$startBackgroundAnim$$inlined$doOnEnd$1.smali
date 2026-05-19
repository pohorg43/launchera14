.class public final Lcom/android/launcher3/widget/WidgetRemoveIndicatorView$startBackgroundAnim$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->startBackgroundAnim(ZLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 WidgetRemoveIndicatorView.kt\ncom/android/launcher3/widget/WidgetRemoveIndicatorView\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n66#3,4:129\n97#4:133\n96#5:134\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView$startBackgroundAnim$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

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

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView$startBackgroundAnim$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView$startBackgroundAnim$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView$startBackgroundAnim$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_20
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

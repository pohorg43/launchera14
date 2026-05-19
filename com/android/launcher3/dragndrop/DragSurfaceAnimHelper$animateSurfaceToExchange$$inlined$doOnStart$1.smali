.class public final Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToExchange(Landroid/view/View;Lcom/android/launcher3/Launcher;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 DragSurfaceAnimHelper.kt\ncom/android/launcher3/dragndrop/DragSurfaceAnimHelper\n*L\n1#1,127:1\n98#2:128\n95#3:129\n97#4:130\n423#5,7:131\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $cardView$inlined:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$1;->$cardView$inlined:Landroid/view/View;

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

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$1;->$cardView$inlined:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$1;->$cardView$inlined:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    new-instance p1, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {p1}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$1;->$cardView$inlined:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method

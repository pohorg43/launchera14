.class public final Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$onAnimateToProgressInternal$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/anim/SwipeSpringAnimation$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->onAnimateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;ZLcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$onAnimateToProgressInternal$2;->this$0:Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$onAnimateToProgressInternal$2;->this$0:Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;

    invoke-static {p0}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->access$onHandlingInterruptAnimateToThumbnailEnd(Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;)V

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method

.method public onAnimationUpdate(FLandroid/graphics/RectF;)V
    .registers 3

    const-string p0, "currentRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

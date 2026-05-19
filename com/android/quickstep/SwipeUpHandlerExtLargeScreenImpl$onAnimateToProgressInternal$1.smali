.class public final Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$onAnimateToProgressInternal$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

    iput-object p1, p0, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$onAnimateToProgressInternal$1;->this$0:Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$onAnimateToProgressInternal$1;->this$0:Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;

    invoke-static {p0}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->access$onHandlingInterruptAnimateToThumbnailEnd(Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;)V

    return-void
.end method

.class public final Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animatePress$1;
.super Lcom/coui/appcompat/animation/COUIAnimationListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->animatePress(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $pressAnimationRecorder:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animatePress$1;->$pressAnimationRecorder:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animatePress$1;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUIAnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animatePress$1;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->access$setMPressAnimation$p(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;Landroid/view/animation/ScaleAnimation;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animatePress$1;->$pressAnimationRecorder:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_c
    return-void
.end method

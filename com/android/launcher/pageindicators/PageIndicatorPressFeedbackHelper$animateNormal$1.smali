.class public final Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animateNormal$1;
.super Lcom/coui/appcompat/animation/COUIAnimationListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->animateNormal(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animateNormal$1;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUIAnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animateNormal$1;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    invoke-static {p1}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->access$getMPressAnimation$p(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;)Landroid/view/animation/ScaleAnimation;

    move-result-object p1

    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animateNormal$1;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->access$setMIsPressing$p(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;Z)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animateNormal$1;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    invoke-static {p1}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->access$getMIndicator$p(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;)Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animateNormal$1;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    invoke-static {p1}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->access$getMIndicator$p(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;)Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->restoreColorAndScale()V

    :cond_20
    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animateNormal$1;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->access$setMNormalAnimation$p(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;Landroid/view/animation/ScaleAnimation;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

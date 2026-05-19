.class public final Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;
.super Landroidx/dynamicanimation/animation/FloatValueHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;-><init>(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(F)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    sget-object v0, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMIsGoingHome$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p0

    if-eqz p0, :cond_6d

    sget-object v0, Lcom/oplus/quickstep/dock/DockView;->ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_6d

    :cond_30
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMIsGoingOverview$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->getMChangeQuickSwitch()Z

    move-result v0

    if-nez v0, :cond_6d

    const v0, 0x3e99999a  # 0.3f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6d

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$playControlEnterAnimation(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMIsGridAnimationStarted$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z

    move-result p1

    if-nez p1, :cond_6d

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_6d

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$setMIsGridAnimationStarted$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Z)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMGridProgressAnimation$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    if-eqz p0, :cond_6d

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_6d
    :goto_6d
    return-void
.end method

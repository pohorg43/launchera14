.class public final Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;-><init>(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSwipeToRecentAnimationHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipeToRecentAnimationHelper.kt\ncom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1120:1\n1#2:1121\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;ZFF)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getTAG$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "goHomeEndListener-onAnimationEnd end"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    sget-object p2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p2, :cond_30

    sget-object p2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_30

    :cond_2e
    move p1, p4

    goto :goto_31

    :cond_30
    :goto_30
    move p1, p3

    :goto_31
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getTAG$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "goHomeEndListener--onAnimationEnd, overviewUi="

    invoke-static {v0, p1, p2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_42
    if-nez p1, :cond_68

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p1, p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateRecentViewState(Z)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->needReloadTask()Z

    move-result p1

    if-nez p1, :cond_68

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reset()V

    :cond_68
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_d3

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMWallPaperBlurStart$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_84

    move p1, p3

    goto :goto_85

    :cond_84
    move p1, p4

    :goto_85
    if-eqz p1, :cond_d3

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMDepthController$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentBlur()F

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_a0

    goto :goto_a1

    :cond_a0
    move p3, p4

    :goto_a1
    if-nez p3, :cond_d3

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    if-nez p1, :cond_d3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_c0

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getTAG$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "goHomeEndListener: reset blur because current blur isn\'t incorrect"

    invoke-static {p1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c0
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMDepthController$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    :cond_d3
    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1, p4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentSpringX$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-eqz p1, :cond_e3

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :cond_e3
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentAlphaAnimator$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_ee

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_ee
    return-void
.end method

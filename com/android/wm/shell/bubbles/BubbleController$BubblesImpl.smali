.class Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/Bubbles;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BubblesImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;
    }
.end annotation


# instance fields
.field private mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

.field private mIBubbles:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$setSysuiProxy$8(Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$showOrHideAppBubble$3(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$collapseStack$0()V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$expandStackAndSelectBubble$1(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onEntryUpdated$11(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/util/SparseArray;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onCurrentProfilesChanged$19(Landroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onStatusBarVisibilityChanged$15(Z)V

    return-void
.end method

.method public static synthetic h(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$handleDismissalInterception$6(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;I)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onEntryRemoved$12(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onZenStateChanged$16()V

    return-void
.end method

.method public static synthetic k(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onRankingUpdated$13(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onNotificationChannelModified$14(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method private synthetic lambda$collapseStack$0()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->collapseStack()V

    return-void
.end method

.method private synthetic lambda$expandStackAndSelectBubble$1(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method private synthetic lambda$expandStackAndSelectBubble$2(Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method private synthetic lambda$getScreenshotExcludingBubble$4(ILandroid/window/ScreenCapture$SynchronousScreenCaptureListener;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->getScreenshotExcludingBubble(ILandroid/window/ScreenCapture$SynchronousScreenCaptureListener;)V

    return-void
.end method

.method private static synthetic lambda$handleDismissalInterception$5(Ljava/util/function/IntConsumer;I)V
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private static synthetic lambda$handleDismissalInterception$6(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;I)V
    .registers 4

    new-instance v0, Lcom/android/wm/shell/bubbles/n;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/bubbles/n;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$handleDismissalInterception$7(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)Ljava/lang/Boolean;
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2700(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCurrentProfilesChanged$19(Landroid/util/SparseArray;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onCurrentProfilesChanged(Landroid/util/SparseArray;)V

    return-void
.end method

.method private synthetic lambda$onEntryAdded$10(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2500(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method private synthetic lambda$onEntryRemoved$12(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2400(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method private synthetic lambda$onEntryUpdated$11(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->onEntryUpdated(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    return-void
.end method

.method private synthetic lambda$onNotificationChannelModified$14(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/bubbles/BubbleController;->onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method private synthetic lambda$onNotificationPanelExpandedChanged$21(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2100(Lcom/android/wm/shell/bubbles/BubbleController;Z)V

    return-void
.end method

.method private synthetic lambda$onRankingUpdated$13(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->onRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$onStatusBarStateChanged$17(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onStatusBarStateChanged(Z)V

    return-void
.end method

.method private synthetic lambda$onStatusBarVisibilityChanged$15(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2300(Lcom/android/wm/shell/bubbles/BubbleController;Z)V

    return-void
.end method

.method private synthetic lambda$onUserChanged$18(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onUserChanged(I)V

    return-void
.end method

.method private synthetic lambda$onUserRemoved$20(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onUserRemoved(I)V

    return-void
.end method

.method private synthetic lambda$onZenStateChanged$16()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2200(Lcom/android/wm/shell/bubbles/BubbleController;)V

    return-void
.end method

.method private synthetic lambda$setExpandListener$9(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    return-void
.end method

.method private synthetic lambda$setSysuiProxy$8(Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2600(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V

    return-void
.end method

.method private synthetic lambda$showOrHideAppBubble$3(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->showOrHideAppBubble(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onEntryAdded$10(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onUserChanged$18(I)V

    return-void
.end method

.method public static synthetic o(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onStatusBarStateChanged$17(Z)V

    return-void
.end method

.method public static synthetic p(Ljava/util/function/IntConsumer;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$handleDismissalInterception$5(Ljava/util/function/IntConsumer;I)V

    return-void
.end method

.method public static synthetic q(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$expandStackAndSelectBubble$2(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)Ljava/lang/Boolean;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$handleDismissalInterception$7(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$setExpandListener$9(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onNotificationPanelExpandedChanged$21(Z)V

    return-void
.end method

.method public static synthetic u(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ILandroid/window/ScreenCapture$SynchronousScreenCaptureListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$getScreenshotExcludingBubble$4(ILandroid/window/ScreenCapture$SynchronousScreenCaptureListener;)V

    return-void
.end method

.method public static synthetic v(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onUserRemoved$20(I)V

    return-void
.end method


# virtual methods
.method public collapseStack()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/u;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/u;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createExternalInterface()Lcom/android/wm/shell/bubbles/IBubbles;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mIBubbles:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->invalidate()V

    :cond_7
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {v0, v1, v1}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleController;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mIBubbles:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    return-object v0
.end method

.method public expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/m;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/m;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubble;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/bubbles/r;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBubbleWithShortcutId(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->getBubbleWithShortcutId(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p0

    return-object p0
.end method

.method public getScreenshotExcludingBubble(I)Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/bubbles/v;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/wm/shell/bubbles/v;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ILandroid/window/ScreenCapture$SynchronousScreenCaptureListener;)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public handleDismissalInterception(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;Ljava/util/concurrent/Executor;)Z
    .registers 6
    .param p2  # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            ">;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/concurrent/Executor;",
            ")Z"
        }
    .end annotation

    if-eqz p3, :cond_8

    new-instance v0, Lcom/android/wm/shell/bubbles/z;

    invoke-direct {v0, p4, p3}, Lcom/android/wm/shell/bubbles/z;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p3}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p3

    new-instance p4, Lcom/android/wm/shell/bubbles/q;

    invoke-direct {p4, p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/q;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)V

    const-class p0, Ljava/lang/Boolean;

    invoke-interface {p3, p4, p0}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlockingForResult(Ljava/util/function/Supplier;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isAppBubbleTaskId(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->access$2000(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isBubbleExpanded(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->isBubbleExpanded(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onCurrentProfilesChanged(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/l;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/l;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/util/SparseArray;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEntryAdded(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/l;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/l;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEntryRemoved(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/r;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/bubbles/r;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEntryUpdated(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/x;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/x;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 13

    const/4 v0, 0x2

    if-eq p4, v0, :cond_6

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1a

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v7, Lcom/android/wm/shell/bubbles/y;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/bubbles/y;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    invoke-interface {v0, v7}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1a
    return-void
.end method

.method public onNotificationPanelExpandedChanged(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/bubbles/s;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ZI)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/bubbles/g;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStatusBarStateChanged(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/s;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/bubbles/s;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ZI)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStatusBarVisibilityChanged(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/s;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/bubbles/s;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ZI)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserChanged(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/p;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/bubbles/p;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;II)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/bubbles/p;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;II)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZenStateChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/t;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/t;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/l;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/l;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSysuiProxy(Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/m;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/m;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showOrHideAppBubble(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V
    .registers 6
    .param p3  # Landroid/graphics/drawable/Icon;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/w;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/w;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

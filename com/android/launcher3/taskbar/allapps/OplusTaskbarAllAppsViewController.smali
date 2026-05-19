.class public final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;
.super Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusTaskbarAllAppsViewController"


# instance fields
.field private final mWindowController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->Companion:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController<",
            "*>;",
            "Lcom/android/launcher3/taskbar/TaskbarStashController;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "slideInView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    check-cast p3, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->mWindowController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->setUpTaskbarNotStashing()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->setUpTaskbarNotStashing$lambda$1(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->setUpTaskbarNotStashing$lambda$1$lambda$0(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V

    return-void
.end method

.method private final setUpTaskbarNotStashing()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    if-eqz v0, :cond_11

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/d;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/allapps/d;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->setOnCloseBeginListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V

    return-void
.end method

.method private static final setUpTaskbarNotStashing$lambda$1(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    new-instance v1, Lcom/android/launcher3/folder/t;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/t;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void
.end method

.method private static final setUpTaskbarNotStashing$lambda$1$lambda$0(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->maybeResetStashedInAppAllApps()V

    return-void
.end method


# virtual methods
.method public final closeWhenStartApp(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    instance-of v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->closeWhenStartApp(Z)V

    :cond_b
    return-void
.end method

.method public final getSlideInView()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.taskbar.allapps.OplusTaskbarAllAppsSlideInView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    return-object p0
.end method

.method public final getSlideInViewParams()Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.views.BaseDragLayer.LayoutParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    return-object p0
.end method

.method public final isSlideInViewOpen()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p0

    return p0
.end method

.method public final isSlideInViewShow()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p0

    return p0
.end method

.method public final resetWorkModeSwitchLocation()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    instance-of v1, v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-boolean v1, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-nez v1, :cond_c

    return-void

    :cond_c
    check-cast v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getWorkManager()Lcom/android/launcher3/allapps/WorkProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    check-cast v1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c32

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :try_start_25
    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getWorkManager()Lcom/android/launcher3/allapps/WorkProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object p0

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    const-string/jumbo v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-nez v0, :cond_46

    goto :goto_52

    :cond_46
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_49
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_49} :catch_4a

    goto :goto_52

    :catch_4a
    const-string p0, "OplusTaskbarAllAppsViewController"

    const-string/jumbo v0, "workModeSwitchLocationWrong - Failed to obtain layoutParams"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_52
    return-void
.end method

.method public final setSlideInViewFadingEdge(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_15
    return-void
.end method

.method public setUpAppDivider()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object p0

    const-string v0, "launcher.all_apps_visited_count"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OnboardingPrefs;->incrementEventCount(Ljava/lang/String;)Z

    return-void
.end method

.method public final updateSlideInViewParams()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.views.BaseDragLayer.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->mWindowController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarAllAppsPanelWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->mWindowController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarAllAppsPanelHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->mWindowController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarAllAppsPanelPadding()Landroid/graphics/Point;

    move-result-object v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, v3, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v3, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

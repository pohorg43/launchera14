.class public final Lcom/android/launcher3/uparrow/UpArrowHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/uparrow/IUpArrowItf;


# static fields
.field private static final END:F = 1.0f

.field public static final INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

.field private static final SHOW_EXIT_TIME:J = 0xc8L

.field private static final START:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "UpArrowHelper"

.field private static final TAG_DRAWER_INDICATOR:Ljava/lang/String; = "tag_drawer_indicator"

.field private static mLauncher:Lcom/android/launcher/Launcher;

.field private static mShowExitAnimator:Landroid/animation/ValueAnimator;

.field private static mUpArrow:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-direct {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/animation/ValueAnimator;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->showUpArrow$lambda$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final showUpArrow$lambda$5(Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    if-nez v0, :cond_1b

    goto :goto_1e

    :cond_1b
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1e
    return-void
.end method


# virtual methods
.method public addUpArrow()V
    .registers 7

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v0, "UpArrowHelper"

    if-nez p0, :cond_c

    const-string p0, "addIndicatorArrow: context is null, no init?"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    if-eqz p0, :cond_d0

    sget-object v1, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_47

    const-string v1, "addIndicatorArrow: already add view"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isCanShowUpArrow()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->onPageEndTransition()V

    :cond_43
    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->reLayoutUpArrow()V

    return-void

    :cond_47
    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07079b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget-object v2, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_d0

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isCanShowUpArrow()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_80

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_80

    const/4 v3, 0x1

    goto :goto_81

    :cond_80
    move v3, v4

    :goto_81
    const v5, 0x7f0807be

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v1, "tag_drawer_indicator"

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_94

    move v1, v4

    goto :goto_95

    :cond_94
    const/4 v1, 0x4

    :goto_95
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->reLayoutUpArrow()V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    if-eqz v3, :cond_d0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d0
    return-void
.end method

.method public hadInterruptShowPageIndicator(Lcom/android/launcher3/LauncherState;)Z
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isSupportPullUp()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_be

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result p0

    if-nez p0, :cond_1c

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-nez p0, :cond_1c

    return v0

    :cond_1c
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_be

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_31

    return v0

    :cond_31
    sget-object v1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isCanShowUpArrow()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_43

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    return v3

    :cond_43
    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-nez v4, :cond_56

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_54

    goto :goto_56

    :cond_54
    move v4, v0

    goto :goto_57

    :cond_56
    :goto_56
    move v4, v3

    :goto_57
    sget-object v5, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v7, 0x4

    if-ne v5, v6, :cond_90

    if-eqz v4, :cond_90

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    return v0

    :cond_6d
    invoke-virtual {v1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isCanShowUpArrow()Z

    move-result v0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_7f

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_be

    :cond_7f
    invoke-virtual {v1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onPageBeginTransitionForUpArrow()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_be

    :cond_90
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v1

    if-eqz v1, :cond_be

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_be

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_be

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result p1

    if-eqz p1, :cond_be

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    return v3

    :cond_be
    :goto_be
    return v0
.end method

.method public hidePageIndicator()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    if-nez p0, :cond_15

    goto :goto_19

    :cond_15
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_19
    return-void
.end method

.method public hideUpArrow()V
    .registers 3

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    move p0, v0

    :goto_e
    if-nez p0, :cond_11

    return-void

    :cond_11
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    if-nez p0, :cond_16

    goto :goto_1a

    :cond_16
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1a
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    if-nez p0, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :goto_22
    return-void
.end method

.method public isCanShowUpArrow()Z
    .registers 5

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result p0

    if-ne p0, v0, :cond_1c

    move p0, v0

    goto :goto_1d

    :cond_1c
    move p0, v1

    :goto_1d
    if-eqz p0, :cond_30

    sget-object p0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    sget-object v2, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSwitchEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_30

    return v1

    :cond_30
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result p0

    if-eqz p0, :cond_43

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isCanShowUpArrow()Z

    move-result p0

    return p0

    :cond_43
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_5e

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result p0

    if-eqz p0, :cond_5c

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5c

    goto :goto_5d

    :cond_5c
    move v0, v1

    :goto_5d
    return v0

    :cond_5e
    return v1
.end method

.method public isEnableUpArrow()Z
    .registers 5

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result p0

    if-ne p0, v0, :cond_1c

    move p0, v0

    goto :goto_1d

    :cond_1c
    move p0, v1

    :goto_1d
    if-eqz p0, :cond_30

    sget-object p0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    sget-object v2, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSwitchEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_30

    return v1

    :cond_30
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result p0

    if-eqz p0, :cond_43

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isEnableUpArrow()Z

    move-result p0

    return p0

    :cond_43
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_5e

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result p0

    if-eqz p0, :cond_5c

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5c

    goto :goto_5d

    :cond_5c
    move v0, v1

    :goto_5d
    return v0

    :cond_5e
    return v1
.end method

.method public isNormalState()Z
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isNormalState()Z

    move-result p0

    return p0

    :cond_13
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_48

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result p0

    if-eqz p0, :cond_48

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_48

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_48

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result p0

    if-nez p0, :cond_48

    const/4 v0, 0x1

    :cond_48
    return v0
.end method

.method public isSupportPullUp()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result p0

    if-nez p0, :cond_13

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public onPageBeginTransitionForUpArrow()V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->setIndicatorArrowVisibility(I)V

    return-void
.end method

.method public onPageEndTransitionForUpArrow()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->setIndicatorArrowVisibility(I)V

    :cond_18
    return-void
.end method

.method public onShowPageIndicator()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string p0, "UpArrowHelper"

    const-string v0, "floder is open, no show arrow or indicator"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onPageBeginTransitionForUpArrow()V

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->onPageBeginTransition()V

    :cond_2b
    return-void
.end method

.method public onShowUpArrow()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v0}, Lcom/android/launcher/guide/DrawerGuideManager;->isShowGuide()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    :cond_18
    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onPageEndTransitionForUpArrow()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->onPageEndTransition()V

    :cond_2a
    return-void
.end method

.method public reLayoutUpArrow()V
    .registers 6

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v0, "UpArrowHelper"

    if-nez p0, :cond_d

    const-string/jumbo p0, "reLayoutIndicatorArrow: context is null, no init?"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    sget-object v1, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    if-nez v1, :cond_18

    const-string/jumbo p0, "reLayoutIndicatorArrow: relayout mIndicatorArrow is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    if-eqz p0, :cond_8e

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onShowPageIndicator()V

    :cond_29
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p0, :cond_8e

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v2, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    const-string/jumbo v1, "reLayoutIndicatorArrow: page bottomMargin="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",upArrow bottom margin="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {v1, p0, v0}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq p0, v3, :cond_8e

    const/16 p0, 0x51

    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    if-nez p0, :cond_8b

    goto :goto_8e

    :cond_8b
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method public readyGoToToggleBarState()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-eqz p0, :cond_33

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->isInMainState()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onShowPageIndicator()V

    goto :goto_38

    :cond_1e
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->getStateName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "layout"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->hideUpArrow()V

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->hidePageIndicator()V

    goto :goto_38

    :cond_33
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onShowPageIndicator()V

    :cond_38
    :goto_38
    return-void
.end method

.method public removeUpArrow()V
    .registers 3

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p0, :cond_d

    const-string p0, "UpArrowHelper"

    const-string/jumbo v0, "removeIndicatorArrow: context is null? no init?"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    if-eqz p0, :cond_3b

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    :cond_29
    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onPageBeginTransitionForUpArrow()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->onPageBeginTransition()V

    :cond_3b
    return-void
.end method

.method public setIndicatorArrowVisibility(I)V
    .registers 3

    if-nez p1, :cond_24

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isNormalState()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result p1

    if-eqz p1, :cond_24

    sget-object p1, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->hideUpArrow()V

    goto :goto_27

    :cond_20
    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->showUpArrow()V

    goto :goto_27

    :cond_24
    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->hideUpArrow()V

    :goto_27
    return-void
.end method

.method public final setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isSupportPullUp()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->addUpArrow()V

    goto :goto_11

    :cond_e
    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    :goto_11
    return-void
.end method

.method public setUpArrowAlpha(F)V
    .registers 3

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    if-nez p0, :cond_1b

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    if-eqz p0, :cond_18

    const-string/jumbo v0, "tag_drawer_indicator"

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    sput-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    :cond_1b
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    if-eqz p0, :cond_40

    sget-object p0, Lcom/android/common/config/AnimationConstant;->WORKSPACE_FADE_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    invoke-interface {p0, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    const/4 p1, 0x1

    int-to-float p1, p1

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr p0, v0

    sub-float/2addr p1, p0

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-lez v0, :cond_34

    goto :goto_35

    :cond_34
    move p1, p0

    :goto_35
    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_40
    return-void
.end method

.method public showUpArrow()V
    .registers 3

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p0, :cond_d

    const-string p0, "UpArrowHelper"

    const-string/jumbo v0, "showIndicatorArrow: context is null, no init?"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    if-nez p0, :cond_12

    goto :goto_16

    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_16
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mUpArrow:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_25

    :cond_24
    move-object p0, v0

    :goto_25
    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p0

    if-eqz p0, :cond_46

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_3f
    const/4 p0, 0x0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p0

    if-eqz p0, :cond_78

    :cond_46
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_71

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_7a

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    sput-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_59

    goto :goto_5e

    :cond_59
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_5e
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_67

    sget-object v0, Ln0/a;->a:Ln0/a;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_67
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_6c

    goto :goto_71

    :cond_6c
    sget-object v0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->INTERPOLATOR_INDICATOR_SHOW:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_71
    :goto_71
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_78

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_78
    return-void

    nop

    :array_7a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

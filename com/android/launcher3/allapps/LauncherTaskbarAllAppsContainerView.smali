.class public Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;
.super Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.source ""

# interfaces
.implements Lcom/android/launcher3/SystemWindowInsettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$DrawAppSortUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/AppLauncher;",
        ":",
        "Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;",
        ">",
        "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
        "TT;>;",
        "Lcom/android/launcher3/SystemWindowInsettable;"
    }
.end annotation


# static fields
.field public static final DRAW_APP_SORT_RULE_KEY:Ljava/lang/String; = "draw_app_sort_rule_key"

.field public static final INTERPOLATOR_INDICATOR_SHOW:Landroid/view/animation/PathInterpolator;

.field private static final SHOW_EXIT_TIME:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "LauncherTaskbarAllAppsContainerView"

.field private static final UPDATE_SCROLLER_COLOR_DELAY:I = 0x3e8


# instance fields
.field public mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

.field private mContentView:Landroid/widget/RelativeLayout;

.field private final mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$DrawAppSortUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mIsInTranslate:Z

.field public mOldAppSortRule:I

.field private mOldConfig:Landroid/content/res/Configuration;

.field public mRecyclerViewFastScroller:Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

.field public mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

.field private mShowExitAnimator:Landroid/animation/ValueAnimator;

.field private mSwitchToWorkTabPending:Z

.field public mUpdateScrollerColorDelay:I

.field private mWorkTabListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->INTERPOLATOR_INDICATOR_SHOW:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mIsInTranslate:Z

    iput-object p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mRecyclerViewFastScroller:Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    iput v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mOldAppSortRule:I

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mUpdateScrollerColorDelay:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mIsInTranslate:Z

    iput-object p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mRecyclerViewFastScroller:Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    iput p2, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mOldAppSortRule:I

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mUpdateScrollerColorDelay:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mIsInTranslate:Z

    iput-object p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mRecyclerViewFastScroller:Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    iput p2, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mOldAppSortRule:I

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mUpdateScrollerColorDelay:I

    return-void
.end method

.method private applyAdapterPaddingsForSortAlphabetical(Lcom/android/launcher3/DeviceProfile;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mNavBarScrimHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-nez v3, :cond_52

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_6f

    :cond_52
    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    :goto_6f
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->applyPadding()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_7d
    return-void
.end method

.method private isInTopSearchViewArea(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    aget v3, v2, v1

    aget v4, v2, v1

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    const/4 v4, 0x1

    aget v6, v2, v4

    aget v2, v2, v4

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    int-to-float v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    int-to-float v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_5a

    move v1, v4

    :cond_5a
    return v1
.end method

.method private isResetWorkModeSwitch()Z
    .registers 3

    instance-of v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getCurrentPage()I

    move-result v0

    if-ne v0, v1, :cond_1a

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v0, :cond_1a

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public static synthetic k(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->lambda$onFinishInflateInject$1()V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->lambda$onFinishInflate$0()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->updateGlobalColor()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onFinishInflateInject$1()V
    .registers 6

    const-string v0, "LauncherTaskbarAllAppsContainerView"

    const-string/jumbo v1, "onGlobalLayoutAndMaxTranslationChange "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v1

    if-nez v1, :cond_19

    const-string/jumbo p0, "onFinishInflate_app_container not provision"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    if-nez v1, :cond_24

    const-string/jumbo p0, "onGlobalLayoutAndMaxTranslationChange header is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getMaxTranslation()I

    move-result v1

    const-string/jumbo v2, "onGlobalLayoutAndMaxTranslationChange padding = "

    const-string v3, " size = "

    invoke-static {v2, v1, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_43
    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_85

    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v4, v4, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->applyPadding()V

    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v4, v4, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v4, v4, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_82

    :cond_7c
    const-string/jumbo v4, "onGlobalLayoutAndMaxTranslationChange rc is null"

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_85
    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset(Z)V

    return-void
.end method

.method private synthetic lambda$updatePredictedApps$2(Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->updatePredictedData(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$updatePredictedApps$3()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile;->getNumAllAppsColumns(Lcom/android/launcher3/views/ActivityContext;)I

    move-result v0

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getPredictedApps(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryAndUpdatePredictedApps,recommendedPkgs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherTaskbarAllAppsContainerView"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher/widget/b;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->lambda$updatePredictedApps$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->lambda$updatePredictedApps$3()V

    return-void
.end method

.method private needUpdateScrollerColorWhenConfigurationChanged(Landroid/content/res/Configuration;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mOldConfig:Landroid/content/res/Configuration;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p0

    invoke-static {p0}, Lcom/android/common/util/UxConfigUtils;->needReloadColor(I)Z

    move-result p0

    return p0
.end method

.method private registeredAppSortUpdateListener(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$DrawAppSortUpdateListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;

    if-eqz p0, :cond_12

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_a
    const-string p0, "LauncherTaskbarAllAppsContainerView"

    const-string/jumbo p1, "registeredAppSortUpdateListener sortUpdateListener is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method


# virtual methods
.method public applyAdapterPaddings(Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->applyAdapterPaddings(Lcom/android/launcher3/DeviceProfile;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getFastScroller()Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->applyAdapterPaddingsForSortAlphabetical(Lcom/android/launcher3/DeviceProfile;)V

    goto :goto_1d

    :cond_1a
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->applyAdapterPaddings(Lcom/android/launcher3/DeviceProfile;)V

    :goto_1d
    return-void
.end method

.method public applyMainAdapterPaddings()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->applyPadding()V

    :cond_1e
    return-void
.end method

.method public getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/OplusAllAppsPagedView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1b

    :cond_f
    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p0

    :cond_1b
    :goto_1b
    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method public getAlphabeticalAppsList()Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    check-cast p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    return-object p0
.end method

.method public getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/OplusSearchUiManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

    return-object p0
.end method

.method public getDrawAppSortRule(Landroid/content/Context;)I
    .registers 3

    const-string p0, "draw_app_sort_rule_key"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getFirstSectionCheckPosition()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    return-object p0
.end method

.method public getScrollHelper()Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    return-object p0
.end method

.method public hideFloatingHeader()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public initColorPopListWindow()V
    .registers 1

    return-void
.end method

.method public notifyAppSortUpdateListener(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$DrawAppSortUpdateListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$DrawAppSortUpdateListener;->drawAppSortUpdate(I)V

    goto :goto_10

    :cond_20
    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility(Ljava/lang/Integer;)V

    return-void
.end method

.method public onAppsUpdated()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->onAppsUpdated()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility()V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mSwitchToWorkTabPending:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mSwitchToWorkTabPending:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->switchToTab(I)V

    :cond_17
    return-void
.end method

.method public onClearSearchResult()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onClearSearchResult()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    if-eqz v0, :cond_31

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->needUpdateScrollerColorWhenConfigurationChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "LauncherTaskbarAllAppsContainerView"

    const-string/jumbo v1, "onConfigurationChanged updateScrollerColor"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->updateGlobalColor()V

    :cond_31
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->updateWorkTabColor()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    if-eqz p3, :cond_10

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsDragAppToWorkspaceFromDrawer(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_10
    return-void
.end method

.method public onFinishInflate()V
    .registers 6

    const v0, 0x7f0a0095

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->initColorPopListWindow()V

    const v0, 0x7f0a0511

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusSearchUiManager;

    iput-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

    const v0, 0x7f0a0291

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    iput-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mRecyclerViewFastScroller:Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->registeredAppSortUpdateListener(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$DrawAppSortUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsForWork()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->registeredAppSortUpdateListener(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$DrawAppSortUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mRecyclerViewFastScroller:Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->registeredAppSortUpdateListener(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$DrawAppSortUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;-><init>(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object v2, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->setScrollHelper(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V

    :cond_68
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->setScrollHelper(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V

    :cond_87
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0, p0}, Lcom/android/launcher3/allapps/SearchUiManager;->initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_d2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mOldConfig:Landroid/content/res/Configuration;

    new-instance v0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$1;-><init>(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->hideFloatingHeader()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    new-instance v2, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;)V

    iget v3, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mUpdateScrollerColorDelay:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "draw_app_sort_rule_key"

    invoke-static {v0, v2, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mOldAppSortRule:I

    return-void

    :array_d2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public onFinishInflateInject()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    instance-of v1, v0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;

    new-instance v1, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v1, p0}, Lcom/android/exceptionmonitor/util/d;-><init>(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->setMaxTranslationChangeListener(Lcom/android/launcher3/allapps/OplusFloatingHeaderView$GlobalLayoutAndMaxTranslationChange;)V

    :cond_10
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v2, "LauncherTaskbarAllAppsContainerView"

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    check-cast v0, Lcom/android/launcher3/statemanager/StatefulActivity;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string p0, "intercept touch event if not in all app state"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_84

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    goto :goto_44

    :cond_41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    :goto_44
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->isInTopSearchViewArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusSearchUiManager;

    if-eqz v0, :cond_84

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->isResetWorkModeSwitch()Z

    move-result v0

    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    instance-of v4, v4, Lcom/android/launcher3/BaseDraggingActivity;

    if-eqz v4, :cond_6e

    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v4, v4, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p1, v4, v5}, Lcom/android/launcher3/allapps/branch/BranchManager;->isInBranchHintArea(Landroid/view/MotionEvent;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result v4

    if-eqz v4, :cond_70

    :cond_6e
    if-eqz v0, :cond_84

    :cond_70
    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    check-cast v4, Lcom/android/launcher3/allapps/OplusSearchUiManager;

    invoke-interface {v4}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->hideKeyboardAndResetSearchView()V

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->resetWorkModeSwitchLocation()V

    :cond_84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-lez v0, :cond_99

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_99

    return v3

    :cond_99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_b9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_a7

    goto :goto_b9

    :cond_a7
    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_b8

    const-string/jumbo p0, "popup is not disappeared, intercept touch events"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_b8
    return v1

    :cond_b9
    :goto_b9
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->isInTopSearchViewArea(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_e2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_e2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    if-eqz p1, :cond_e2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isShowSelectedView()Z

    move-result p0

    if-eqz p0, :cond_e2

    goto :goto_e3

    :cond_e2
    move v3, v1

    :goto_e3
    return v3
.end method

.method public refreshBackgroundColor()V
    .registers 1

    return-void
.end method

.method public reset(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->refreshBackgroundColor()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz p0, :cond_13

    instance-of p1, p0, Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    if-eqz p1, :cond_13

    check-cast p0, Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;->handleUpEvent()V

    :cond_13
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLastSearchQuery(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setLastSearchQuery(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility()V

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_53

    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    instance-of v4, v3, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_25

    check-cast v3, Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    :cond_25
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v3

    if-eqz v3, :cond_53

    if-nez v2, :cond_53

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/util/ScreenUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_52

    :cond_45
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_52
    add-int/2addr v1, v2

    :cond_53
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const v3, 0x7f0700fb

    const/4 v4, 0x0

    if-eqz v2, :cond_66

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_67

    :cond_66
    move v2, v4

    :goto_67
    if-nez v2, :cond_7d

    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v5, :cond_7d

    sget-object v5, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v5}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_7d
    move v3, v4

    :goto_7e
    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_bc

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v5, v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v5, v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v5, v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    add-int v6, v1, v2

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->applyPadding()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_bc
    iget-object v1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_113

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-boolean p1, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIsNarBarShowingInNavMode:Z

    if-eqz p1, :cond_107

    sget-object p1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_f8

    iget-object p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    sub-int/2addr v2, v0

    invoke-virtual {p1, v3, v4, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_11c

    :cond_f8
    iget-object p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    sub-int/2addr v3, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v3, v4, v0, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_11c

    :cond_107
    iget-object p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2, v4, v0, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_11c

    :cond_113
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :goto_11c
    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public switchToTab(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->switchToTab(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    const-string p1, "LauncherTaskbarAllAppsContainerView"

    const-string/jumbo v1, "switch to work tab pending"

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mSwitchToWorkTabPending:Z

    :cond_14
    return-void
.end method

.method public updateGlobalColor()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateScrollerColor()V

    return-void
.end method

.method public updatePredictedApps()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isShowIndicateAppIndrawerMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroidx/core/app/a;

    invoke-direct {v1, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1c

    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->updatePredictedData(Ljava/util/List;)V

    :goto_1c
    return-void
.end method

.method public updatePredictedData(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const-string v1, "draw_app_sort_rule_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v3

    if-eqz v3, :cond_17

    iget v3, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mOldAppSortRule:I

    if-eq v0, v3, :cond_17

    :cond_16
    move v2, v1

    :cond_17
    const-string/jumbo v1, "updatePredictedData appSortRuleNeedChange: "

    const-string v3, ", appSortRule: "

    const-string v4, ", mOldAppSortRule: "

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mOldAppSortRule:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mUsingTabs: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    const-string v4, "LauncherTaskbarAllAppsContainerView"

    invoke-static {v1, v3, v4}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mOldAppSortRule:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->setPredictedApps(Ljava/util/List;Z)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p0

    const-class v0, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/appprediction/PredictionRowView;

    if-eqz p0, :cond_56

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appprediction/PredictionRowView;->setPredictedApps(Ljava/util/List;)V

    :cond_56
    return-void
.end method

.method public updateWorkTabColor()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_39

    const-string v0, "LauncherTaskbarAllAppsContainerView"

    const-string/jumbo v1, "updateWorkTabColor"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a05d9

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a05da

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v0, :cond_39

    if-nez v1, :cond_23

    goto :goto_39

    :cond_23
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f06005d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    nop

    :cond_39
    :goto_39
    return-void
.end method

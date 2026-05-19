.class public Lcom/android/launcher3/taskbar/TaskbarViewController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;
    }
.end annotation


# static fields
.field public static final ALPHA_INDEX_DIALOG_SHOWING:I = 0x5

.field public static final ALPHA_INDEX_HIDE_TASKBAR:I = 0x6

.field public static final ALPHA_INDEX_HIDE_TASKBAR_ZEN_MODE:I = 0x7

.field public static final ALPHA_INDEX_HOME:I = 0x0

.field public static final ALPHA_INDEX_KEYGUARD:I = 0x1

.field public static final ALPHA_INDEX_NOTIFICATION_EXPANDED:I = 0x4

.field public static final ALPHA_INDEX_RECENTS_DISABLED:I = 0x3

.field public static final ALPHA_INDEX_STASH:I = 0x2

.field public static final ICON_ALIGNMENT_ANIMATION_TYPE_SEAMLESS:I = 0x1

.field public static final ICON_ALIGNMENT_ANIMATION_TYPE_Y_TRANSITION:I = 0x2

.field public static final ICON_TRANSLATE_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_OP:Ljava/lang/Runnable;

.field public static final NUM_ALPHA_CHANNELS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TaskbarViewController"


# instance fields
.field public final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field public mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mCurrentIconAlignmentAnimationType:I

.field public mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public mIsHotseatIconOnTopWhenAligned:Z

.field public mLauncher:Lcom/android/launcher3/Launcher;

.field public final mModelCallbacks:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

.field public mOnControllerPreCreateCallback:Ljava/lang/Runnable;

.field public final mTaskbarAlphaForBg:Lcom/android/quickstep/AnimatedFloat;

.field public final mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field public final mTaskbarIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

.field public final mTaskbarIconTranslationYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

.field public final mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

.field public final mTaskbarIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

.field public final mTaskbarIconTranslationYForStashHandle:Lcom/android/quickstep/AnimatedFloat;

.field public mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

.field public mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

.field public final mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

.field public final mThemeIconsBackground:Lcom/android/quickstep/AnimatedFloat;

.field private mThemeIconsColor:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/android/launcher/d0;->c:Lcom/android/launcher/d0;

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->NO_OP:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarViewController$1;

    const-string/jumbo v1, "taskbarAligmentTranslateX"

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarViewController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->ICON_TRANSLATE_X:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/i1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/i1;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;I)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/p0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/p0;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStashHandle:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/model/c1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/folder/t;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/t;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarAlphaForBg:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/i1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/i1;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;I)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemeIconsBackground:Lcom/android/quickstep/AnimatedFloat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->NO_OP:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    const/16 v1, 0x8

    invoke-direct {v0, p2, v1}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    check-cast p2, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/OplusTaskbarView;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateIconsBackground()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarViewController;IILandroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarViewController;->lambda$createIconAlignmentController$1(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateScale()V

    return-void
.end method

.method public static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarViewController;->lambda$static$0()V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateBgAlpha()V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->lambda$createIconAlignmentController$2(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void
.end method

.method private synthetic lambda$createIconAlignmentController$1(IILandroid/animation/ValueAnimator;)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_c

    goto :goto_d

    :cond_c
    move p1, p2

    :goto_d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowHeight(I)V

    return-void
.end method

.method private static synthetic lambda$createIconAlignmentController$2(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    return-void
.end method

.method private static synthetic lambda$static$0()V
    .registers 0

    return-void
.end method

.method private updateBgAlpha()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    check-cast v0, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarAlphaForBg:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->setBgAlpha(I)V

    return-void
.end method

.method private updateIconsBackground()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemeIconsColor:I

    iget v2, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mThemeIconsBackground:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemeIconsBackground:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v1, v2, p0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarView;->setThemedIconsBackgroundColor(I)V

    return-void
.end method

.method private updateScale()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public addOneTimePreDrawListener(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-static {p0, p1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    return-void
.end method

.method public areIconsVisible()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->areIconsVisible()Z

    move-result p0

    return p0
.end method

.method public createIconAlignmentController(Lcom/android/launcher3/DeviceProfile;Ljava/lang/Float;Ljava/lang/Float;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    new-instance v2, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v3, 0x64

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v9

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v10

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v3, v3

    iget v4, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v4, v4

    div-float v11, v3, v4

    iget v12, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-static {v3, v12, v4}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result v13

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isIconAlignedWithHotseat()Z

    move-result v14

    iget-boolean v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    if-eqz v3, :cond_43

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_45

    :cond_43
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    :goto_45
    move-object v15, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v1

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarNavBtnOffsetY()I

    move-result v3

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    sget-object v5, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {v2, v4, v5, v6, v15}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

    int-to-float v3, v3

    invoke-virtual {v2, v4, v5, v3, v15}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_74

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemeIconsBackground:Lcom/android/quickstep/AnimatedFloat;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    :cond_74
    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDefaultTaskbarWindowHeight()I

    move-result v3

    iget v4, v9, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v4, Lcom/android/launcher3/taskbar/h0;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/launcher3/taskbar/h0;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;II)V

    invoke-virtual {v2, v4}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v3, 0x0

    :goto_8a
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_142

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_IN_TASKBAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-eqz v5, :cond_aa

    iget-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarView;->getAllAppsButtonView()Landroid/view/View;

    move-result-object v5

    if-ne v4, v5, :cond_aa

    const/4 v5, 0x1

    goto :goto_ab

    :cond_aa
    const/4 v5, 0x0

    :goto_ab
    iget-boolean v6, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    const/4 v7, 0x0

    if-nez v6, :cond_bf

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v8, 0x3f4ccccd  # 0.8f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v6, v8, v1}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v2, v4, v7, v1}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    goto :goto_e4

    :cond_bf
    if-eqz v5, :cond_e4

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_BUTTON_IN_HOTSEAT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_e4

    if-eqz v14, :cond_d5

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v6, 0x3e2e147b  # 0.17f

    invoke-static {v1, v7, v6}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    goto :goto_e1

    :cond_d5
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v6, 0x3f3851ec  # 0.72f

    const v8, 0x3f570a3d  # 0.84f

    invoke-static {v1, v6, v8}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    :goto_e1
    invoke-virtual {v2, v4, v7, v1}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    :cond_e4
    :goto_e4
    if-eqz v5, :cond_f5

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_f2

    const/4 v1, -0x1

    goto :goto_105

    :cond_f2
    iget v1, v9, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    goto :goto_105

    :cond_f5
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_128

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :goto_105
    iget v5, v10, Landroid/graphics/Rect;->left:I

    add-int v6, v13, v12

    mul-int/2addr v6, v1

    add-int/2addr v6, v5

    int-to-float v1, v6

    int-to-float v5, v13

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v7, v1

    int-to-float v1, v7

    div-float/2addr v1, v6

    sget-object v6, Lcom/android/launcher3/taskbar/TaskbarViewController;->ICON_TRANSLATE_X:Landroid/util/FloatProperty;

    sub-float/2addr v5, v1

    invoke-virtual {v2, v4, v6, v5, v15}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v2, v4, v1, v11, v15}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    goto :goto_13e

    :cond_128
    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarViewController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported view found in createIconAlignmentController, v="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8a

    :cond_142
    invoke-virtual {v2}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/t;

    invoke-direct {v2, v1}, Lcom/android/launcher3/folder/t;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    iput-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    return-object v1
.end method

.method public createIconTranslationYController()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "TaskbarViewController:"

    invoke-static {p1, v0, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAllAppsButtonView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getAllAppsButtonView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconAlignmentAnimationType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mCurrentIconAlignmentAnimationType:I

    return p0
.end method

.method public getFirstIconMatch(Ljava/util/function/Predicate;)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/function/Predicate;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarView;->getFirstMatch([Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getIconLayoutBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconLayoutBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getIconViews()[Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconViews()[Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object p0
.end method

.method public getTaskbarIconScaleForStash()Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public getTaskbarIconTranslationYForStash()Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public getTaskbarIconTranslationYForStashHandle()Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStashHandle:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarView;->init(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemeIconsColor:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherModel;->addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    :cond_50
    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonTranslationY()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonTranslationYForInAppDisplay()Lcom/android/quickstep/AnimatedFloat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p1}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy;->getNavButtonsSwitchDirect(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_6b

    move p1, v0

    goto :goto_6c

    :cond_6b
    move p1, v1

    :goto_6c
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    check-cast v3, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    if-eqz v2, :cond_82

    move v1, p1

    goto :goto_85

    :cond_82
    if-nez p1, :cond_85

    move v1, v0

    :cond_85
    :goto_85
    invoke-virtual {v3, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->setNavButtonsShowAtRight(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    check-cast p1, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->setShowNavButtons(Z)V

    return-void
.end method

.method public isEventOverAnyItem(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->isEventOverAnyItem(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public isOplusHotseatIconOnTopWhenAligned()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public onConfigurationChanged(I)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public onRotationChanged(Lcom/android/launcher3/DeviceProfile;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isTaskbarWindowUseSpecHeight()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarWindowSpecHeight(Landroid/content/res/Resources;)I

    move-result v0

    :cond_21
    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarViewController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onRotationChanged windowHeight: "

    const-string v3, ", dp height: "

    invoke-static {v2, v0, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v2, p1, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowHeight(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarNavBtnOffsetY()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method public setClickAndLongClickListenersForIcon(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    return-void
.end method

.method public setImeIsVisible(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->setTouchesEnabled(Z)V

    return-void
.end method

.method public setLauncherIconAlignment(FLcom/android/launcher3/DeviceProfile;ZLjava/lang/Float;Ljava/lang/Float;)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->isOplusHotseatIconOnTopWhenAligned()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    if-eq v1, v0, :cond_2a

    :cond_c
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    if-eqz p3, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->createIconTranslationYController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mCurrentIconAlignmentAnimationType:I

    goto :goto_23

    :cond_1a
    invoke-virtual {p0, p2, p4, p5}, Lcom/android/launcher3/taskbar/TaskbarViewController;->createIconAlignmentController(Lcom/android/launcher3/DeviceProfile;Ljava/lang/Float;Ljava/lang/Float;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mCurrentIconAlignmentAnimationType:I

    :goto_23
    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_2a
    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz p2, :cond_31

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_31
    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-lez p2, :cond_3c

    const/high16 p2, 0x3f800000  # 1.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_49

    :cond_3c
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_43
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mCurrentIconAlignmentAnimationType:I

    :cond_49
    return-void
.end method

.method public setRecentsButtonDisabled(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    if-eqz p1, :cond_b

    const/4 v1, 0x0

    goto :goto_d

    :cond_b
    const/high16 v1, 0x3f800000  # 1.0f

    :goto_d
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->updateAndApplyState(IZ)V

    return-void
.end method

.method public updateTranslationY()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStashHandle:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    add-float/2addr v1, v2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    add-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

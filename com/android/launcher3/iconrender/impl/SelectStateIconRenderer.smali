.class public Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;
.super Lcom/android/launcher3/iconrender/AbstractIconRenderer;
.source ""

# interfaces
.implements Lcom/android/launcher3/iconrender/impl/ISelectableIcon;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/iconrender/AbstractIconRenderer<",
        "Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;",
        ">;",
        "Lcom/android/launcher3/iconrender/impl/ISelectableIcon;"
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field public static final PRIORITY:I = 0x7fffffff

.field private static final SELECT_ICON_MAX_SCALE:F = 1.0f

.field private static final SELECT_ICON_NORMAL_SCALE:F = 1.0f

.field private static final SELECT_MARK_SCALE_DOWN_DURATION:I = 0x93

.field private static final SELECT_MARK_SCALE_UP_DURATION:I = 0x21

.field private static final TAG:Ljava/lang/String; = "SelectStateIconRenderer"


# instance fields
.field private final mDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

.field public mHostView:Lcom/android/launcher3/BubbleTextView;

.field private mOplusBubbleTextView:Lcom/android/launcher3/OplusBubbleTextView;

.field private mSelectAnimator:Landroid/animation/ValueAnimator;

.field private mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/AbstractIconRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    const-class v0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-virtual {p2, v0, p0}, Lcom/android/launcher3/iconrender/RenderManager;->registerExport(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    instance-of v0, p2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_17

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    iput-object v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mOplusBubbleTextView:Lcom/android/launcher3/OplusBubbleTextView;

    :cond_17
    new-instance v0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    invoke-direct {v0, p2}, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    instance-of p2, p1, Lcom/android/launcher3/views/ActivityContext;

    if-eqz p2, :cond_34

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    :cond_34
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;FLandroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->lambda$setSelectedWithAnim$1(Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;)Lcom/android/launcher3/OplusBubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mOplusBubbleTextView:Lcom/android/launcher3/OplusBubbleTextView;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSelectAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;)Lcom/android/launcher3/iconrender/RenderManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;ZLcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->lambda$applySelectedState$0(ZLcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;Landroid/animation/ArgbEvaluator;IILandroid/animation/ValueAnimator;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->lambda$setSelectedWithAnim$2(Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;Landroid/animation/ArgbEvaluator;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$applySelectedState$0(ZLcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_10

    move v1, p3

    goto :goto_12

    :cond_10
    sub-float v1, v0, p3

    :goto_12
    const/high16 v2, 0x437f0000  # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    sub-float p3, v0, p3

    :goto_1b
    iget p1, p2, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    if-ne v1, p1, :cond_28

    iget p1, p2, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_26

    goto :goto_28

    :cond_26
    const/4 p1, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p1, 0x1

    :goto_29
    iput v1, p2, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    iput p3, p2, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    if-eqz p1, :cond_34

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    :cond_34
    return-void
.end method

.method private synthetic lambda$setSelectedWithAnim$1(Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;FLandroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float v1, v0, p3

    mul-float/2addr v1, p2

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    iput p3, p1, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    return-void
.end method

.method private synthetic lambda$setSelectedWithAnim$2(Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;Landroid/animation/ArgbEvaluator;IILandroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p5, p3, p4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->color:I

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float p3, p2, p5

    mul-float/2addr p3, p2

    mul-float/2addr p5, p2

    add-float/2addr p5, p3

    iput p5, p1, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    return-void
.end method

.method public static updateStaticResources(Landroid/content/Context;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p3, :cond_64

    if-nez p2, :cond_6

    goto :goto_64

    :cond_6
    const/4 p1, 0x0

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    :cond_13
    if-eqz p1, :cond_23

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_23

    const-string p1, "SelectStateIconRenderer"

    const-string p2, "The docker area application icon does not require a check box to be drawn."

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_23
    if-eqz p1, :cond_34

    invoke-static {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result p1

    if-nez p1, :cond_34

    return p0

    :cond_34
    sget-object p1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    const/4 v0, 0x1

    if-eqz p1, :cond_51

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_4f

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_51

    :cond_4f
    move p1, v0

    goto :goto_52

    :cond_51
    move p1, p0

    :goto_52
    if-nez p1, :cond_58

    iget p1, p3, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    if-lez p1, :cond_64

    :cond_58
    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_64

    iget-object p0, p3, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    return v0

    :cond_64
    :goto_64
    return p0
.end method

.method public bridge synthetic acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Ljava/lang/Object;)Z
    .registers 4

    check-cast p3, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;)Z

    move-result p0

    return p0
.end method

.method public applySelectedState(ZIZ)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    move v6, v0

    goto :goto_13

    :cond_12
    move v6, v1

    :goto_13
    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->getParams()Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    move-result-object v8

    iget-object v2, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v2}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_29

    iput v6, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    int-to-float p0, p1

    iput p0, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    return-void

    :cond_29
    iget-object v2, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSelectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_36

    iget-boolean v3, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->isFadeAnimating:Z

    if-eqz v3, :cond_36

    iget-boolean v3, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->lastFadeState:Z

    if-ne v3, p1, :cond_36

    return-void

    :cond_36
    iput-boolean p1, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->lastFadeState:Z

    const/4 v9, 0x1

    if-eqz v2, :cond_54

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x437f0000  # 255.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    iput v2, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    iget-object v2, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSelectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    move v2, v9

    goto :goto_55

    :cond_54
    move v2, v1

    :goto_55
    iget v3, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    if-ne v3, v6, :cond_71

    iget v3, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    int-to-float v4, p1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_71

    if-nez v2, :cond_71

    invoke-static {}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isPopupDismissed()Z

    move-result v3

    if-nez v3, :cond_71

    const-string p0, "SelectStateIconRenderer"

    const-string/jumbo p1, "remain select state when long press!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_71
    iget v3, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    if-ne v3, v6, :cond_8d

    iget v3, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    int-to-float v4, p1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8d

    if-nez v2, :cond_8d

    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mOplusBubbleTextView:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p2, :cond_87

    iget-object p2, p2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p2, p1, v1}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->forceHideDot(ZZ)V

    :cond_87
    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    return-void

    :cond_8d
    if-eqz p1, :cond_98

    iget-object v2, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mOplusBubbleTextView:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v2, :cond_98

    iget-object v2, v2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v2, v9, v9}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->forceHideDot(ZZ)V

    :cond_98
    if-eqz p3, :cond_df

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_f6

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSelectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1a1

    invoke-virtual {p3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSelectAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_9:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSelectAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/iconrender/impl/e;

    invoke-direct {v1, p0, p1, v8}, Lcom/android/launcher3/iconrender/impl/e;-><init>(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;ZLcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p3, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSelectAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move-object v5, v8

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;-><init>(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;ZLcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;II)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget p1, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    if-eqz p1, :cond_d1

    if-ne p1, v0, :cond_f5

    :cond_d1
    iput-boolean v9, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->isFadeAnimating:Z

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSelectAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSelectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_f5

    :cond_df
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSelectAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mOplusBubbleTextView:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p2, :cond_eb

    iget-object p2, p2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p2, p1, v1}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->forceHideDot(ZZ)V

    :cond_eb
    iput v6, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    int-to-float p1, p1

    iput p1, v8, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    :cond_f5
    :goto_f5
    return-void

    :array_f6
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public drawSelectIconIfNecessary(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    iput-object v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3f

    return-void

    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_DOT:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v1

    goto :goto_5a

    :cond_59
    move v0, v2

    :goto_5a
    iget-object v3, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    if-nez v3, :cond_95

    iget-object v3, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    if-eqz v3, :cond_95

    iget-object v4, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    instance-of v4, v4, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v4, :cond_8d

    invoke-virtual {v3, v1}, Lcom/android/launcher/SwitchStateRenderer;->setCacheSelectIconRectFlag(Z)V

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    iget-object v3, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    invoke-virtual {v1, v3, p1, v4, v0}, Lcom/android/launcher/SwitchStateRenderer;->drawSelectIcon(Landroid/content/Context;Landroid/graphics/Canvas;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;Z)V

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    invoke-virtual {v0}, Lcom/android/launcher/SwitchStateRenderer;->getSelectIconRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setSelectedIconRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    invoke-virtual {p0, v2}, Lcom/android/launcher/SwitchStateRenderer;->setCacheSelectIconRectFlag(Z)V

    goto :goto_9c

    :cond_8d
    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    invoke-virtual {v3, v1, p1, p0, v0}, Lcom/android/launcher/SwitchStateRenderer;->drawSelectIcon(Landroid/content/Context;Landroid/graphics/Canvas;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;Z)V

    goto :goto_9c

    :cond_95
    const-string p0, "SelectStateIconRenderer"

    const-string p1, "drawSelectIconIfNecessary render is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9c
    return-void
.end method

.method public getParams()Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    return-object p0
.end method

.method public bridge synthetic getParams()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->getParams()Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    move-result-object p0

    return-object p0
.end method

.method public isStateSwitching()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->getParams()Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->stateSwitching:Z

    return p0
.end method

.method public isStateSwitchingAnimaRunning()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->isStateSwitching()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->getParams()Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->stateSwitchingAnimaRunning:Z

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public onViewSelectStateChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    iput-boolean p1, p0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->selected:Z

    return-void
.end method

.method public priority()I
    .registers 1

    const p0, 0x7fffffff

    return p0
.end method

.method public reapplySelectState()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->getParams()Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->getParams()Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->applySelectedState(ZIZ)V

    return-void
.end method

.method public renderAfterIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 6

    sget-object p2, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_DOT:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/android/common/util/RenderNodeHelper;->INSTANCE:Lcom/android/common/util/RenderNodeHelper;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v2}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/BubbleTextView;->getRenDerNode(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Landroid/graphics/RenderNode;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/common/util/RenderNodeHelper;->beginRecording(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RenderNode;)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->drawSelectIconIfNecessary(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->getRenDerNode(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Landroid/graphics/RenderNode;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/common/util/RenderNodeHelper;->endRecording(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RenderNode;)V

    goto :goto_46

    :cond_43
    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->drawSelectIconIfNecessary(Landroid/graphics/Canvas;)V

    :goto_46
    return-void
.end method

.method public renderAsBitmapCover()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public renderBeforeIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    return-void
.end method

.method public setSelectedWithAnim(Z)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-ne p1, v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->getParams()Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_8a

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-array v2, v2, [F

    fill-array-data v2, :array_92

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    sget-object v2, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x21

    invoke-virtual {v7, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/iconrender/impl/d;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/iconrender/impl/d;-><init>(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;F)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$2;

    invoke-direct {v1, p0, v0, p1, v8}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$2;-><init>(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;ZLandroid/animation/ValueAnimator;)V

    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04021c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06001d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    if-eqz p1, :cond_5b

    move v5, v2

    goto :goto_5c

    :cond_5b
    move v5, v1

    :goto_5c
    if-eqz p1, :cond_60

    move v6, v1

    goto :goto_61

    :cond_60
    move v6, v2

    :goto_61
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    sget-object p1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_6:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x93

    invoke-virtual {v8, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/android/launcher3/iconrender/impl/f;

    move-object v1, p1

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/iconrender/impl/f;-><init>(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;Landroid/animation/ArgbEvaluator;II)V

    invoke-virtual {v8, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$3;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$3;-><init>(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;)V

    invoke-virtual {v8, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->stateSwitchingAnimaRunning:Z

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_8a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_92
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public updateDotAlpha(F)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->getParams()Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    if-nez v1, :cond_10

    iget v1, v0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    return-void

    :cond_10
    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    sget-object v0, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_DOT:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_2b

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getRenDerNode(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Landroid/graphics/RenderNode;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/graphics/RenderNode;F)Z

    :cond_2b
    return-void
.end method

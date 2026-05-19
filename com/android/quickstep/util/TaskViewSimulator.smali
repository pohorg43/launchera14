.class public Lcom/android/quickstep/util/TaskViewSimulator;
.super Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TaskViewSimulator"


# instance fields
.field public final fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

.field private mCurveScale:F

.field private mDrawsBelowRecents:Ljava/lang/Boolean;

.field private final mInversePositionMatrix:Landroid/graphics/Matrix;

.field private mIsGridTask:Z

.field private mIsInSplitScreenMode:Z

.field private final mIsRecentsRtl:Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mMatrixTmp:Landroid/graphics/Matrix;

.field private mMinimumScale:F

.field private mOrientationStateId:I

.field private final mPivot:Landroid/graphics/PointF;

.field private mScrollValid:Z

.field private final mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

.field private mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

.field private final mTaskRect:Landroid/graphics/Rect;

.field private mTaskRectTranslationX:I

.field private mTaskRectTranslationY:I

.field private final mTempPoint:[F

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field private final mTmpCropRect:Landroid/graphics/Rect;

.field public final recentsViewPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

.field public final recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

.field public final recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

.field public final recentsViewSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

.field public final taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

.field public final taskSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempPoint:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPivot:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrixTmp:Landroid/graphics/Matrix;

    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mScrollValid:Z

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurveScale:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMinimumScale:F

    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    new-instance v1, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    sget-object v2, Lcom/android/quickstep/util/a0;->a:Lcom/android/quickstep/util/a0;

    invoke-direct {v1, p1, p2, v2, v0}, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/IntConsumer;Z)V

    iput-object v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    new-instance v0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;

    invoke-direct {v0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-virtual {p2}, Lcom/android/quickstep/BaseActivityInterface;->resetCalculateLogState()V

    invoke-virtual {p2}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p2

    instance-of v0, p2, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_9f

    check-cast p2, Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsInSplitScreenMode:Z

    :cond_9f
    iget-object p2, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getStateId()I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationStateId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsRecentsRtl:Z

    return-void
.end method

.method public static synthetic b(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->lambda$new$0(I)V

    return-void
.end method

.method private static synthetic lambda$new$0(I)V
    .registers 1

    return-void
.end method


# virtual methods
.method public addAppToOverviewAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V
    .registers 11

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    sget-object v6, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    move-object v0, p1

    move-object v2, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v5

    const/high16 p0, 0x3f800000  # 1.0f

    move-object v2, p1

    move-object v4, v6

    move v6, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public addOverviewToAppAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V
    .registers 11

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    sget-object v6, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    move-object v0, p1

    move-object v2, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result p0

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v2, p1

    move-object v4, v6

    move v6, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public apply(Lcom/android/quickstep/util/TransformParams;)V
    .registers 13

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_1a0

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_1a0

    :cond_e
    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mLayoutValid:Z

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationStateId:I

    iget-object v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getStateId()I

    move-result v1

    if-eq v0, v1, :cond_6f

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mLayoutValid:Z

    iget-object v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getStateId()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationStateId:I

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    sget-boolean v1, Lcom/android/quickstep/TaskAnimationManager;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    goto :goto_43

    :cond_39
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    :goto_43
    iget-boolean v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsRecentsRtl:Z

    xor-int/lit8 v9, v1, 0x1

    iget-object v2, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    iget-object v3, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v8

    invoke-virtual/range {v2 .. v9}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->updateThumbnailMatrix(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/launcher3/DeviceProfile;IZ)V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    :cond_6f
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_97

    :cond_91
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_97
    move v7, v0

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMinimumScale:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_a3

    move v0, v1

    :cond_a3
    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    const/high16 v6, 0x3f800000  # 1.0f

    iget-object v8, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v9, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    move v5, v0

    invoke-virtual/range {v3 .. v9}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->setProgress(FFFILcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v2, v1, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget v1, v1, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v5, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurveScale:F

    const/high16 v7, 0x40000000  # 2.0f

    div-float v8, v3, v7

    iget-object v9, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    add-float/2addr v8, v10

    div-float v7, v4, v7

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v7, v9

    invoke-virtual {v5, v6, v6, v8, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v5, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    sget-object v7, Lcom/android/launcher3/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;

    iget-object v8, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iget v8, v8, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-interface {v5, v6, v7, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v5, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iget v8, v8, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-interface {v5, v6, v7, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSecondary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v5, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    iget v8, v8, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-interface {v5, v6, v7, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v5, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPivot:Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v0, v0, v8, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v5, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iget v6, v6, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-interface {v0, v5, v7, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSecondary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v5, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iget v6, v6, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-interface {v0, v5, v7, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->translateYIfNeed()V

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-virtual {p0, v1, v1, v0, v5}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->onApplySecondaryScale(FFLandroid/graphics/Rect;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    iget v1, v2, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v5, v2, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v6

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_18f

    iget-boolean v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsInSplitScreenMode:Z

    if-eqz v0, :cond_18f

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    goto :goto_196

    :cond_18f
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    :goto_196
    if-nez p1, :cond_199

    return-void

    :cond_199
    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TransformParams;->createSurfaceParams(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :cond_1a0
    :goto_1a0
    return-void
.end method

.method public applyWindowPositionOffset(Landroid/graphics/Matrix;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mApplyWindowPositionOffset:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public applyWindowToHomeRotation(Landroid/graphics/Matrix;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->translateMatrixWhenToHome()V

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->deltaRotation(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v2, v2

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    invoke-static {v0, v2, v1, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->postDisplayRotation(IFFLandroid/graphics/Matrix;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowPositionOffset(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public checkAndUpdateDeviceProfile(Lcom/android/launcher3/OplusDeviceProfile;)V
    .registers 4

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_16

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    if-eq v1, v0, :cond_16

    const-string v0, "TaskViewSimulator"

    const-string v1, "check and update device profile"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    :cond_16
    return-void
.end method

.method public forceUseSplitScreenWindowCornerRadius()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    instance-of v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;->forceUseSplitScreenCornerRadius()V

    :cond_b
    return-void
.end method

.method public getCurrentCornerRadius()F
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v0, v0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempPoint:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    aput v0, v1, v3

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempPoint:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempPoint:[F

    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getCurrentCropRect()Landroid/graphics/RectF;
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v0, v0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getCurrentMatrix()Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getCurrentRect()Landroid/graphics/RectF;
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrixTmp:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrixTmp:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getFullScreenScale()F
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-nez v0, :cond_7

    const/high16 p0, 0x3f800000  # 1.0f

    return p0

    :cond_7
    iget-boolean v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsGridTask:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    goto :goto_24

    :cond_1b
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    :goto_24
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-eqz v0, :cond_4a

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    iget v5, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mStagePosition:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSplitTaskSwipeRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;I)V

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationX:I

    iget v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationY:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4c

    :cond_4a
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    :goto_4c
    iget v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationX:I

    iget v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    iget-object v2, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPivot:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method public getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    return-object p0
.end method

.method public getStagedSplitBounds()Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    return-object p0
.end method

.method public onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    iget-object p2, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p2

    iget-object p3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDrawsBelowRecents:Ljava/lang/Boolean;

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_24

    const p0, -0x7fffffff

    goto :goto_2d

    :cond_24
    sget-boolean p0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p0, :cond_2c

    const p0, 0x7fffffff

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setLayer(I)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_30
    return-void
.end method

.method public setDp(Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    iput-object p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mLayoutValid:Z

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public setDrawsBelowRecents(Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDrawsBelowRecents:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsGridTask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsGridTask:Z

    return-void
.end method

.method public setMinimumScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMinimumScale:F

    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 2
    .param p1  # Lcom/android/quickstep/util/RecentsOrientedState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mLayoutValid:Z

    return-void
.end method

.method public setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 6

    if-nez p1, :cond_b

    const-string p0, "TaskViewSimulator"

    const-string/jumbo p1, "runningTarget is null."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_4f

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_4f

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v0, :cond_4f

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v2, :cond_3d

    if-ge v3, v0, :cond_3d

    sub-int v3, v0, v3

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4f

    :cond_3d
    if-gez v2, :cond_4f

    div-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_4f

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_4f
    :goto_4f
    iget-object v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startScreenSpaceBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreviewBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    iput-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-nez p2, :cond_b

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mStagePosition:I

    return-void

    :cond_b
    iget-object p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    iget-object p2, p2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mStagePosition:I

    iget-object p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getExt()Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    iget-boolean p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    invoke-interface {p1, p0}, Lcom/android/quickstep/views/IPreviewPositionHelperExt;->setIsTopBottomSplitScreenTask(Z)V

    return-void
.end method

.method public setPreviewBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v0, 0x1

    iput v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    iget-object p2, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mLayoutValid:Z

    return-void
.end method

.method public setScroll(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    iput p1, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    return-void
.end method

.method public setTaskRectTranslation(II)V
    .registers 3

    iput p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationX:I

    iput p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationY:I

    return-void
.end method

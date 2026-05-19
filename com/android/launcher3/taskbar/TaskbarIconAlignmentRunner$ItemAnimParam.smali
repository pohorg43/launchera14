.class public final Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemAnimParam"
.end annotation


# instance fields
.field private dividerScaleXForDock:F

.field private dividerScaleXForTaskbar:F

.field private dividerScaleYForDock:F

.field private dividerScaleYForTaskbar:F

.field private dockCellX:I

.field private dockIconView:Landroid/view/View;

.field private dockItemPosition:Landroid/graphics/RectF;

.field private endValue:Ljava/lang/Float;

.field private isBgView:Z

.field private isBgViewDrawn:Z

.field private isDivider:Z

.field private startValue:Ljava/lang/Float;

.field private taskbarIconPosition:Landroid/graphics/RectF;

.field private taskbarIconView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockItemPosition:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconPosition:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleXForTaskbar:F

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleXForDock:F

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleYForTaskbar:F

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleYForDock:F

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockCellX:I

    return-void
.end method

.method private final setDotAlphaIfNeeded(FLandroid/view/View;Landroid/view/View;)V
    .registers 13

    instance-of v0, p2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_6b

    instance-of v0, p3, Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v0, :cond_9

    goto :goto_6b

    :cond_9
    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p2, p2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p2}, Lcom/android/launcher3/IBubbleTextViewExt;->hasAvailableNumberDot()Z

    move-result p2

    if-eqz p2, :cond_6b

    check-cast p3, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p2, p3, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p2}, Lcom/android/launcher3/IBubbleTextViewExt;->hasAvailableNumberDot()Z

    move-result p2

    if-nez p2, :cond_1e

    goto :goto_6b

    :cond_1e
    const p2, 0x3d4ccccd  # 0.05f

    cmpl-float p2, p1, p2

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    if-lez p2, :cond_2a

    move p2, v1

    goto :goto_3c

    :cond_2a
    const/4 v3, 0x0

    const v4, 0x3dcccccd  # 0.1f

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p2

    invoke-static {p2, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p2

    :goto_3c
    const v2, 0x3f666666  # 0.9f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_44

    goto :goto_57

    :cond_44
    const v4, 0x3f5c28f6  # 0.86f

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v3, p1

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    :goto_57
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockIconView:Landroid/view/View;

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.OplusBubbleTextView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyDotAlpha(F)V

    iget-object p0, p3, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2}, Lcom/android/launcher3/IBubbleTextViewExt;->applyDotAlpha(F)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method private final shouldHideHotseatBackground(FLandroid/view/View;ZZZ)Z
    .registers 8

    const/4 p0, 0x0

    cmpl-float p1, p1, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1b

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p0

    if-eqz p0, :cond_1b

    move p0, v0

    goto :goto_1c

    :cond_1b
    move p0, v1

    :goto_1c
    if-eqz p0, :cond_25

    if-nez p3, :cond_22

    if-nez p4, :cond_25

    :cond_22
    if-nez p5, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0
.end method


# virtual methods
.method public final addViewToDragLayer(Lcom/android/launcher3/Launcher;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->isBgView:Z

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockItemPosition:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockItemPosition:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_40
    return-void
.end method

.method public final getDividerScaleXForDock()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleXForDock:F

    return p0
.end method

.method public final getDividerScaleXForTaskbar()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleXForTaskbar:F

    return p0
.end method

.method public final getDividerScaleYForDock()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleYForDock:F

    return p0
.end method

.method public final getDividerScaleYForTaskbar()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleYForTaskbar:F

    return p0
.end method

.method public final getDockCellX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockCellX:I

    return p0
.end method

.method public final getDockIconView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockIconView:Landroid/view/View;

    return-object p0
.end method

.method public final getDockItemPosition()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockItemPosition:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getEndValue()Ljava/lang/Float;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->endValue:Ljava/lang/Float;

    return-object p0
.end method

.method public final getStartValue()Ljava/lang/Float;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->startValue:Ljava/lang/Float;

    return-object p0
.end method

.method public final getTaskbarIconPosition()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconPosition:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getTaskbarIconView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    return-object p0
.end method

.method public final isBgView()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->isBgView:Z

    return p0
.end method

.method public final isBgViewDrawn()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->isBgViewDrawn:Z

    return p0
.end method

.method public final isDivider()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->isDivider:Z

    return p0
.end method

.method public final onAnimUpdate(FILcom/android/launcher3/OplusHotseat;)V
    .registers 20

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v0, "hotseat"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockItemPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {v7, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v9

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockItemPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v7, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v10

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockItemPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v7, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v11

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockItemPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v7, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v12

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->endValue:Ljava/lang/Float;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5e

    move v15, v13

    goto :goto_5f

    :cond_5e
    move v15, v14

    :goto_5f
    iget-boolean v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->isBgView:Z

    const/high16 v5, 0x3f800000  # 1.0f

    if-eqz v0, :cond_100

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarStashed()Z

    move-result v13

    iget-object v2, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    iget-boolean v3, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->isBgViewDrawn:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v4, v15

    move v15, v5

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->shouldHideHotseatBackground(FLandroid/view/View;ZZZ)Z

    move-result v0

    const-string v1, ",endValue:"

    const-string v2, "TaskbarIconAlignmentRunner"

    if-eqz v0, :cond_a6

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAnimUpdate hotseat.setBackgroundVisible(false) progress:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->endValue:Ljava/lang/Float;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Lcom/android/launcher3/OplusHotseat;->setBackgroundVisible(Z)V

    :cond_a6
    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v0, :cond_b4

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_b5

    :cond_b4
    move-object v0, v3

    :goto_b5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_df

    if-eqz v13, :cond_df

    const-string/jumbo v0, "onAnimUpdate set taskbar bg alpha=0, reason:taskbar stashed. Progress:"

    invoke-static {v0, v7, v1}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->endValue:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    if-nez v0, :cond_db

    goto :goto_df

    :cond_db
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_df
    :goto_df
    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/taskbar/TaskbarAnimBgView;

    if-eqz v1, :cond_e8

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/taskbar/TaskbarAnimBgView;

    :cond_e8
    if-eqz v3, :cond_ef

    float-to-int v0, v11

    float-to-int v1, v12

    invoke-virtual {v3, v0, v1, v7}, Lcom/android/launcher3/taskbar/TaskbarAnimBgView;->setDrawableParams(IIF)V

    :cond_ef
    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    if-eqz v0, :cond_ff

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v11, v1

    sub-float/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/view/View;->setX(F)V

    div-float/2addr v12, v1

    sub-float/2addr v10, v12

    invoke-virtual {v0, v10}, Landroid/view/View;->setY(F)V

    :cond_ff
    return-void

    :cond_100
    move v12, v5

    iget-boolean v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->isDivider:Z

    if-eqz v0, :cond_132

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    if-eqz v0, :cond_11b

    iget v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleXForTaskbar:F

    invoke-static {v7, v12, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleYForTaskbar:F

    invoke-static {v7, v12, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_11b
    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockIconView:Landroid/view/View;

    if-eqz v0, :cond_169

    iget v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleXForDock:F

    invoke-static {v7, v1, v12}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleYForDock:F

    invoke-static {v7, v1, v12}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_169

    :cond_132
    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_13f

    move v1, v13

    goto :goto_140

    :cond_13f
    move v1, v14

    :goto_140
    if-nez v1, :cond_14e

    div-float v0, v11, v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    if-eqz v1, :cond_14e

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_14e
    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockItemPosition:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_15b

    move v1, v13

    goto :goto_15c

    :cond_15b
    move v1, v14

    :goto_15c
    if-nez v1, :cond_169

    div-float/2addr v11, v0

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockIconView:Landroid/view/View;

    if-eqz v0, :cond_169

    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleY(F)V

    :cond_169
    :goto_169
    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    if-eqz v0, :cond_183

    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float v1, v9, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v1, v10, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_183
    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockIconView:Landroid/view/View;

    if-eqz v0, :cond_19b

    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockItemPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v9, v1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockItemPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v10, v1

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_19b
    const v0, 0x3f333333  # 0.7f

    cmpg-float v0, v7, v0

    if-gez v0, :cond_1a4

    move v5, v12

    goto :goto_1c3

    :cond_1a4
    const v0, 0x3f5c28f6  # 0.86f

    cmpl-float v0, v7, v0

    if-lez v0, :cond_1ad

    const/4 v5, 0x0

    goto :goto_1c3

    :cond_1ad
    const v1, 0x3f333333  # 0.7f

    const v2, 0x3f5c28f6  # 0.86f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v12}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v5

    :goto_1c3
    if-eqz v15, :cond_1c8

    sub-float v0, v12, v5

    goto :goto_1c9

    :cond_1c8
    move v0, v12

    :goto_1c9
    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    if-nez v1, :cond_1ce

    goto :goto_1d1

    :cond_1ce
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    :goto_1d1
    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockIconView:Landroid/view/View;

    if-nez v1, :cond_1d6

    goto :goto_1d9

    :cond_1d6
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_1d9
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1f5

    const/4 v1, 0x0

    cmpg-float v2, v7, v1

    if-nez v2, :cond_1e6

    move v2, v13

    goto :goto_1e7

    :cond_1e6
    move v2, v14

    :goto_1e7
    if-eqz v2, :cond_1f6

    iget-object v2, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->startValue:Ljava/lang/Float;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v2

    if-eqz v2, :cond_1f6

    invoke-virtual {v8, v14}, Lcom/android/launcher3/OplusHotseat;->setVisibleForTaskbarIconAlign(Z)V

    goto :goto_201

    :cond_1f5
    const/4 v1, 0x0

    :cond_1f6
    cmpl-float v0, v0, v1

    if-lez v0, :cond_1fe

    invoke-virtual {v8, v13}, Lcom/android/launcher3/OplusHotseat;->setVisibleForTaskbarIconAlign(Z)V

    goto :goto_201

    :cond_1fe
    invoke-virtual {v8, v14}, Lcom/android/launcher3/OplusHotseat;->setVisibleForTaskbarIconAlign(Z)V

    :goto_201
    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockIconView:Landroid/view/View;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    invoke-direct {v6, v7, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setDotAlphaIfNeeded(FLandroid/view/View;Landroid/view/View;)V

    iget v0, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockCellX:I

    move/from16 v1, p2

    if-ne v0, v1, :cond_229

    const/4 v1, 0x0

    const v2, 0x3ecccccd  # 0.4f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-static {v0, v1, v12}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    if-nez v1, :cond_226

    goto :goto_229

    :cond_226
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_229
    :goto_229
    return-void
.end method

.method public final resetViewState(Lcom/android/launcher3/Launcher;)V
    .registers 5

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->isBgView:Z

    if-eqz v0, :cond_23

    const-string v0, "TaskbarIconAlignmentRunner"

    const-string/jumbo v1, "resetViewState hotseat.setBackgroundVisible(true)"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setBackgroundVisible(Z)V

    goto :goto_72

    :cond_23
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_4c

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    instance-of v2, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v2, :cond_4c

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v2, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v2}, Lcom/android/launcher3/IBubbleTextViewExt;->hasAvailableNumberDot()Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object p1, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyDotAlpha(F)V

    :cond_4c
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockIconView:Landroid/view/View;

    if-eqz p0, :cond_72

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    instance-of p1, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_72

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/IBubbleTextViewExt;->hasAvailableNumberDot()Z

    move-result p1

    if-eqz p1, :cond_72

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyDotAlpha(F)V

    :cond_72
    :goto_72
    return-void
.end method

.method public final setBgView(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->isBgView:Z

    return-void
.end method

.method public final setBgViewDrawn(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->isBgViewDrawn:Z

    return-void
.end method

.method public final setDivider(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->isDivider:Z

    return-void
.end method

.method public final setDividerScaleXForDock(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleXForDock:F

    return-void
.end method

.method public final setDividerScaleXForTaskbar(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleXForTaskbar:F

    return-void
.end method

.method public final setDividerScaleYForDock(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleYForDock:F

    return-void
.end method

.method public final setDividerScaleYForTaskbar(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dividerScaleYForTaskbar:F

    return-void
.end method

.method public final setDockCellX(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockCellX:I

    return-void
.end method

.method public final setDockIconView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockIconView:Landroid/view/View;

    return-void
.end method

.method public final setDockItemPosition(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->dockItemPosition:Landroid/graphics/RectF;

    return-void
.end method

.method public final setEndValue(Ljava/lang/Float;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->endValue:Ljava/lang/Float;

    return-void
.end method

.method public final setStartValue(Ljava/lang/Float;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->startValue:Ljava/lang/Float;

    return-void
.end method

.method public final setTaskbarIconPosition(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconPosition:Landroid/graphics/RectF;

    return-void
.end method

.method public final setTaskbarIconView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->taskbarIconView:Landroid/view/View;

    return-void
.end method

.class public final Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;
.super Lcom/android/launcher3/taskbar/TaskbarDragLayer;
.source ""


# instance fields
.field private mLongPressToShowTaskbarRender:Lcom/android/launcher3/taskbar/LongPressToShowTaskbarRenderer;

.field private mTaskbarBgHeight:F

.field private final mTaskbarBgHeightForHandleView$delegate:Lh4/f;

.field private final mTaskbarBgHeightForStash$delegate:Lh4/f;

.field private final mTaskbarBgHeightOffsetForHandleView:Lcom/android/quickstep/AnimatedFloat;

.field private final mTaskbarBgHeightOffsetForStash:Lcom/android/quickstep/AnimatedFloat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    invoke-direct {p1, v0}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightOffsetForStash:Lcom/android/quickstep/AnimatedFloat;

    new-instance p1, Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/taskbar/p0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/p0;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    invoke-direct {p1, v0}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightOffsetForHandleView:Lcom/android/quickstep/AnimatedFloat;

    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForStash$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForStash$2;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightForStash$delegate:Lh4/f;

    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForHandleView$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForHandleView$2;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightForHandleView$delegate:Lh4/f;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getMTaskbarBgHeightForStash()F

    move-result p1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getMTaskbarBgHeightForHandleView()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeight:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/quickstep/AnimatedFloat;

    new-instance p2, Lcom/android/launcher3/model/c1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    invoke-direct {p1, p2}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightOffsetForStash:Lcom/android/quickstep/AnimatedFloat;

    new-instance p1, Lcom/android/quickstep/AnimatedFloat;

    new-instance p2, Lcom/android/launcher3/folder/t;

    invoke-direct {p2, p0}, Lcom/android/launcher3/folder/t;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    invoke-direct {p1, p2}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightOffsetForHandleView:Lcom/android/quickstep/AnimatedFloat;

    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForStash$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForStash$2;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightForStash$delegate:Lh4/f;

    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForHandleView$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForHandleView$2;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightForHandleView$delegate:Lh4/f;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getMTaskbarBgHeightForStash()F

    move-result p1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getMTaskbarBgHeightForHandleView()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeight:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/quickstep/AnimatedFloat;

    new-instance p2, Lcom/android/launcher3/taskbar/l;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    invoke-direct {p1, p2}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightOffsetForStash:Lcom/android/quickstep/AnimatedFloat;

    new-instance p1, Lcom/android/quickstep/AnimatedFloat;

    new-instance p2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {p2, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    invoke-direct {p1, p2}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightOffsetForHandleView:Lcom/android/quickstep/AnimatedFloat;

    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForStash$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForStash$2;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightForStash$delegate:Lh4/f;

    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForHandleView$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForHandleView$2;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightForHandleView$delegate:Lh4/f;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getMTaskbarBgHeightForStash()F

    move-result p1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getMTaskbarBgHeightForHandleView()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeight:F

    return-void
.end method

.method public static final synthetic access$getMContext$p$s-781150152(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightOffsetForStash$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightOffsetForHandleView$lambda$1(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    return-void
.end method

.method private final getMTaskbarBgHeightForHandleView()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightForHandleView$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getMTaskbarBgHeightForStash()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightForStash$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final mTaskbarBgHeightOffsetForHandleView$lambda$1(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->updateBgHeight()V

    return-void
.end method

.method private static final mTaskbarBgHeightOffsetForStash$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->updateBgHeight()V

    return-void
.end method

.method private final updateBgHeight()V
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getMTaskbarBgHeightForStash()F

    move-result v0

    const/4 v1, 0x1

    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightOffsetForStash:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    sub-float v3, v2, v3

    mul-float/2addr v3, v0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getMTaskbarBgHeightForHandleView()F

    move-result v0

    iget-object v4, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightOffsetForHandleView:Lcom/android/quickstep/AnimatedFloat;

    iget v4, v4, Lcom/android/quickstep/AnimatedFloat;->value:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->onTaskbarBgHeightChange(F)V

    iget v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeight:F

    cmpg-float v2, v2, v0

    if-nez v2, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-nez v1, :cond_39

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeight:F

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_39
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mLongPressToShowTaskbarRender:Lcom/android/launcher3/taskbar/LongPressToShowTaskbarRenderer;

    if-eqz p0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarRenderer;->draw(Landroid/graphics/Canvas;)V

    :cond_f
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-nez v0, :cond_55

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;

    iget-object v4, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object v4

    const-string v5, "mActivity.taskbarProfile"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;->isSmallScreenMode(Lcom/android/launcher3/taskbar/TaskbarProfile;)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_3b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_3b

    move v0, v3

    goto :goto_3c

    :cond_3b
    move v0, v2

    :goto_3c
    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setStillInTouch(Z)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->getForceUseUnstashedTouchableRegion()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_51

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_58

    :cond_51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_58

    :cond_55
    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setStillInTouch(Z)V

    :cond_58
    :goto_58
    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->isTouchFromGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setTouchFromGesture(Z)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->getLastRawPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_74

    :cond_71
    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setTouchFromGesture(Z)V

    :goto_74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_84

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->getHasDragAndDropEnable()Z

    move-result v0

    if-nez v0, :cond_84

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setForceNotStartDragAndDrop(Z)V

    :cond_84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9d

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setForceNotStartDragAndDrop(Z)V

    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    const-string v1, "mActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1, p0, v0}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->interceptDispatchTouchEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;Lcom/android/launcher3/views/ActivityContext;)Z

    move-result v0

    if-eqz v0, :cond_af

    return v3

    :cond_9d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_a9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_af

    :cond_a9
    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setHasDragAndDropEnable(Z)V

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setForceNotStartDragAndDrop(Z)V

    :cond_af
    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final getActivity()Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    const-string v0, "mActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method public getBackgroundHeight(F)F
    .registers 2

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeight:F

    return p0
.end method

.method public final getLongPressHotAreaAnim()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mLongPressToShowTaskbarRender:Lcom/android/launcher3/taskbar/LongPressToShowTaskbarRenderer;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarRenderer;->getPaint()Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;->updateHotAreaAlphaAnim()Landroid/animation/ValueAnimator;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public final getTaskbarBgHeightOffsetForHandleView()Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightOffsetForHandleView:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public final getTaskbarBgHeightOffsetForStash()Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mTaskbarBgHeightOffsetForStash:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->init(Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setForceDarkAllowed(Z)V

    new-instance p1, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarRenderer;

    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    const-string v1, "mActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-direct {p1, v0}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarRenderer;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->mLongPressToShowTaskbarRender:Lcom/android/launcher3/taskbar/LongPressToShowTaskbarRenderer;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->onDragLayerSizeChanged()V

    :cond_a
    return-void
.end method

.method public final refreshTaskbarBgColor()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarBgColorLong(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Paint;->setColor(J)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "{alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "buffer.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

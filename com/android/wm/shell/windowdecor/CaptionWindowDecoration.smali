.class public Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;
.super Lcom/android/wm/shell/windowdecor/WindowDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/wm/shell/windowdecor/WindowDecoration<",
        "Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field private mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field private mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

.field private final mHandler:Landroid/os/Handler;

.field private mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

.field private mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

.field private mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

.field private final mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .registers 9

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/windowdecor/WindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    new-instance p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-direct {p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    new-instance p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    invoke-direct {p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mHandler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-void
.end method

.method private closeDragResizeListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    return-void
.end method

.method private setupRootView()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    sget v1, Lcom/android/wm/shell/R$id;->caption:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v1, Lcom/android/wm/shell/R$id;->close_window:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/android/wm/shell/R$id;->back_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/android/wm/shell/R$id;->minimize_window:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/android/wm/shell/R$id;->maximize_window:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->closeDragResizeListener()V

    invoke-super {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->close()V

    return-void
.end method

.method public relayout(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method public relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 20

    move-object v7, p0

    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v1, :cond_a

    sget v1, Lcom/android/wm/shell/R$dimen;->freeform_decor_shadow_focused_thickness:I

    goto :goto_c

    :cond_a
    sget v1, Lcom/android/wm/shell/R$dimen;->freeform_decor_shadow_unfocused_thickness:I

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_17

    move v2, v4

    goto :goto_18

    :cond_17
    move v2, v5

    :goto_18
    if-eqz v2, :cond_20

    iget-boolean v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-eqz v2, :cond_20

    move v8, v4

    goto :goto_21

    :cond_20
    move v8, v5

    :goto_21
    iget-object v2, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    move-object v9, v2

    check-cast v9, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    iget-object v10, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    new-instance v11, Landroid/window/WindowContainerTransaction;

    invoke-direct {v11}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->reset()V

    iget-object v2, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iput-object v0, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    sget v0, Lcom/android/wm/shell/R$layout;->caption_window_decor:I

    iput v0, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    sget v0, Lcom/android/wm/shell/R$dimen;->freeform_decor_caption_height:I

    iput v0, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    iput v1, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mShadowRadiusId:I

    move/from16 v0, p4

    iput-boolean v0, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    iget-object v6, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    move-object v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v11

    move-object v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->relayout(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/View;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v11}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v0, :cond_5f

    return-void

    :cond_5f
    if-eq v9, v0, :cond_64

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->setupRootView()V

    :cond_64
    if-nez v8, :cond_6a

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->closeDragResizeListener()V

    return-void

    :cond_6a
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    if-ne v10, v0, :cond_72

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v0, :cond_8d

    :cond_72
    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->closeDragResizeListener()V

    new-instance v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    iget-object v9, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v10, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mHandler:Landroid/os/Handler;

    iget-object v11, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v12

    iget-object v13, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    iget-object v14, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V

    iput-object v0, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    :cond_8d
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/windowdecor/DragDetector;->setTouchSlop(I)V

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->freeform_resize_handle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->freeform_resize_corner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->setGeometry(IIIII)Z

    return-void
.end method

.method public setCaptionColor(I)V
    .registers 6

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez p0, :cond_7

    return-void

    :cond_7
    check-cast p0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    sget v0, Lcom/android/wm/shell/R$id;->caption:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Color;->luminance()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2a

    sget p1, Lcom/android/wm/shell/R$color;->decor_button_light_color:I

    goto :goto_2c

    :cond_2a
    sget p1, Lcom/android/wm/shell/R$color;->decor_button_dark_color:I

    :goto_2c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    sget v0, Lcom/android/wm/shell/R$id;->back_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    sget v0, Lcom/android/wm/shell/R$id;->minimize_window:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    sget v0, Lcom/android/wm/shell/R$id;->maximize_window:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    sget v0, Lcom/android/wm/shell/R$id;->close_window:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCaptionListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setDragDetector(Lcom/android/wm/shell/windowdecor/DragDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/DragDetector;->setTouchSlop(I)V

    return-void
.end method

.method public setDragPositioningCallback(Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    return-void
.end method

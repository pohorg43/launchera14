.class Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationContext"
.end annotation


# instance fields
.field public final mCurrentCropRect:Landroid/graphics/Rect;

.field public final mEndCropRect:Landroid/graphics/Rect;

.field public final mLeash:Landroid/view/SurfaceControl;

.field public mStageType:I
    .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
    .end annotation
.end field

.field public final mStartCropRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Landroid/view/SurfaceControl;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    iput-object p2, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->update()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Landroid/view/SurfaceControl;Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;-><init>(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->update()V

    return-void
.end method

.method private getLandscapeMargins(IZ)Landroid/graphics/Insets;
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    move p2, v0

    goto :goto_6

    :cond_5
    move p2, p1

    :goto_6
    iget v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    if-nez v1, :cond_11

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    invoke-static {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->access$600(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;)I

    move-result p0

    goto :goto_17

    :cond_11
    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    invoke-static {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->access$700(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;)I

    move-result p0

    :goto_17
    if-nez p0, :cond_1c

    move p0, v0

    move v0, p1

    goto :goto_1d

    :cond_1c
    move p0, p1

    :goto_1d
    invoke-static {v0, p1, p0, p2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private getPortraitMargins(IZ)Landroid/graphics/Insets;
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    invoke-static {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->access$600(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;)I

    move-result p0

    goto :goto_11

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    invoke-static {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->access$700(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;)I

    move-result p0

    :goto_11
    const/4 v0, 0x0

    if-nez p0, :cond_17

    move p0, v0

    move v0, p1

    goto :goto_1c

    :cond_17
    if-eqz p2, :cond_1b

    move p0, v0

    goto :goto_1c

    :cond_1b
    move p0, p1

    :goto_1c
    invoke-static {p1, v0, p1, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private isTaskbarExpanded()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    invoke-static {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->access$400(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;)Landroid/view/InsetsSource;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private update()V
    .registers 6

    iget v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    invoke-static {v0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->access$200(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    invoke-static {v0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->access$300(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;)Landroid/graphics/Rect;

    move-result-object v0

    :goto_11
    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->isTaskbarExpanded()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    invoke-static {v2}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->access$400(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;)Landroid/view/InsetsSource;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_2d
    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3d4ccccd  # 0.05f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    invoke-static {v3}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->access$500(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    invoke-static {v4}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->access$500(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_67

    const/4 v2, 0x1

    :cond_67
    if-eqz v2, :cond_6e

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->getLandscapeMargins(IZ)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_72

    :cond_6e
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->getPortraitMargins(IZ)Landroid/graphics/Insets;

    move-result-object v0

    :goto_72
    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-void
.end method

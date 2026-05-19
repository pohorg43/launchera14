.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;
.super Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullAnimation"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;Landroid/content/Context;I)V

    const-string p1, "show_replace_icon"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIcon:Ljava/lang/String;

    const/4 p1, 0x4

    if-eq p3, p1, :cond_25

    const/4 p1, 0x5

    if-eq p3, p1, :cond_10

    goto :goto_39

    :cond_10
    const-string p1, "replace_whole"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWhole:Ljava/lang/String;

    const-string p1, "replace_back"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBack:Ljava/lang/String;

    const-string p1, "replace_dim_for_back"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimBack:Ljava/lang/String;

    const-string p1, "replace_icon"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIcon:Ljava/lang/String;

    const-string p1, "replace_dim_for_icon"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimIcon:Ljava/lang/String;

    goto :goto_39

    :cond_25
    const-string p1, "full_whole"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWhole:Ljava/lang/String;

    const-string p1, "full_back"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBack:Ljava/lang/String;

    const-string p1, "full_dim_for_back"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimBack:Ljava/lang/String;

    const-string p1, "full_icon"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIcon:Ljava/lang/String;

    const-string p1, "full_dim_for_icon"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimIcon:Ljava/lang/String;

    :goto_39
    return-void
.end method


# virtual methods
.method public adjusInitialCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZI)V
    .registers 7

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p3, p0

    int-to-float p0, p3

    const/high16 p3, 0x3f000000  # 0.5f

    mul-float/2addr p0, p3

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p5

    sub-int/2addr p4, p5

    int-to-float p4, p4

    mul-float/2addr p4, p3

    float-to-int p3, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    add-int/2addr p4, p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p0, p3, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public adjustInitialPosition(Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public adjustTargetProperty(I)V
    .registers 10

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_16a

    const/4 v4, 0x7

    if-eq p1, v4, :cond_e2

    const/16 v5, 0x9

    if-eq p1, v5, :cond_b9

    const/16 v6, 0xd

    if-eq p1, v6, :cond_13

    goto/16 :goto_1eb

    :cond_13
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eq p1, v6, :cond_49

    if-ne p1, v5, :cond_1f

    goto :goto_49

    :cond_1f
    if-eq p1, v0, :cond_2a

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2a

    if-eq p1, v4, :cond_2a

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1eb

    :cond_2a
    invoke-virtual {p0, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->goToTopState(Z)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v1, :cond_39

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result p1

    if-eq p1, v3, :cond_45

    :cond_39
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v0, :cond_1eb

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result p1

    if-nez p1, :cond_1eb

    :cond_45
    iput v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    goto/16 :goto_1eb

    :cond_49
    :goto_49
    const-string p1, "OplusZoomToFlexibleOnFullAnimationState"

    const-string v4, "over to recover"

    invoke-static {p1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    const/high16 v4, 0x3f800000  # 1.0f

    if-ne p1, v1, :cond_8a

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$200(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    move-result-object v0

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_75

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    goto :goto_7e

    :cond_75
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    iput v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    :goto_7e
    iput v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    goto/16 :goto_1eb

    :cond_8a
    if-ne p1, v0, :cond_1eb

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$100(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    move-result-object v0

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_a4

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    goto :goto_ad

    :cond_a4
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    iput v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    :goto_ad
    iput v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    goto/16 :goto_1eb

    :cond_b9
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v1, :cond_cc

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result p1

    if-eqz p1, :cond_d8

    :cond_cc
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v0, :cond_dd

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result p1

    if-ne p1, v3, :cond_dd

    :cond_d8
    invoke-virtual {p0, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->goToTopState(Z)V

    goto/16 :goto_1eb

    :cond_dd
    invoke-virtual {p0, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->goToTopState(Z)V

    goto/16 :goto_1eb

    :cond_e2
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_124

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v1, :cond_f8

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result p1

    if-eqz p1, :cond_104

    :cond_f8
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v0, :cond_114

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result p1

    if-ne p1, v3, :cond_114

    :cond_104
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$700(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->goToTopState(Z)V

    goto/16 :goto_1eb

    :cond_114
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$600(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->goToTopState(Z)V

    goto/16 :goto_1eb

    :cond_124
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$700(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_147

    invoke-virtual {p0, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->goToTopState(Z)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v1, :cond_140

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    goto/16 :goto_1eb

    :cond_140
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    goto/16 :goto_1eb

    :cond_147
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$600(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1eb

    invoke-virtual {p0, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->goToTopState(Z)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v1, :cond_163

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    goto/16 :goto_1eb

    :cond_163
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    goto/16 :goto_1eb

    :cond_16a
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1aa

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v1, :cond_180

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result p1

    if-eqz p1, :cond_18c

    :cond_180
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v0, :cond_19b

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result p1

    if-ne p1, v3, :cond_19b

    :cond_18c
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$600(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->goToTopState(Z)V

    goto :goto_1eb

    :cond_19b
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$700(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->goToTopState(Z)V

    goto :goto_1eb

    :cond_1aa
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$700(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1cb

    invoke-virtual {p0, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->goToTopState(Z)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v1, :cond_1c5

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    goto :goto_1eb

    :cond_1c5
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    goto :goto_1eb

    :cond_1cb
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$600(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1eb

    invoke-virtual {p0, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->goToTopState(Z)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v1, :cond_1e6

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    goto :goto_1eb

    :cond_1e6
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    :cond_1eb
    :goto_1eb
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentPosition:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentPosition:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWholeAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWholeAlpha:F

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentBackAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentBackAlpha:F

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentDimBackAlpha:F

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackBlur:I

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentDimBackBlur:I

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentIconAlpha:F

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimIconAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentDimIconAlpha:F

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimIconBlur:I

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentDimIconBlur:I

    return-void
.end method

.method public goToTopState(Z)V
    .registers 6

    const/high16 v0, 0x3f400000  # 0.75f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p1, :cond_19

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    const/16 p1, 0x12c

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    goto :goto_27

    :cond_19
    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    :goto_27
    return-void
.end method

.method public initializeAnimationSource(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 16

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->initializeAnimationSource(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object v3, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIcon:Ljava/lang/String;

    const-string v5, "initializeAnimationSource"

    move v1, p4

    move v2, p4

    invoke-static/range {v0 .. v5}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object p3, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPackage:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_25

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {p3, p1}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->generateSurfacePkgNameByUserId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    :cond_25
    move-object v1, p3

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget v0, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDimColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v7, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    iget-object v9, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    move v5, p4

    move v6, p4

    invoke-static/range {v0 .. v10}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    const/4 p3, 0x4

    const/4 v1, 0x2

    if-ne p1, p3, :cond_62

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    const/high16 p4, 0x3f800000  # 1.0f

    invoke-virtual {p1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iput p4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentBackAlpha:F

    iput p4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    goto :goto_74

    :cond_62
    const/4 p3, 0x5

    if-ne p1, p3, :cond_74

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, p4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentBackAlpha:F

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    :cond_74
    :goto_74
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForIconSurface:Landroid/view/SurfaceControl;

    iget-object p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setRectInfo(Landroid/graphics/Rect;)V
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget v1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    iget p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;->intersect(IIII)Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialWindowCrop:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v4, v2, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialWindowCrop:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v4, v1, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialPosition:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRectInfo windowCrop:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

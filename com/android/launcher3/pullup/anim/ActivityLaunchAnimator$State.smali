.class public Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private bottom:I

.field private bottomCornerRadius:F

.field private left:I

.field private right:I

.field private final startBottom:I

.field private final startCenterX:F

.field private final startCenterY:F

.field private final startHeight:I

.field private final startLeft:I

.field private final startRight:I

.field private final startTop:I

.field private final startWidth:I

.field private top:I

.field private topCornerRadius:F

.field private visible:Z


# direct methods
.method public constructor <init>(IIIIFF)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->top:I

    iput p2, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->bottom:I

    iput p3, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->left:I

    iput p4, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->right:I

    iput p5, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->topCornerRadius:F

    iput p6, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->bottomCornerRadius:F

    iput p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startTop:I

    iput p2, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startBottom:I

    iput p3, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startLeft:I

    iput p4, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startRight:I

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startWidth:I

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getCenterX()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startCenterX:F

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getCenterY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startCenterY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->visible:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 18

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v7, v1

    goto :goto_8

    :cond_7
    move v7, p5

    :goto_8
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_e

    move v8, v1

    goto :goto_f

    :cond_e
    move v8, p6

    :goto_f
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;-><init>(IIIIFF)V

    return-void
.end method


# virtual methods
.method public final getBottom()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->bottom:I

    return p0
.end method

.method public getBottomChange()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->bottom:I

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startBottom:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getBottomCornerRadius()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->bottomCornerRadius:F

    return p0
.end method

.method public final getCenterX()F
    .registers 3

    iget v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method public final getCenterY()F
    .registers 3

    iget v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method public final getHeight()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->bottom:I

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getHeightRatio()F
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final getLeft()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->left:I

    return p0
.end method

.method public final getLeftChange()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->left:I

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startLeft:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getRight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->right:I

    return p0
.end method

.method public final getRightChange()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->right:I

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startRight:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getStartCenterX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startCenterX:F

    return p0
.end method

.method public final getStartCenterY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startCenterY:F

    return p0
.end method

.method public final getTop()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->top:I

    return p0
.end method

.method public getTopChange()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->top:I

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startTop:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getTopCornerRadius()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->topCornerRadius:F

    return p0
.end method

.method public final getVisible()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->visible:Z

    return p0
.end method

.method public final getWidth()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->right:I

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->left:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getWidthRatio()F
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->startWidth:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final setBottom(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->bottom:I

    return-void
.end method

.method public final setBottomCornerRadius(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->bottomCornerRadius:F

    return-void
.end method

.method public final setLeft(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->left:I

    return-void
.end method

.method public final setRight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->right:I

    return-void
.end method

.method public final setTop(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->top:I

    return-void
.end method

.method public final setTopCornerRadius(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->topCornerRadius:F

    return-void
.end method

.method public final setVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->visible:Z

    return-void
.end method

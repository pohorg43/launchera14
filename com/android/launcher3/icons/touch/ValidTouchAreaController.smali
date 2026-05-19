.class public Lcom/android/launcher3/icons/touch/ValidTouchAreaController;
.super Lcom/android/launcher3/icons/touch/AbstractIconTouchController;
.source ""


# static fields
.field private static final sTempRectValidTouchArea:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->sTempRectValidTouchArea:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;-><init>()V

    return-void
.end method

.method public static isEventInValidTouchArea(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getDisplay()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    invoke-static {v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result v0

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_f5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_f5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_f5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5c

    goto/16 :goto_f5

    :cond_5c
    if-eqz v0, :cond_6c

    sget-object v3, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->sTempRectValidTouchArea:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_76

    :cond_6c
    sget-object v3, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->sTempRectValidTouchArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v3, v4}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    :goto_76
    iget-boolean v3, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz v3, :cond_9f

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_97

    sget-object v0, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->sTempRectValidTouchArea:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_b3

    :cond_97
    sget-object v0, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->sTempRectValidTouchArea:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    goto :goto_b3

    :cond_9f
    if-nez v0, :cond_b3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v3

    add-int/2addr v3, v0

    sget-object v0, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->sTempRectValidTouchArea:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_b3
    :goto_b3
    instance-of v0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_e4

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getSelectedIconRect()Landroid/graphics/Rect;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->sTempRectValidTouchArea:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_e3

    if-eqz p0, :cond_e2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_e2

    goto :goto_e3

    :cond_e2
    move v1, v2

    :cond_e3
    :goto_e3
    return v1

    :cond_e4
    sget-object p0, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->sTempRectValidTouchArea:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_f5
    :goto_f5
    return v0
.end method


# virtual methods
.method public handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1f

    :cond_7
    invoke-static {p1, p2}, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->isEventInValidTouchArea(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_1f

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->get(Z)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->interceptBubbleTextViewSuperMethod()Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    return-object p0

    :cond_1f
    :goto_1f
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;->next(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/coui/appcompat/poplist/COUIPopupWindow;
.super Landroid/widget/PopupWindow;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field public mIsOutLineBackgroundInPopupWindow:Z

.field private mSetElevationInPopupwindow:Z

.field public mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Landroidx/appcompat/R$attr;->popupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mSetElevationInPopupwindow:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mIsOutLineBackgroundInPopupWindow:Z

    new-instance p2, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-direct {p2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->initPopupWindow(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mSetElevationInPopupwindow:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mIsOutLineBackgroundInPopupWindow:Z

    new-instance p2, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-direct {p2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->initPopupWindow(Landroid/content/Context;)V

    return-void
.end method

.method private initPopupWindow(Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lcom/support/appcompat/R$attr;->couiPopupWindowBackground:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->initPopupWindowBackground(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    sget p1, Lcom/support/appcompat/R$style;->Animation_COUI_PopupListWindow:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public addSpacingControlUtil(ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enumType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b:Ljava/util/Map;

    if-eqz p0, :cond_15

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public addSpacingControlUtil(Landroid/content/Context;ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V
    .registers 4

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->addSpacingControlUtil(ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    :cond_d
    return-void
.end method

.method public getAnchorViewSpacing(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_c2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "anchorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2e

    goto/16 :goto_c2

    :cond_2e
    iget-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v3, p1

    :goto_37
    if-eqz v3, :cond_bc

    invoke-virtual {p0, v3, p2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Z

    move-result v4

    if-eqz v4, :cond_82

    const/4 v4, 0x2

    new-array v5, v4, [I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->e(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I

    move-result p0

    sget p2, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->d:I

    if-ne p0, p2, :cond_5e

    aget p0, v4, v1

    aget p1, v5, v1

    sub-int/2addr p0, p1

    goto :goto_74

    :cond_5e
    sget p2, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->e:I

    if-ne p0, p2, :cond_73

    aget p0, v4, v1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p2, p0

    aget p0, v5, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p0

    sub-int p0, p2, p1

    goto :goto_74

    :cond_73
    move p0, v2

    :goto_74
    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_7b

    :cond_7a
    const/4 p0, 0x0

    :goto_7b
    if-eqz p0, :cond_c2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_c2

    :cond_82
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-nez v4, :cond_af

    const-class p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getToolbarViewSpacing  tempView "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_c2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_c2

    :cond_af
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.View"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    goto/16 :goto_37

    :cond_bc
    if-eqz v0, :cond_c2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_c2
    :goto_c2
    return v2
.end method

.method public getAnchorViewSpacing(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_36

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enumType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_36

    :cond_27
    iget-object p0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method public initElevationInPopupwindow()V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mSetElevationInPopupwindow:Z

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_five:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setElevation(F)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mContext:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$color;->coui_popup_outline_spot_shadow_color:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_2d
    return-void
.end method

.method public initOutlineRoundRectBackground()V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mIsOutLineBackgroundInPopupWindow:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/poplist/COUIPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/poplist/COUIPopupWindow$1;-><init>(Lcom/coui/appcompat/poplist/COUIPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_1e
    return-void
.end method

.method public initPopupWindowBackground(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$drawable;->coui_free_bottom_alert_dialog_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->initOutlineRoundRectBackground()V

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->initElevationInPopupwindow()V

    return-void
.end method

.method public setDismissTouchOutside(Z)V
    .registers 2

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    goto :goto_14

    :cond_d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :goto_14
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method public setElevationInPopupwindow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mSetElevationInPopupwindow:Z

    return-void
.end method

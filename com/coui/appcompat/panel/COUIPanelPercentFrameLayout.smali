.class public Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;
.super Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;
.source ""


# static fields
.field public static final synthetic p:I


# instance fields
.field public final k:Landroid/graphics/Rect;

.field public l:I

.field public m:F

.field public n:Z

.field public o:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->m:F

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->n:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->o:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/panel/R$styleable;->COUIPanelPercentFrameLayout:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/support/panel/R$styleable;->COUIPanelPercentFrameLayout_maxPanelHeight:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->l:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->m(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p2

    if-eqz p2, :cond_34

    goto :goto_36

    :cond_34
    const/high16 p1, 0x40000000  # 2.0f

    :goto_36
    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->m:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->l:I

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->l:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->k:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getHasAnchor()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->n:Z

    return p0
.end method

.method public getRatio()F
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->m:F

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->m(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_13

    :cond_11
    const/high16 v0, 0x40000000  # 2.0f

    :goto_13
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->m:F

    new-instance v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;-><init>(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->l:I

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->l:I

    new-instance p1, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_18
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->l:I

    if-le v0, v1, :cond_21

    if-lez v1, :cond_21

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ge v1, v0, :cond_21

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->l:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->k:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->e(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->m(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4a

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v4, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v1, v4, :cond_4a

    move v1, v2

    goto :goto_4b

    :cond_4a
    move v1, v3

    :goto_4b
    if-nez v1, :cond_50

    if-nez v0, :cond_50

    goto :goto_51

    :cond_50
    move v2, v3

    :goto_51
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->setPercentIndentEnabled(Z)V

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setHasAnchor(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->n:Z

    return-void
.end method

.method public setPreferWidth(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->o:I

    const-string p1, "setPreferWidth =："

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->o:I

    const-string v0, "COUIPanelPercentFrameLayout"

    invoke-static {p1, p0, v0}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

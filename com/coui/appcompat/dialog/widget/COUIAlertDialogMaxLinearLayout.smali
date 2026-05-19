.class public Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->f:I

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->f:I

    iput v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->g:I

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIAlertDialogMaxLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIAlertDialogMaxLinearLayout_maxWidth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->a:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIAlertDialogMaxLinearLayout_maxHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_scroll_padding_top_message:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->h:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_scroll_padding_bottom_message:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->i:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_dialog_layout_margin_vertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->j:I

    return-void
.end method


# virtual methods
.method public getMaxWidth()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->a:I

    return p0
.end method

.method public onMeasure(II)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->a:I

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v2, :cond_1e

    if-le v0, v2, :cond_1e

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    :cond_1e
    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->b:I

    if-le v1, v0, :cond_2f

    if-lez v0, :cond_2f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    :cond_2f
    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->j:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->d:I

    const/4 v2, -0x1

    if-ge v1, v0, :cond_62

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->c(Landroid/content/Context;)I

    move-result v0

    iget v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->d:I

    if-le v0, v3, :cond_62

    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->f:I

    if-eq v0, v2, :cond_8a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->d:I

    sub-int/2addr v3, v1

    add-int/2addr v3, v2

    invoke-virtual {v0}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->getMinHeight()I

    move-result v1

    if-eq v1, v3, :cond_8a

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMinHeight(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_8a

    :cond_62
    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->e:I

    if-lt v1, v0, :cond_8a

    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->g:I

    if-eq v0, v2, :cond_8a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->h:I

    if-eq v1, v2, :cond_8a

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->h:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->i:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->c:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;

    if-eqz p0, :cond_a

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;->a(IIII)V

    :cond_a
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->b:I

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->a:I

    return-void
.end method

.method public setNeedMinHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->d:I

    return-void
.end method

.method public setNeedMinHeightResetPadding(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->e:I

    return-void
.end method

.method public setNeedReMeasureLayoutId(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->f:I

    return-void
.end method

.method public setNeedSetPaddingLayoutId(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->g:I

    return-void
.end method

.method public setOnSizeChangeListener(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->c:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;

    return-void
.end method

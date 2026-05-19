.class public Lcom/coui/appcompat/button/SingleButtonWrap;
.super Lcom/coui/appcompat/state/COUIViewStateController;
.source ""

# interfaces
.implements Lcom/coui/appcompat/button/listener/OnTextChangeListener;
.implements Lcom/coui/appcompat/button/listener/OnSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/button/SingleButtonWrap$Type;
    }
.end annotation


# direct methods
.method public static d(Landroid/content/Context;F)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p3, 0x42700000  # 60.0f

    invoke-static {p1, p3}, Lcom/coui/appcompat/button/SingleButtonWrap;->d(Landroid/content/Context;F)I

    move-result p1

    if-le p2, p1, :cond_11

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIViewStateController;->c(I)V

    goto :goto_15

    :cond_11
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIViewStateController;->c(I)V

    :goto_15
    return-void
.end method

.method public b(Landroid/view/View;Ljava/lang/CharSequence;III)V
    .registers 6

    check-cast p1, Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/appcompat/R$dimen;->coui_larger_btn_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p4, 0x41c00000  # 24.0f

    invoke-static {p1, p4}, Lcom/coui/appcompat/button/SingleButtonWrap;->d(Landroid/content/Context;F)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    cmpl-float p1, p2, p1

    if-lez p1, :cond_35

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIViewStateController;->c(I)V

    goto :goto_39

    :cond_35
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIViewStateController;->c(I)V

    :goto_39
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1  # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/coui/appcompat/state/COUIViewStateController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p0, 0x0

    throw p0
.end method

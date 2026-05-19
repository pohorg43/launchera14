.class public Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchFunctionalButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton$PerformClickCallback;
    }
.end annotation


# instance fields
.field public a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton$PerformClickCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton$PerformClickCallback;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setMaxLines(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_search_function_button_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setMaxWidth(I)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method public performClick()Z
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton$PerformClickCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton$PerformClickCallback;->a()V

    :cond_7
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setPerformClickCallback(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton$PerformClickCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton$PerformClickCallback;

    return-void
.end method

.method public setPerformClicked(Z)V
    .registers 2

    return-void
.end method

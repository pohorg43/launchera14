.class public Lcom/coui/appcompat/tablayout/COUITab;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/coui/appcompat/tablayout/COUITabLayout;

.field public b:Lcom/coui/appcompat/tablayout/COUITabView;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:I

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITab;->f:I

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITab;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITab;->f:I

    if-ne v0, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a COUITabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITab;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->u(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a COUITabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(I)Lcom/coui/appcompat/tablayout/COUITab;
    .registers 5
    .param p1  # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITab;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITab;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITab;->g:Landroid/view/View;

    return-object p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a COUITabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITab;->b:Lcom/coui/appcompat/tablayout/COUITabView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabView;->a()V

    :cond_7
    return-void
.end method

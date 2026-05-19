.class Lcom/coui/appcompat/searchview/COUISearchBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->a:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->a:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    invoke-static {p1, v2, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->a(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->a:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    invoke-static {p1, v2, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->a(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->a:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->a(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    goto :goto_33

    :cond_1e
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->a:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    invoke-static {p1, v2, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->a(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->a:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    invoke-static {p1, v2, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->a(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->a:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    invoke-static {p0, p1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->a(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    :goto_33
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->a:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    goto :goto_3b

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i0:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3b

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/searchview/COUISearchBar;->d(Landroid/graphics/drawable/Drawable;ZZ)Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    iget p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-virtual {p0, p2, p1, p3}, Lcom/coui/appcompat/searchview/COUISearchBar;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    if-eqz p1, :cond_31

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_31
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/launcher/folder/recommend/a;

    invoke-direct {p2, p0}, Lcom/android/launcher/folder/recommend/a;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

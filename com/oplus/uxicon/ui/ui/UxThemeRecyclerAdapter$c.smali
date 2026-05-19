.class public Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->onBindViewHolder(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;

.field public final synthetic c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;ILcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->a:I

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->b:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$000(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.oplus.themestore.action.icon"

    invoke-static {p1, v0}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->isIntentExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->a:I

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-virtual {v1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_35

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$100(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lc/b;

    move-result-object p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$100(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lc/b;

    move-result-object p1

    invoke-interface {p1, v2}, Lc/b;->onThemeJumpType(I)V

    :cond_2b
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$000(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->startMoreIconActivity(Landroid/content/Context;)V

    return-void

    :cond_35
    iget p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->a:I

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-eq p1, v0, :cond_49

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$100(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lc/b;

    move-result-object p1

    invoke-interface {p1, v2}, Lc/b;->onSystemThemeChange(Z)V

    :cond_49
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$100(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lc/b;

    move-result-object p1

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->a:I

    invoke-interface {p1, v0}, Lc/b;->onThemeSelect(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$200(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$200(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$200(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->b()V

    :cond_6e
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$300(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    if-eqz p1, :cond_92

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$300(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->setSelected(Z)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$300(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$202(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$300(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    :cond_92
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->b:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {p1, v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$302(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$300(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->setSelected(Z)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$300(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$400(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_ca

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$400(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$000(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$color;->ux_text_black_alpha_50:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_ca
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->b:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->b:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$402(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$400(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$000(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$color;->ux_txt_black:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->a:I

    invoke-static {p1, p0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$502(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;I)I

    return-void
.end method

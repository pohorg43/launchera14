.class Lcom/coui/appcompat/edittext/COUIInputView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUIInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIInputView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIInputView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEdittextPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-virtual {v2}, Lcom/coui/appcompat/edittext/COUIInputView;->getEdittextPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-virtual {v3}, Lcom/coui/appcompat/edittext/COUIInputView;->getEdittextPaddingBottom()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUIInputView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {v2}, Lcom/coui/appcompat/edittext/COUIInputView;->a(Lcom/coui/appcompat/edittext/COUIInputView;)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v3, v3, Lcom/coui/appcompat/edittext/COUIInputView;->o:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v3

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v5, v5, Lcom/coui/appcompat/edittext/COUIInputView;->o:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEdittextPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUIInputView;->getEdittextPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v1, v1, Lcom/coui/appcompat/edittext/COUIInputView;->a:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->m(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUIInputView;->y:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7a

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUIInputView;->C:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    if-eqz v0, :cond_73

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->y:Landroid/widget/ImageButton;

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->B:I

    invoke-static {v0, v1, p0}, Lcom/coui/appcompat/uiutil/UIUtil;->m(Landroid/view/View;II)V

    goto :goto_7a

    :cond_73
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->y:Landroid/widget/ImageButton;

    invoke-static {p0, v1, v4}, Lcom/coui/appcompat/uiutil/UIUtil;->m(Landroid/view/View;II)V

    :cond_7a
    :goto_7a
    return-void
.end method

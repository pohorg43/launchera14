.class Lcom/coui/appcompat/edittext/COUIInputView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIInputView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIInputView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$3;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$3;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUIEditText;->getTextDeleteListener()Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$3;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUIEditText;->getTextDeleteListener()Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;->a()Z

    move-result p1

    if-nez p1, :cond_1f

    :cond_18
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$3;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->h()V

    :cond_1f
    return-void
.end method

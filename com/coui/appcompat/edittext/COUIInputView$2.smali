.class Lcom/coui/appcompat/edittext/COUIInputView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIInputView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIInputView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$2;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$2;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->w:Lcom/coui/appcompat/edittext/COUIInputView$OnCustomIconClickListener;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView$OnCustomIconClickListener;->onClick(Landroid/view/View;)V

    :cond_9
    return-void
.end method

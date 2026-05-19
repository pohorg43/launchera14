.class Lcom/coui/appcompat/edittext/COUIInputView$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIInputView;->c()V
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

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$6;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$6;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {p1, p2}, Lcom/coui/appcompat/edittext/COUIInputView;->b(Lcom/coui/appcompat/edittext/COUIInputView;Z)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$6;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->h(Z)V

    return-void
.end method

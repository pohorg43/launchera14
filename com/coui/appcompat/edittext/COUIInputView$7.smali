.class Lcom/coui/appcompat/edittext/COUIInputView$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIInputView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIInputView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$7;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$7;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->y:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.class Lcom/coui/appcompat/edittext/COUIInputView$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIInputView;->e()V
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

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$8;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    const/4 p1, 0x1

    if-eqz p2, :cond_18

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$8;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:I

    if-ne p2, p1, :cond_10

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2d

    :cond_10
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 p1, 0x91

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2d

    :cond_18
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$8;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:I

    if-ne p2, p1, :cond_26

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2d

    :cond_26
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 p1, 0x81

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    :goto_2d
    return-void
.end method

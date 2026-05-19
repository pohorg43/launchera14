.class public Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->judgeSaveBtnDisable(Lcom/coui/appcompat/button/COUIButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/button/COUIButton;

.field public final synthetic b:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Lcom/coui/appcompat/button/COUIButton;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$f;->b:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$f;->a:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$f;->a:Lcom/coui/appcompat/button/COUIButton;

    if-eqz p2, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_d
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$f;->b:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$700(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p0

    sget p2, Lcom/oplus/uxicon/ui/R$id;->checkbox_custom:I

    invoke-virtual {p0, p2}, Landroid/widget/EditText;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/16 p1, 0x8

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_28
    return-void
.end method

.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La2/g;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$13;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(La2/d;)V
    .registers 2

    return-void
.end method

.method public onSpringAtRest(La2/d;)V
    .registers 2

    return-void
.end method

.method public onSpringEndStateChange(La2/d;)V
    .registers 2

    return-void
.end method

.method public onSpringUpdate(La2/d;)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$13;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y:La2/d;

    if-eqz v1, :cond_21

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z:Landroid/view/View;

    if-nez v0, :cond_b

    goto :goto_21

    :cond_b
    iget-object p1, p1, La2/d;->c:La2/d$b;

    iget-wide v2, p1, La2/d$b;->a:D

    double-to-int p1, v2

    const/16 v0, 0x64

    if-lt p1, v0, :cond_19

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, La2/d;->e(D)La2/d;

    :cond_19
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$13;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_21
    :goto_21
    return-void
.end method

.class public Lcom/coui/appcompat/rippleutil/COUIPressMaskDrawable;
.super Lcom/coui/appcompat/roundRect/COUIRoundDrawable;
.source ""


# instance fields
.field public j:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/rippleutil/COUIPressMaskDrawable;->j:I

    iput p1, p0, Lcom/coui/appcompat/rippleutil/COUIPressMaskDrawable;->j:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/coui/appcompat/rippleutil/COUIPressMaskDrawable;->j:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b(F)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

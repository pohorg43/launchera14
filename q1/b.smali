.class public Lq1/b;
.super Lq1/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq1/e<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0, p1}, Lq1/e;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public setResource(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lq1/i;->view:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

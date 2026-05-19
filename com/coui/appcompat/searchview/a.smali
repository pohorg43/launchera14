.class public final synthetic Lcom/coui/appcompat/searchview/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p2, p3, p4, p5, p0}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

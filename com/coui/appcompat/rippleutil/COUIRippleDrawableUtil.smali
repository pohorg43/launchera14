.class public Lcom/coui/appcompat/rippleutil/COUIRippleDrawableUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/coui/appcompat/rippleutil/COUIPressRippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/coui/appcompat/rippleutil/COUIPressRippleDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

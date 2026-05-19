.class public Lcom/coui/appcompat/rippleutil/COUIPressRippleDrawable;
.super Landroid/graphics/drawable/RippleDrawable;
.source ""


# static fields
.field public static final a:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/coui/appcompat/rippleutil/COUIPressRippleDrawable;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_9

    sget v0, Lcom/support/appcompat/R$attr;->couiColorPressBackground:I

    goto :goto_b

    :cond_9
    sget v0, Lcom/support/appcompat/R$attr;->couiColorRipplePressBackground:I

    :goto_b
    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lcom/coui/appcompat/rippleutil/COUIPressRippleDrawable;->a:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v1, Lcom/coui/appcompat/rippleutil/COUIPressMaskDrawable;

    invoke-direct {v1, p2}, Lcom/coui/appcompat/rippleutil/COUIPressMaskDrawable;-><init>(I)V

    invoke-direct {p0, v0, v2, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->text_ripple_bg_padding_horizontal:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->text_ripple_bg_padding_vertical:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p2, p1, p2, p1}, Landroid/graphics/drawable/RippleDrawable;->setPadding(IIII)V

    return-void
.end method

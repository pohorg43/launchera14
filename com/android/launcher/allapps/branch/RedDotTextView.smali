.class public final Lcom/android/launcher/allapps/branch/RedDotTextView;
.super Landroid/widget/TextView;
.source ""


# instance fields
.field private mAlreadyAddRedDot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/launcher/allapps/branch/RedDotTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/allapps/branch/RedDotTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final setHasRedDot(Ljava/lang/String;Z)V
    .registers 12

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_72

    iget-boolean p2, p0, Lcom/android/launcher/allapps/branch/RedDotTextView;->mAlreadyAddRedDot:Z

    if-eqz p2, :cond_e

    return-void

    :cond_e
    const/16 p2, 0x20

    invoke-static {p1, p2}, Landroidx/exifinterface/media/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070414

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07067f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v2, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v1

    const/4 v6, 0x0

    add-int/2addr v1, p1

    int-to-float v7, v1

    int-to-float v8, p1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x1

    invoke-direct {v2, v5, v0, v3, v4}, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;-><init>(IILandroid/content/Context;Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v3

    invoke-virtual {v2, v0, v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p1, Landroid/text/style/ImageSpan;

    invoke-direct {p1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v5

    const/16 v2, 0x11

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v5, p0, Lcom/android/launcher/allapps/branch/RedDotTextView;->mAlreadyAddRedDot:Z

    goto :goto_77

    :cond_72
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v0, p0, Lcom/android/launcher/allapps/branch/RedDotTextView;->mAlreadyAddRedDot:Z

    :goto_77
    return-void
.end method

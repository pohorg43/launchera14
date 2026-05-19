.class public final Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage$OnButtonClickListener;
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/oplus/anim/EffectiveAnimationView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/coui/appcompat/button/COUIButton;

.field public f:Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage$OnButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->a:Landroid/content/Context;

    if-eqz p2, :cond_15

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p1

    if-eqz p1, :cond_15

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$layout;->coui_empty_status_page_label:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate.findViewById(R.id.image)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->b:Lcom/oplus/anim/EffectiveAnimationView;

    sget v0, Lcom/support/appcompat/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate.findViewById(R.id.message)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->c:Landroid/widget/TextView;

    sget v0, Lcom/support/appcompat/R$id;->second_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate.findViewById(R.id.second_message)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->d:Landroid/widget/TextView;

    sget v0, Lcom/support/appcompat/R$id;->btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate.findViewById(R.id.btn)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coui/appcompat/button/COUIButton;

    iput-object p1, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->e:Lcom/coui/appcompat/button/COUIButton;

    const-string v0, "mButton"

    const/4 v1, 0x0

    if-nez p1, :cond_69

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_69
    new-instance v2, Lcom/android/common/util/c1;

    invoke-direct {v2, p0}, Lcom/android/common/util/c1;-><init>(Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->a:Landroid/content/Context;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIEmptyStatusPage:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIEmptyStatusPage_couiEmptyStatusPageText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEmptyStatusPage_couiEmptyStatusPageSecondText:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget v2, Lcom/support/appcompat/R$styleable;->COUIEmptyStatusPage_couiEmptyStatusPageButtonText:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_9f

    iget-object v3, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->c:Landroid/widget/TextView;

    if-nez v3, :cond_9c

    const-string/jumbo v3, "mMessage"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_9c
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9f
    if-eqz p3, :cond_af

    iget-object p2, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->d:Landroid/widget/TextView;

    if-nez p2, :cond_ac

    const-string/jumbo p2, "mSecondMessage"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_ac
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_af
    if-eqz v2, :cond_bd

    iget-object p0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->e:Lcom/coui/appcompat/button/COUIButton;

    if-nez p0, :cond_b9

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_ba

    :cond_b9
    move-object v1, p0

    :goto_ba
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_bd
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final setAnimation(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->b:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez p0, :cond_a

    const-string p0, "mImage"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    return-void
.end method

.method public final setAnimation(Ljava/lang/String;)V
    .registers 3

    const-string v0, "assetName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->b:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez p0, :cond_f

    const-string p0, "mImage"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    return-void
.end method

.method public final setButtonListener(Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage$OnButtonClickListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->f:Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage$OnButtonClickListener;

    return-void
.end method

.method public final setButtonText(Ljava/lang/String;)V
    .registers 3

    const-string v0, "buttonText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->e:Lcom/coui/appcompat/button/COUIButton;

    if-nez p0, :cond_f

    const-string p0, "mButton"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setButtonVisibility(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->e:Lcom/coui/appcompat/button/COUIButton;

    if-nez p0, :cond_a

    const-string p0, "mButton"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->b:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez p0, :cond_f

    const-string p0, "mImage"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->b:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez p0, :cond_f

    const-string p0, "mImage"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setImageResoure(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->b:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez p0, :cond_a

    const-string p0, "mImage"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageResource(I)V

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->c:Landroid/widget/TextView;

    if-nez p0, :cond_10

    const-string/jumbo p0, "mMessage"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSecondMessage(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "secondMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->d:Landroid/widget/TextView;

    if-nez p0, :cond_11

    const-string/jumbo p0, "mSecondMessage"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSecondMessageVisibility(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/emptypage/COUIEmptyStatusPage;->d:Landroid/widget/TextView;

    if-nez p0, :cond_b

    const-string/jumbo p0, "mSecondMessage"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

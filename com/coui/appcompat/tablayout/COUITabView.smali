.class public Lcom/coui/appcompat/tablayout/COUITabView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public a:Lcom/coui/appcompat/tablayout/COUITab;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;

.field public h:I

.field public i:Z

.field public j:Lcom/coui/appcompat/tablayout/COUITabLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/tablayout/COUITabLayout;)V
    .registers 6
    .param p2  # Lcom/coui/appcompat/tablayout/COUITabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->h:I

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget p2, p2, Lcom/coui/appcompat/tablayout/COUITabLayout;->E:I

    if-eqz p2, :cond_23

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget p2, p2, Lcom/coui/appcompat/tablayout/COUITabLayout;->E:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_23
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabPaddingStart()I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabPaddingTop()I

    move-result p2

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabPaddingEnd()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabPaddingBottom()I

    move-result v2

    invoke-static {p0, p1, p2, v1, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    const/16 p1, 0x8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/rippleutil/COUIRippleDrawableUtil;->a(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 11

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->a:Lcom/coui/appcompat/tablayout/COUITab;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v2, v0, Lcom/coui/appcompat/tablayout/COUITab;->g:Landroid/view/View;

    goto :goto_9

    :cond_8
    move-object v2, v1

    :goto_9
    const/4 v3, -0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_58

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, p0, :cond_22

    if-eqz v5, :cond_1a

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1a
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_22
    iput-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    iget-object v5, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    const/16 v6, 0x8

    if-eqz v5, :cond_2d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2d
    iget-object v5, p0, Lcom/coui/appcompat/tablayout/COUITabView;->c:Landroid/widget/ImageView;

    if-eqz v5, :cond_39

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/coui/appcompat/tablayout/COUITabView;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_39
    const v5, 0x1020014

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/coui/appcompat/tablayout/COUITabView;->f:Landroid/widget/TextView;

    if-eqz v5, :cond_4c

    invoke-static {v5}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/tablayout/COUITabView;->h:I

    :cond_4c
    const v5, 0x1020006

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->g:Landroid/widget/ImageView;

    goto :goto_65

    :cond_58
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    if-eqz v2, :cond_61

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    :cond_61
    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->f:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->g:Landroid/widget/ImageView;

    :goto_65
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    const/4 v5, 0x1

    if-nez v2, :cond_16e

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->c:Landroid/widget/ImageView;

    if-nez v2, :cond_83

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v6, Lcom/support/bars/R$layout;->coui_tab_layout_icon:I

    invoke-virtual {v2, v6, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iput-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->c:Landroid/widget/ImageView;

    :cond_83
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    if-nez v2, :cond_e0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v6, Lcom/support/bars/R$layout;->coui_tab_layout_text:I

    invoke-virtual {v2, v6, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v7, v6, Lcom/coui/appcompat/tablayout/COUITabLayout;->R:I

    iget v8, v6, Lcom/coui/appcompat/tablayout/COUITabLayout;->S:I

    iget v9, v6, Lcom/coui/appcompat/tablayout/COUITabLayout;->T:I

    iget v6, v6, Lcom/coui/appcompat/tablayout/COUITabLayout;->U:I

    invoke-static {v2, v7, v8, v9, v6}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    invoke-static {v2}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->h:I

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_bf

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->a()Z

    move-result v6

    if-eqz v6, :cond_bf

    move v6, v5

    goto :goto_c0

    :cond_bf
    move v6, v4

    :goto_c0
    if-eqz v2, :cond_e0

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->a()I

    move-result v7

    const/16 v8, 0xc

    if-ge v7, v8, :cond_d2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_e0

    :cond_d2
    if-eqz v6, :cond_db

    const-string v6, "sans-serif-medium"

    invoke-static {v6, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    goto :goto_dd

    :cond_db
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_dd
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_e0
    :goto_e0
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v2, :cond_103

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;

    invoke-direct {v1}, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;-><init>()V

    invoke-virtual {v2}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointMode()I

    move-result v6

    iput v6, v1, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->a:I

    invoke-virtual {v2}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointNumber()I

    move-result v6

    iput v6, v1, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->b:I

    invoke-virtual {v2}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_103
    new-instance v2, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/coui/appcompat/reddot/COUIHintRedDot;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v1, :cond_130

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget v3, v1, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->a:I

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget v3, v1, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->b:I

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    iget-object v1, v1, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    :cond_130
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabTextSize()F

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v0, :cond_14d

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->a()Z

    move-result v1

    if-eqz v1, :cond_14d

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->W:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_156

    :cond_14d
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->a0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_156
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_166

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_166
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/tablayout/COUITabView;->b(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_191

    :cond_16e
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    if-nez v1, :cond_184

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/support/bars/R$layout;->coui_tab_layout_text:I

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    :cond_184
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->f:Landroid/widget/TextView;

    if-nez v1, :cond_18c

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->g:Landroid/widget/ImageView;

    if-eqz v2, :cond_191

    :cond_18c
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/tablayout/COUITabView;->b(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_191
    :goto_191
    if-eqz v0, :cond_19a

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->a()Z

    move-result v0

    if-eqz v0, :cond_19a

    move v4, v5

    :cond_19a
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/tablayout/COUITabView;->setSelected(Z)V

    return-void
.end method

.method public final b(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 12
    .param p1  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->a:Lcom/coui/appcompat/tablayout/COUITab;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v2, v0, Lcom/coui/appcompat/tablayout/COUITab;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_9

    :cond_8
    move-object v2, v1

    :goto_9
    if-eqz v0, :cond_e

    iget-object v3, v0, Lcom/coui/appcompat/tablayout/COUITab;->d:Ljava/lang/CharSequence;

    goto :goto_f

    :cond_e
    move-object v3, v1

    :goto_f
    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/coui/appcompat/tablayout/COUITab;->e:Ljava/lang/CharSequence;

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_2f

    if-eqz v2, :cond_26

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2c

    :cond_26
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2c
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz p1, :cond_77

    if-eqz v2, :cond_6e

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-boolean v8, v7, Lcom/coui/appcompat/tablayout/COUITabLayout;->c0:Z

    if-eqz v8, :cond_53

    iget-object v3, v7, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-eqz v3, :cond_65

    iput-boolean v5, v7, Lcom/coui/appcompat/tablayout/COUITabLayout;->c0:Z

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_65

    :cond_53
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v3, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    new-instance v6, Lcom/android/quickstep/util/n;

    invoke-direct {v6, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/coui/appcompat/tablayout/COUITabView;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_65
    :goto_65
    iget v3, p0, Lcom/coui/appcompat/tablayout/COUITabView;->h:I

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_74

    :cond_6e
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_74
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_77
    if-eqz p2, :cond_a0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_97

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_97

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    :cond_97
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v5, v3, :cond_a0

    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_a0
    if-eqz v2, :cond_a3

    goto :goto_a4

    :cond_a3
    move-object v1, v0

    :goto_a4
    invoke-static {p0, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    return-object p0
.end method

.method public getSelectedByClick()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->i:Z

    return p0
.end method

.method public getTab()Lcom/coui/appcompat/tablayout/COUITab;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->a:Lcom/coui/appcompat/tablayout/COUITab;

    return-object p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->Q:Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz v0, :cond_21

    iget-object v0, v0, Lcom/coui/appcompat/tablayout/COUITab;->b:Lcom/coui/appcompat/tablayout/COUITabView;

    if-eq v0, p0, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-boolean v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->h0:Z

    if-eqz v0, :cond_21

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    :cond_21
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .registers 4

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->a:Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    :cond_e
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iput-boolean v1, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->d0:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->i:Z

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->a:Lcom/coui/appcompat/tablayout/COUITab;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITab;->b()V

    iput-boolean v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->i:Z

    :cond_1c
    return v0
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_11
    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_18
    return-void
.end method

.method public setSelected(Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_23

    if-eqz p1, :cond_1c

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->W:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_23

    :cond_1c
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->j:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->a0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    :cond_2c
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_33
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_3a

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_3a
    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    if-eqz p0, :cond_41

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_41
    return-void
.end method

.method public setTab(Lcom/coui/appcompat/tablayout/COUITab;)V
    .registers 3
    .param p1  # Lcom/coui/appcompat/tablayout/COUITab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->a:Lcom/coui/appcompat/tablayout/COUITab;

    if-eq p1, v0, :cond_9

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->a:Lcom/coui/appcompat/tablayout/COUITab;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabView;->a()V

    :cond_9
    return-void
.end method

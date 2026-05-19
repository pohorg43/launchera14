.class public Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;
.super Landroidx/appcompat/view/menu/ActionMenuItemView;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_bg_padding_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_bg_padding_vertical:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_toolbar_text_menu_bg_padding_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_toolbar_text_menu_bg_padding_vertical:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_action_menu_item_view_margin_end:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_action_menu_item_min_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_action_bar_text_menu_item_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->c:I

    return-void
.end method


# virtual methods
.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_c

    move p1, p2

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->f:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->f:Z

    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->a(Landroid/widget/TextView;)V

    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->c:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_4d

    :cond_20
    const-class v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    const-string v1, "mMinWidth"

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :try_start_2a
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_35

    goto :goto_41

    :catch_35
    move-exception p2

    const-string v0, "setReflectField error: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "COUIActionMenuItemView"

    invoke-static {p2, v0, v1}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_41
    sget p2, Lcom/support/appcompat/R$drawable;->coui_toolbar_menu_bg:I

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->a:I

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->b:I

    invoke-virtual {p0, p2, v0, p2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPadding(IIII)V

    :goto_4d
    iget-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->f:Z

    if-eqz p2, :cond_53

    const/4 v0, -0x2

    goto :goto_54

    :cond_53
    const/4 v0, -0x1

    :goto_54
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez p2, :cond_64

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_64

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->d:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_64
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 1

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_33

    :cond_10
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_action_menu_item_view_margin_end:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->d:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_33

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->d:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_33
    :goto_33
    return-void
.end method

.class Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/toolbar/COUIActionMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_83

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUITheme:[I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$styleable;->COUITheme_isCOUITheme:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_22

    :cond_21
    move v2, v1

    :goto_22
    if-nez v2, :cond_56

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/support/appcompat/R$style;->Theme_COUI:I

    invoke-direct {v0, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p1, v0

    :cond_56
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    new-instance v2, Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {v2, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->m:Z

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setDismissTouchOutside(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->t:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    :cond_83
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->h:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_d8

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c()V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f(Ljava/util/List;)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-boolean v2, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->B:Z

    iput-boolean v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->N:Z

    iget-boolean p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->C:Z

    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b:Lcom/coui/appcompat/poplist/DefaultAdapter;

    instance-of v2, v0, Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-eqz v2, :cond_af

    iput-boolean p1, v0, Lcom/coui/appcompat/poplist/DefaultAdapter;->m:Z

    goto :goto_ba

    :cond_af
    sget-boolean p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->Y:Z

    if-eqz p1, :cond_ba

    const-string p1, "COUIPopupListWindow"

    const-string v0, "mDefaultAdapter is not instance of DefaultAdapter"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    :goto_ba
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    new-instance v2, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2$1;-><init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;)V

    iput-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->j:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/uiutil/UIUtil;->f(Landroid/content/Context;)I

    iput v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->p:I

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->A:Lcom/coui/appcompat/poplist/COUISubMenuClickListener;

    if-eqz v0, :cond_d8

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iput-object v0, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:Lcom/coui/appcompat/poplist/COUISubMenuClickListener;

    :cond_d8
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->u:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;)V

    return-void
.end method

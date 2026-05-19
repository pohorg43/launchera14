.class public Lcom/android/wm/shell/compatui/RestartDialogLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""

# interfaces
.implements Lcom/android/wm/shell/compatui/DialogContainerSupplier;


# instance fields
.field private mBackgroundDim:Landroid/graphics/drawable/Drawable;

.field private mDialogContainer:Landroid/view/View;

.field private mDialogTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->lambda$onFinishInflate$3(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->lambda$setDismissOnClickListener$0(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/function/Consumer;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->lambda$setRestartOnClickListener$1(Ljava/util/function/Consumer;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->lambda$onFinishInflate$2(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onFinishInflate$2(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method private static synthetic lambda$onFinishInflate$3(Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/CheckBox;->performClick()Z

    return-void
.end method

.method private static synthetic lambda$setDismissOnClickListener$0(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$setRestartOnClickListener$1(Ljava/util/function/Consumer;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBackgroundDimDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mBackgroundDim:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDialogContainerView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mDialogContainer:Landroid/view/View;

    return-object p0
.end method

.method public getDialogTitle()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mDialogTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/android/wm/shell/R$id;->letterbox_restart_dialog_checkbox_container:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$id;->letterbox_restart_dialog_checkbox:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    sget v2, Lcom/android/wm/shell/R$id;->letterbox_restart_dialog_container:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mDialogContainer:Landroid/view/View;

    sget v2, Lcom/android/wm/shell/R$id;->letterbox_restart_dialog_title:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mDialogTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mBackgroundDim:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mDialogContainer:Landroid/view/View;

    sget-object v2, Lcom/android/wm/shell/compatui/a0;->a:Lcom/android/wm/shell/compatui/a0;

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p0, Lcom/android/wm/shell/compatui/d;

    invoke-direct {p0, v1}, Lcom/android/wm/shell/compatui/d;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDismissOnClickListener(Ljava/lang/Runnable;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Lcom/android/wm/shell/compatui/e;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/compatui/e;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v0

    :goto_a
    sget v0, Lcom/android/wm/shell/R$id;->letterbox_restart_dialog_dismiss_button:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRestartOnClickListener(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/android/wm/shell/R$id;->letterbox_restart_dialog_checkbox:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_12

    :cond_c
    new-instance v1, Lcom/android/launcher3/allapps/a;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/allapps/a;-><init>(Ljava/util/function/Consumer;Landroid/widget/CheckBox;)V

    move-object p1, v1

    :goto_12
    sget v0, Lcom/android/wm/shell/R$id;->letterbox_restart_dialog_restart_button:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

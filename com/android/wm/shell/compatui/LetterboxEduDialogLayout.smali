.class Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;
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

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->lambda$setDismissOnClickListener$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->lambda$setDismissOnClickListener$0(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$setDismissOnClickListener$0(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$setDismissOnClickListener$1(Landroid/view/View;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public getBackgroundDimDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->mBackgroundDim:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDialogContainerView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->mDialogContainer:Landroid/view/View;

    return-object p0
.end method

.method public getDialogTitle()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->mDialogTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/android/wm/shell/R$id;->letterbox_education_dialog_container:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->mDialogContainer:Landroid/view/View;

    sget v0, Lcom/android/wm/shell/R$id;->letterbox_education_dialog_title:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->mDialogTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->mBackgroundDim:Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setDismissOnClickListener(Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_a

    :cond_5
    new-instance v1, Lcom/android/wm/shell/compatui/d;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/compatui/d;-><init>(Ljava/lang/Runnable;)V

    :goto_a
    sget v2, Lcom/android/wm/shell/R$id;->letterbox_education_dialog_dismiss_button:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->mDialogContainer:Landroid/view/View;

    if-nez p1, :cond_1b

    goto :goto_1d

    :cond_1b
    sget-object v0, Lcom/android/wm/shell/compatui/p;->a:Lcom/android/wm/shell/compatui/p;

    :goto_1d
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

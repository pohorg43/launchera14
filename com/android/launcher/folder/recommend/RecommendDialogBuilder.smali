.class public final Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field private mDialogButtonClickCallback:Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;

.field private messageView:Landroid/view/View;

.field private negativeText:Ljava/lang/String;

.field private positiveText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->context:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->positiveText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->negativeText:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->createDialog$lambda$2$lambda$1(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->createDialog$lambda$2$lambda$0(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final createDialog$lambda$2$lambda$0(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;Landroid/content/DialogInterface;I)V
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->mDialogButtonClickCallback:Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;->onPositiveButtonClick()V

    :cond_d
    return-void
.end method

.method private static final createDialog$lambda$2$lambda$1(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;Landroid/content/DialogInterface;I)V
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->mDialogButtonClickCallback:Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;->onNegativeButtonClick()V

    :cond_d
    return-void
.end method

.method private final getBottomAlertDialogWindowAnimStyle(Landroid/content/Context;)I
    .registers 2

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f130034

    goto :goto_d

    :cond_a
    const p0, 0x7f130033

    :goto_d
    return p0
.end method


# virtual methods
.method public final createDialog()Landroidx/appcompat/app/AlertDialog;
    .registers 6

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->positiveText:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->context:Landroid/content/Context;

    const v3, 0x7f0607bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->positiveText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x22

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->context:Landroid/content/Context;

    const v3, 0x7f13016f

    invoke-direct {v1, v2, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->messageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/16 v2, 0x50

    iput v2, v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b:I

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->f(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_58

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c()Z

    move-result v2

    if-eqz v2, :cond_58

    sget v2, Lcom/support/appcompat/R$style;->Animation_COUI_PopupListWindow:I

    goto :goto_5a

    :cond_58
    iget v2, v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c:I

    :goto_5a
    iput v2, v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c:I

    new-instance v2, Lcom/android/launcher/folder/recommend/i;

    invoke-direct {v2, p0}, Lcom/android/launcher/folder/recommend/i;-><init>(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;)V

    invoke-virtual {v1, v0, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->negativeText:Ljava/lang/String;

    new-instance v2, Lcom/android/launcher/folder/recommend/h;

    invoke-direct {v2, p0}, Lcom/android/launcher/folder/recommend/h;-><init>(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;)V

    invoke-virtual {v1, v0, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "COUIAlertDialogBuilder(\n…       create()\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070868

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final setDialogOnClickCallback(Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;
    .registers 3

    const-string v0, "dialogButtonClickCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->mDialogButtonClickCallback:Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;

    return-object p0
.end method

.method public final setMessageView(Landroid/view/View;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;
    .registers 3

    const-string/jumbo v0, "messageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->messageView:Landroid/view/View;

    return-object p0
.end method

.method public final setNegativeText(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;
    .registers 3

    const-string/jumbo v0, "negativeText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->negativeText:Ljava/lang/String;

    return-object p0
.end method

.method public final setPositiveText(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;
    .registers 3

    const-string/jumbo v0, "positiveText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->positiveText:Ljava/lang/String;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;
    .registers 3

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->title:Ljava/lang/String;

    return-object p0
.end method

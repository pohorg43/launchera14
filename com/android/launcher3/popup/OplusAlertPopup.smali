.class public final Lcom/android/launcher3/popup/OplusAlertPopup;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusAlertPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusAlertPopup.kt\ncom/android/launcher3/popup/OplusAlertPopup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,127:1\n1#2:128\n*E\n"
    }
.end annotation


# instance fields
.field private final container:Landroid/view/ViewGroup;

.field private final launcher:Lcom/android/launcher/Launcher;

.field private mBottomAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mBottomAlertDialogBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

.field private final mPopupNoBlurView:Lcom/android/launcher3/popup/PopupNoBlurView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string v1, "launcher.dragLayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->container:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/launcher3/popup/PopupNoBlurView;->Companion:Lcom/android/launcher3/popup/PopupNoBlurView$Companion;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/popup/PopupNoBlurView$Companion;->getPopNoBlurView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/launcher3/popup/PopupNoBlurView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mPopupNoBlurView:Lcom/android/launcher3/popup/PopupNoBlurView;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/popup/OplusAlertPopup;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/popup/OplusAlertPopup;->createDismissListener$lambda$6(Lcom/android/launcher3/popup/OplusAlertPopup;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final createDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .registers 3

    new-instance v0, Lcom/android/launcher/settings/j;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/settings/j;-><init>(Lcom/android/launcher3/popup/OplusAlertPopup;Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method private static final createDismissListener$lambda$6(Lcom/android/launcher3/popup/OplusAlertPopup;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusAlertPopup;->hiedPopupNoBlurView()V

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mBottomAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-interface {p1, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_10
    return-void
.end method

.method private final hiedPopupNoBlurView()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mPopupNoBlurView:Lcom/android/launcher3/popup/PopupNoBlurView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupNoBlurView;->createBlurAnim(Z)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final changeMessage(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mBottomAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method public final changeTitle(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mBottomAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method public final changesPositiveButtonState(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mBottomAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_e

    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_18

    return-void

    :cond_18
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1b
    return-void
.end method

.method public final createMultiChoiceBottomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/BaseAdapter;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 11

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "positiveButtonTitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "negativeButtonTitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseAdapter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onClickListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->launcher:Lcom/android/launcher/Launcher;

    const v2, 0x7f13016d

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_3a

    move p1, v2

    goto :goto_3b

    :cond_3a
    move p1, v1

    :goto_3b
    if-nez p1, :cond_43

    invoke-static {p2}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_44

    :cond_43
    move v1, v2

    :cond_44
    const/4 p1, 0x0

    if-nez v1, :cond_48

    goto :goto_49

    :cond_48
    move-object p2, p1

    :goto_49
    if-eqz p2, :cond_4e

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    :cond_4e
    invoke-virtual {v0, p5, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0, p3, p7}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0, p4, p7}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mBottomAlertDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object v0, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mBottomAlertDialogBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const p2, 0x1020019

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_76

    iget-object p2, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->launcher:Lcom/android/launcher/Launcher;

    const p3, 0x7f060048

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_76
    iget-object p1, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mBottomAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_81

    invoke-direct {p0, p6}, Lcom/android/launcher3/popup/OplusAlertPopup;->createDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_81
    iget-object p1, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mPopupNoBlurView:Lcom/android/launcher3/popup/PopupNoBlurView;

    iget-object p2, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mBottomAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/popup/PopupNoBlurView;->setDialog(Landroidx/appcompat/app/AlertDialog;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mPopupNoBlurView:Lcom/android/launcher3/popup/PopupNoBlurView;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/PopupNoBlurView;->createBlurAnim(Z)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final createMultiMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 10

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "positiveButtonTitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "negativeButtonTitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onClickListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->launcher:Lcom/android/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_32

    move p1, v2

    goto :goto_33

    :cond_32
    move p1, v1

    :goto_33
    if-nez p1, :cond_3b

    invoke-static {p2}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3c

    :cond_3b
    move v1, v2

    :cond_3c
    if-nez v1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 p2, 0x0

    :goto_40
    if-eqz p2, :cond_45

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    :cond_45
    invoke-virtual {v0, p3, p6}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0, p4, p6}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mBottomAlertDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object v0, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mBottomAlertDialogBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const p2, 0x1020019

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_6a

    iget-object p2, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->launcher:Lcom/android/launcher/Launcher;

    const p3, 0x7f060510

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    :cond_6a
    iget-object p1, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mBottomAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_75

    invoke-direct {p0, p5}, Lcom/android/launcher3/popup/OplusAlertPopup;->createDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_75
    iget-object p1, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mPopupNoBlurView:Lcom/android/launcher3/popup/PopupNoBlurView;

    iget-object p2, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mBottomAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/popup/PopupNoBlurView;->setDialog(Landroidx/appcompat/app/AlertDialog;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->mPopupNoBlurView:Lcom/android/launcher3/popup/PopupNoBlurView;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/PopupNoBlurView;->createBlurAnim(Z)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusAlertPopup;->launcher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.class public final Lcom/android/common/util/ToastUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "ToastUtils"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nToastUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToastUtils.kt\ncom/android/common/util/ToastUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1#2:142\n*E\n"
    }
.end annotation


# static fields
.field private static final AUTO_DISAPPEAR_TIME:I = 0x9c4

.field private static final SHOW_DELAY_TIME:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToastUtils"

.field private static final TOAST_INTERVAL_TIME:I = 0x9c4

.field private static mCOUISnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

.field private static sLastShowTime:J


# direct methods
.method public static synthetic a(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/common/util/ToastUtils;->showSnackBar$lambda$10(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic access$setSLastShowTime$p(J)V
    .registers 2

    sput-wide p0, Lcom/android/common/util/ToastUtils;->sLastShowTime:J

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/common/util/ToastUtils;->showSnackBar$lambda$7(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic c(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/ToastUtils;->showSnackBar$lambda$5(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/Launcher;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/ToastUtils;->showSnackBar$lambda$8(Lcom/android/launcher/Launcher;Landroid/view/View;)V

    return-void
.end method

.method public static final showSnackBar(Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string/jumbo v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/common/util/ToastUtils;->showSnackBar$default(Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Landroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showSnackBar(Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .registers 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string/jumbo p2, "message"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_13

    new-instance p2, Lcom/android/common/util/d1;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, p3, v0}, Lcom/android/common/util/d1;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void
.end method

.method public static final showSnackBar(Ljava/lang/String;Landroid/view/View;Lcom/android/launcher/Launcher;)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string/jumbo v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/common/util/ToastUtils;->showSnackBar$default(Ljava/lang/String;Landroid/view/View;Lcom/android/launcher/Launcher;Landroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showSnackBar(Ljava/lang/String;Landroid/view/View;Lcom/android/launcher/Launcher;Landroid/view/View$OnClickListener;)V
    .registers 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string/jumbo p2, "message"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/android/common/util/ToastUtils;->mCOUISnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->d()V

    :cond_d
    if-eqz p1, :cond_1a

    new-instance p2, Lcom/android/common/util/d1;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, p3, v0}, Lcom/android/common/util/d1;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method public static synthetic showSnackBar$default(Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Landroid/view/View$OnClickListener;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_9

    new-instance p3, Lcom/android/common/util/b1;

    invoke-direct {p3, p2}, Lcom/android/common/util/b1;-><init>(Landroid/app/Activity;)V

    :cond_9
    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/ToastUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic showSnackBar$default(Ljava/lang/String;Landroid/view/View;Lcom/android/launcher/Launcher;Landroid/view/View$OnClickListener;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_9

    new-instance p3, Lcom/android/common/util/c1;

    invoke-direct {p3, p2}, Lcom/android/common/util/c1;-><init>(Lcom/android/launcher/Launcher;)V

    :cond_9
    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/ToastUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;Lcom/android/launcher/Launcher;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final showSnackBar$lambda$10(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 6

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coui/appcompat/snackbar/COUISnackBar;->w:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/control/R$dimen;->coui_snack_bar_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0x9c4

    invoke-static {v0, p0, p1, v2, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->h(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUISnackBar;

    move-result-object p0

    new-instance p1, Lcom/android/common/util/ToastUtils$showSnackBar$4$1$1;

    invoke-direct {p1}, Lcom/android/common/util/ToastUtils$showSnackBar$4$1$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setOnStatusChangeListener(Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12031c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->i(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->j()V

    sput-object p0, Lcom/android/common/util/ToastUtils;->mCOUISnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

    return-void
.end method

.method private static final showSnackBar$lambda$5(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/launcher/settings/LauncherSettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, ":settings:fragment_args_key"

    const-string v1, "launcher_locked"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_15

    const/16 v0, 0x2711

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_15
    sget-object p0, Lcom/android/common/util/ToastUtils;->mCOUISnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->d()V

    :cond_1c
    return-void
.end method

.method private static final showSnackBar$lambda$7(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 6

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coui/appcompat/snackbar/COUISnackBar;->w:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/control/R$dimen;->coui_snack_bar_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0x9c4

    invoke-static {v0, p0, p1, v2, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->h(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUISnackBar;

    move-result-object p0

    new-instance p1, Lcom/android/common/util/ToastUtils$showSnackBar$2$1$1;

    invoke-direct {p1}, Lcom/android/common/util/ToastUtils$showSnackBar$2$1$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setOnStatusChangeListener(Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12031c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->i(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->j()V

    sput-object p0, Lcom/android/common/util/ToastUtils;->mCOUISnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

    return-void
.end method

.method private static final showSnackBar$lambda$8(Lcom/android/launcher/Launcher;Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/launcher/settings/LauncherSettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, ":settings:fragment_args_key"

    const-string v1, "launcher_locked"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_15

    const/16 v0, 0x2711

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_15
    sget-object p0, Lcom/android/common/util/ToastUtils;->mCOUISnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->d()V

    :cond_1c
    return-void
.end method

.method public static final toast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/common/util/ToastUtils;->toast$default(Landroid/content/Context;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/common/util/ToastUtils;->toast$default(Landroid/content/Context;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final toast(Landroid/content/Context;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;)Landroid/widget/Toast;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/Toast;",
            "Lh4/z;",
            ">;)",
            "Landroid/widget/Toast;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string/jumbo p1, "makeText(this, message, …  init(this)\n    show()\n}"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic toast$default(Landroid/content/Context;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    sget-object p3, Lcom/android/common/util/ToastUtils$toast$1;->INSTANCE:Lcom/android/common/util/ToastUtils$toast$1;

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/ToastUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return-object p0
.end method

.method public static final toastSingle(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const-string/jumbo v0, "resources.getText(resId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public static final toastSingle(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .registers 3

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_e

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public static final toastSingle(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 10

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/common/util/ToastUtils;->sLastShowTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x9c4

    cmp-long v3, v3, v5

    if-lez v3, :cond_20

    sput-wide v1, Lcom/android/common/util/ToastUtils;->sLastShowTime:J

    sget-object v0, Lcom/android/common/util/ToastUtils$toastSingle$2$1;->INSTANCE:Lcom/android/common/util/ToastUtils$toastSingle$2$1;

    invoke-static {p0, p1, p2, v0}, Lcom/android/common/util/ToastUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;)Landroid/widget/Toast;

    move-result-object p0

    move-object v0, p0

    :cond_20
    return-object v0
.end method

.class public final Lcom/android/common/util/ToastUtils$showSnackBar$2$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/ToastUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/coui/appcompat/snackbar/COUISnackBar;)V
    .registers 2

    const-string p0, "ToastUtils"

    const-string p1, "mCOUISnackBar onDismissed"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShown(Lcom/coui/appcompat/snackbar/COUISnackBar;)V
    .registers 2

    const-string p0, "ToastUtils"

    const-string p1, "mCOUISnackBar onShown"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

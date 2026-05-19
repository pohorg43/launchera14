.class public Lcom/oplus/zoom/ui/tips/ToastManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Tips"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/ToastManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public showCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    const-string p2, "Tips"

    if-nez p3, :cond_a

    const-string p0, "Failed to show toast: target is null"

    invoke-static {p2, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "target:  "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", type ="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2a

    goto :goto_53

    :cond_2a
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p2

    if-eqz p2, :cond_35

    return-void

    :cond_35
    iget-object p2, p0, Lcom/oplus/zoom/ui/tips/ToastManager;->mContext:Landroid/content/Context;

    const/4 p4, 0x0

    invoke-static {p2, p3, p4}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    if-eq p2, p1, :cond_53

    iget-object p2, p0, Lcom/oplus/zoom/ui/tips/ToastManager;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/wm/shell/R$string;->zoom_unsupport_application:I

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    invoke-static {p2, p4, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/ToastManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p3, p1}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_53
    :goto_53
    return-void
.end method

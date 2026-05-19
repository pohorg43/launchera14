.class Lcom/oplus/zoom/ui/tips/SnackBarManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/ui/tips/SnackBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/ui/tips/SnackBarManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ui/tips/SnackBarManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager$1;->this$0:Lcom/oplus/zoom/ui/tips/SnackBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/coui/appcompat/snackbar/COUISnackBar;)V
    .registers 2

    :try_start_0
    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager$1;->this$0:Lcom/oplus/zoom/ui/tips/SnackBarManager;

    invoke-static {p1}, Lcom/oplus/zoom/ui/tips/SnackBarManager;->access$000(Lcom/oplus/zoom/ui/tips/SnackBarManager;)Landroid/view/WindowManager;

    move-result-object p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager$1;->this$0:Lcom/oplus/zoom/ui/tips/SnackBarManager;

    invoke-static {p1}, Lcom/oplus/zoom/ui/tips/SnackBarManager;->access$000(Lcom/oplus/zoom/ui/tips/SnackBarManager;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager$1;->this$0:Lcom/oplus/zoom/ui/tips/SnackBarManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/tips/SnackBarManager;->access$100(Lcom/oplus/zoom/ui/tips/SnackBarManager;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception p0

    const-string p1, "onDismissed removeView error"

    invoke-static {p1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onShown(Lcom/coui/appcompat/snackbar/COUISnackBar;)V
    .registers 2

    return-void
.end method

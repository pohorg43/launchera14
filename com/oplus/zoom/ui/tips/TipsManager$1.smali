.class Lcom/oplus/zoom/ui/tips/TipsManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/ui/tips/TipsManager;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/ui/tips/TipsManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ui/tips/TipsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsManager$1;->this$0:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    const-string v0, "Tips"

    const-string v1, "TipsManager: onGlobalLayout"

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsManager$1;->this$0:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-static {v0}, Lcom/oplus/zoom/ui/tips/TipsManager;->access$000(Lcom/oplus/zoom/ui/tips/TipsManager;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsManager$1;->this$0:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

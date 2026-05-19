.class public final Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/RenderFailRetry;-><init>(Lcom/android/launcher3/card/CardModelWrapper;Lcom/android/launcher3/card/CommonCardView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/RenderFailRetry;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/RenderFailRetry;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;->this$0:Lcom/android/launcher3/card/RenderFailRetry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    goto :goto_25

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;->this$0:Lcom/android/launcher3/card/RenderFailRetry;

    invoke-virtual {v0}, Lcom/android/launcher3/card/RenderFailRetry;->getHostView()Lcom/android/launcher3/card/CommonCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mErrorCallback post retry runnable. code "

    invoke-static {v1, p1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;->this$0:Lcom/android/launcher3/card/RenderFailRetry;

    invoke-virtual {p1}, Lcom/android/launcher3/card/RenderFailRetry;->getHostView()Lcom/android/launcher3/card/CommonCardView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;->this$0:Lcom/android/launcher3/card/RenderFailRetry;

    invoke-static {p0}, Lcom/android/launcher3/card/RenderFailRetry;->access$getMRenderFailRunnable$p(Lcom/android/launcher3/card/RenderFailRetry;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_25
    return-void
.end method

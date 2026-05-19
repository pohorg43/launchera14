.class public final Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$createEngineKeyguardCtrl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$IKeyguardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->createEngineKeyguardCtrl(Landroid/content/Context;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0017J\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\tH\u0017¨\u0006\r"
    }
    d2 = {
        "com/oplus/smartsdk/themecard/OplusKeyguardCtrl$createEngineKeyguardCtrl$1",
        "Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$IKeyguardCallback;",
        "Landroid/view/View;",
        "view",
        "Lh4/z;",
        "onLoadView",
        "",
        "errorMsg",
        "onLoadFailed",
        "Landroid/content/Intent;",
        "intent",
        "",
        "startActivity",
        "com.oplus.smartsdk.smartenginesdk"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;


# direct methods
.method public constructor <init>(Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$createEngineKeyguardCtrl$1;->this$0:Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "errorMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$createEngineKeyguardCtrl$1;->this$0:Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    invoke-static {p0, p1}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->access$onError(Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadView(Landroid/view/View;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$createEngineKeyguardCtrl$1;->this$0:Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    invoke-static {v0}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->access$getLoadCallback$p(Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;)Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$IKeyguardCallback;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 p0, 0x0

    goto :goto_19

    :cond_f
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$createEngineKeyguardCtrl$1;->this$0:Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    invoke-static {p0, p1}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->access$onViewLoaded(Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;Landroid/view/View;)V

    invoke-interface {v0, p1}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$IKeyguardCallback;->onLoadView(Landroid/view/View;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_19
    if-nez p0, :cond_22

    const-string p0, "OplusKeyguardCtrl"

    const-string p1, "onLoadView mCallback is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public startActivity(Landroid/view/View;Landroid/content/Intent;)Z
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$createEngineKeyguardCtrl$1;->this$0:Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    invoke-static {v0}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->access$getLoadCallback$p(Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;)Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$IKeyguardCallback;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 p0, 0x0

    goto :goto_1b

    :cond_f
    if-nez p1, :cond_17

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$createEngineKeyguardCtrl$1;->this$0:Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    invoke-static {p0}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->access$getCardView$p(Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;)Landroid/view/View;

    move-result-object p1

    :cond_17
    invoke-interface {v0, p1, p2}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$IKeyguardCallback;->startActivity(Landroid/view/View;Landroid/content/Intent;)Z

    move-result p0

    :goto_1b
    return p0
.end method

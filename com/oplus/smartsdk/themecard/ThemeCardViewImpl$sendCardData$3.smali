.class public final Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$IKeyguardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->sendCardData(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V
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
        "com/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3",
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
.field public final synthetic $cardName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;


# direct methods
.method public constructor <init>(Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;->this$0:Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;

    iput-object p2, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;->$cardName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "errorMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadFailed cardName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;->$cardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThemeCardViewImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;->this$0:Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;->$cardName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->access$onError(Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;Ljava/lang/String;I)V

    return-void
.end method

.method public onLoadView(Landroid/view/View;)V
    .registers 7
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;->this$0:Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;

    invoke-static {v0}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->access$getCardUICallbackMap$p(Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;->this$0:Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;->$cardName:Ljava/lang/String;

    monitor-enter v0

    :try_start_10
    invoke-static {v1}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->access$getCardUICallbackMap$p(Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/smartsdk/CardUICallback;

    const-string v2, "ThemeCardViewImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadSuccess cardName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3b

    goto :goto_3f

    :cond_3b
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p0}, Lcom/oplus/smartsdk/CardUICallback;->onCall(Landroid/view/View;ILjava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_10 .. :try_end_3f} :catchall_41

    :goto_3f
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public startActivity(Landroid/view/View;Landroid/content/Intent;)Z
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivity intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;->this$0:Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;

    invoke-static {v1}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->access$getInterceptStartActivityCallback$p(Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;)Lcom/oplus/smartsdk/InterceptStartActivityCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeCardViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;->this$0:Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;

    invoke-static {v0}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->access$getInterceptStartActivityCallback$p(Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;)Lcom/oplus/smartsdk/InterceptStartActivityCallback;

    move-result-object v0

    if-nez v0, :cond_33

    const/4 p0, 0x0

    return p0

    :cond_33
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;->$cardName:Ljava/lang/String;

    invoke-static {p2}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2, p0}, Lcom/oplus/smartsdk/InterceptStartActivityCallback;->onCall(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

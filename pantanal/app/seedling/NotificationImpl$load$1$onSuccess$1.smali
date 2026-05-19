.class public final Lpantanal/app/seedling/NotificationImpl$load$1$onSuccess$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/NotificationImpl$load$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $callback:Lpantanal/app/OnLoadCallback;

.field public final synthetic this$0:Lpantanal/app/seedling/NotificationImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/OnLoadCallback;Lpantanal/app/seedling/NotificationImpl;)V
    .registers 3

    iput-object p1, p0, Lpantanal/app/seedling/NotificationImpl$load$1$onSuccess$1;->$callback:Lpantanal/app/OnLoadCallback;

    iput-object p2, p0, Lpantanal/app/seedling/NotificationImpl$load$1$onSuccess$1;->this$0:Lpantanal/app/seedling/NotificationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 5

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpantanal/app/seedling/NotificationImpl$load$1$onSuccess$1;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .registers 14

    const-string v0, "errorMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$DefaultImpls;->onFailed(Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v0, "onFailed, msg = "

    invoke-static {v0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "GadgetImpl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl$load$1$onSuccess$1;->$callback:Lpantanal/app/OnLoadCallback;

    const/16 v0, 0x800

    invoke-interface {p0, v0, p1}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onLoadFinished(Lcom/oplus/seedling/sdk/seedling/ISeedling;)V
    .registers 14

    const-string v0, "seedling"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$DefaultImpls;->onLoadFinished(Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;Lcom/oplus/seedling/sdk/seedling/ISeedling;)V

    iget-object v0, p0, Lpantanal/app/seedling/NotificationImpl$load$1$onSuccess$1;->this$0:Lpantanal/app/seedling/NotificationImpl;

    invoke-static {v0, p1}, Lpantanal/app/seedling/NotificationImpl;->access$setSeedling$p(Lpantanal/app/seedling/NotificationImpl;Lcom/oplus/seedling/sdk/seedling/ISeedling;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished, seedling = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "GadgetImpl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl$load$1$onSuccess$1;->$callback:Lpantanal/app/OnLoadCallback;

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object p1

    invoke-interface {p0, p1}, Lpantanal/app/OnLoadCallback;->onSuccess(Landroid/view/View;)V

    return-void
.end method

.method public onReceiveData(Lcom/oplus/seedling/sdk/seedling/ISeedling;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V
    .registers 15

    const-string v0, "seedling"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$DefaultImpls;->onReceiveData(Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;Lcom/oplus/seedling/sdk/seedling/ISeedling;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveData, seedling = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",data = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "GadgetImpl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p1, p0, Lpantanal/app/seedling/NotificationImpl$load$1$onSuccess$1;->this$0:Lpantanal/app/seedling/NotificationImpl;

    invoke-static {p1}, Lpantanal/app/seedling/NotificationImpl;->access$getDataCallback$p(Lpantanal/app/seedling/NotificationImpl;)Lpantanal/app/NotificationDataCallback;

    move-result-object p1

    if-eqz p1, :cond_46

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl$load$1$onSuccess$1;->this$0:Lpantanal/app/seedling/NotificationImpl;

    if-eqz p2, :cond_42

    invoke-static {p2}, Lpantanal/app/seedling/SeedlingExKt;->toResultData(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)Lpantanal/app/bean/ResultData;

    move-result-object p2

    goto :goto_43

    :cond_42
    const/4 p2, 0x0

    :goto_43
    invoke-interface {p1, p0, p2}, Lpantanal/app/DataCallback;->onReceiveData(Ljava/lang/Object;Lpantanal/app/bean/ResultData;)V

    :cond_46
    return-void
.end method

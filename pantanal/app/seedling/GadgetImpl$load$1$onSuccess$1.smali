.class public final Lpantanal/app/seedling/GadgetImpl$load$1$onSuccess$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/GadgetImpl$load$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $callback:Lpantanal/app/OnLoadCallback;

.field public final synthetic this$0:Lpantanal/app/seedling/GadgetImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/OnLoadCallback;Lpantanal/app/seedling/GadgetImpl;)V
    .registers 3

    iput-object p1, p0, Lpantanal/app/seedling/GadgetImpl$load$1$onSuccess$1;->$callback:Lpantanal/app/OnLoadCallback;

    iput-object p2, p0, Lpantanal/app/seedling/GadgetImpl$load$1$onSuccess$1;->this$0:Lpantanal/app/seedling/GadgetImpl;

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

    invoke-virtual {p0, p1}, Lpantanal/app/seedling/GadgetImpl$load$1$onSuccess$1;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .registers 3

    const-string v0, "errorMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/seedling/GadgetImpl$load$1$onSuccess$1;->$callback:Lpantanal/app/OnLoadCallback;

    const/16 v0, 0x800

    invoke-interface {p0, v0, p1}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onLoadFinished(Lcom/oplus/seedling/sdk/seedling/ISeedling;)V
    .registers 3

    const-string v0, "seedling"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$DefaultImpls;->onLoadFinished(Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;Lcom/oplus/seedling/sdk/seedling/ISeedling;)V

    iget-object v0, p0, Lpantanal/app/seedling/GadgetImpl$load$1$onSuccess$1;->this$0:Lpantanal/app/seedling/GadgetImpl;

    invoke-static {v0, p1}, Lpantanal/app/seedling/GadgetImpl;->access$setSeedling$p(Lpantanal/app/seedling/GadgetImpl;Lcom/oplus/seedling/sdk/seedling/ISeedling;)V

    iget-object p0, p0, Lpantanal/app/seedling/GadgetImpl$load$1$onSuccess$1;->$callback:Lpantanal/app/OnLoadCallback;

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object p1

    invoke-interface {p0, p1}, Lpantanal/app/OnLoadCallback;->onSuccess(Landroid/view/View;)V

    return-void
.end method

.method public onReceiveData(Lcom/oplus/seedling/sdk/seedling/ISeedling;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V
    .registers 4

    const-string v0, "seedling"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$DefaultImpls;->onReceiveData(Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;Lcom/oplus/seedling/sdk/seedling/ISeedling;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V

    iget-object p1, p0, Lpantanal/app/seedling/GadgetImpl$load$1$onSuccess$1;->this$0:Lpantanal/app/seedling/GadgetImpl;

    invoke-static {p1}, Lpantanal/app/seedling/GadgetImpl;->access$getDataCallback$p(Lpantanal/app/seedling/GadgetImpl;)Lpantanal/app/GadgetDataCallback;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lpantanal/app/seedling/GadgetImpl$load$1$onSuccess$1;->this$0:Lpantanal/app/seedling/GadgetImpl;

    if-eqz p2, :cond_19

    invoke-static {p2}, Lpantanal/app/seedling/SeedlingExKt;->toResultData(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)Lpantanal/app/bean/ResultData;

    move-result-object p2

    goto :goto_1a

    :cond_19
    const/4 p2, 0x0

    :goto_1a
    invoke-interface {p1, p0, p2}, Lpantanal/app/DataCallback;->onReceiveData(Ljava/lang/Object;Lpantanal/app/bean/ResultData;)V

    :cond_1d
    return-void
.end method

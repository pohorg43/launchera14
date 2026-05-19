.class public final Lpantanal/app/app_card/engine/SmartEngine$smartErrorCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/app_card/engine/ISmartEngineError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/app_card/engine/SmartEngine;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/app_card/OnAppCardLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/app_card/engine/SmartEngine;


# direct methods
.method public constructor <init>(Lpantanal/app/app_card/engine/SmartEngine;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/app_card/engine/SmartEngine$smartErrorCallback$1;->this$0:Lpantanal/app/app_card/engine/SmartEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Ljava/lang/String;I)V
    .registers 15

    const-string v0, "cardName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine$smartErrorCallback$1;->this$0:Lpantanal/app/app_card/engine/SmartEngine;

    invoke-static {v0}, Lpantanal/app/app_card/engine/SmartEngine;->access$buildPreLogMsg(Lpantanal/app/app_card/engine/SmartEngine;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",errorCallback onCall: cardName = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", code = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SmartEngine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_46

    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine$smartErrorCallback$1;->this$0:Lpantanal/app/app_card/engine/SmartEngine;

    invoke-static {p0}, Lpantanal/app/app_card/engine/SmartEngine;->access$getCallback$p(Lpantanal/app/app_card/engine/SmartEngine;)Lpantanal/app/app_card/OnAppCardLoadCallback;

    move-result-object p0

    const-string p1, "security_error"

    invoke-interface {p0, p2, p1}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    goto :goto_51

    :cond_46
    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine$smartErrorCallback$1;->this$0:Lpantanal/app/app_card/engine/SmartEngine;

    invoke-static {p0}, Lpantanal/app/app_card/engine/SmartEngine;->access$getCallback$p(Lpantanal/app/app_card/engine/SmartEngine;)Lpantanal/app/app_card/OnAppCardLoadCallback;

    move-result-object p0

    const-string p1, "smart engine render error"

    invoke-interface {p0, p2, p1}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    :goto_51
    return-void
.end method

.class final Lpantanal/app/app_card/AppCardImpl$loadInternal$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/app_card/AppCardImpl;->loadInternal(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $bundle:Landroid/os/Bundle;

.field public final synthetic $callback:Lpantanal/app/OnLoadCallback;

.field public final synthetic this$0:Lpantanal/app/app_card/AppCardImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/app_card/AppCardImpl;Lpantanal/app/OnLoadCallback;Landroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    iput-object p2, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->$callback:Lpantanal/app/OnLoadCallback;

    iput-object p3, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->$bundle:Landroid/os/Bundle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 15

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v0}, Lpantanal/app/app_card/AppCardImpl;->access$buildPreLogMsg(Lpantanal/app/app_card/AppCardImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v1}, Lpantanal/app/app_card/AppCardImpl;->access$getConfiguration$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/bean/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lpantanal/app/bean/Configuration;->getLoadTimeout()I

    move-result v1

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->$callback:Lpantanal/app/OnLoadCallback;

    invoke-static {v0, v1, v2}, Lpantanal/app/TimeoutExtKt;->createTimeOutLoadCallback(Ljava/lang/String;ILpantanal/app/OnLoadCallback;)Lpantanal/app/TimeOutLoadCallback;

    move-result-object v0

    sget-object v12, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v1}, Lpantanal/app/app_card/AppCardImpl;->access$buildPreLogMsg(Lpantanal/app/app_card/AppCardImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v2}, Lpantanal/app/app_card/AppCardImpl;->access$getConfiguration$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/bean/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lpantanal/app/bean/Configuration;->getLoadTimeout()I

    move-result v2

    const-string v3, ",loadInternal, start count down,timeout = "

    invoke-static {v1, v3, v2}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "AppCardImpl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v1}, Lpantanal/app/app_card/AppCardImpl;->access$getCardViewInfo$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v1

    invoke-static {v1}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v2

    const/16 v3, 0x190

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    invoke-virtual {v0}, Lpantanal/app/TimeOutLoadCallback;->startLoadCountDown()V

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v1, v0}, Lpantanal/app/app_card/AppCardImpl;->access$setClientCallback$p(Lpantanal/app/app_card/AppCardImpl;Lpantanal/app/OnLoadCallback;)V

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v0}, Lpantanal/app/app_card/AppCardImpl;->access$getEngine$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/app_card/engine/SmartEngine;

    move-result-object v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v0}, Lpantanal/app/app_card/AppCardImpl;->access$getConfiguration$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/bean/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lpantanal/app/bean/Configuration;->getMode()Lpantanal/app/bean/Mode;

    move-result-object v0

    sget-object v1, Lpantanal/app/bean/Mode;->LIFECYCLE:Lpantanal/app/bean/Mode;

    if-eq v0, v1, :cond_75

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v0}, Lpantanal/app/app_card/AppCardImpl;->access$initSmartEngine(Lpantanal/app/app_card/AppCardImpl;)V

    goto :goto_a8

    :cond_75
    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v0}, Lpantanal/app/app_card/AppCardImpl;->access$buildPreLogMsg(Lpantanal/app/app_card/AppCardImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v1}, Lpantanal/app/app_card/AppCardImpl;->access$getConfiguration$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/bean/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lpantanal/app/bean/Configuration;->getMode()Lpantanal/app/bean/Mode;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",loadInternal,not execute initSmartEngine,loadImpl,mode = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "AppCardImpl"

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_a8
    const/4 v0, 0x0

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->$bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_bf

    const-string v2, "key_ui_data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_bf

    const-class v2, Lpantanal/app/bean/PantanalUIData;

    invoke-static {v1, v2}, La9/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpantanal/app/bean/PantanalUIData;

    if-nez v1, :cond_c7

    :cond_bf
    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-virtual {v0}, Lpantanal/app/app_card/AppCardImpl;->getUIData()Lpantanal/app/bean/PantanalUIData;

    move-result-object v1

    const-string v0, "use localPantanalUIData  uidata "

    :cond_c7
    move-object v13, v1

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v1}, Lpantanal/app/app_card/AppCardImpl;->access$buildPreLogMsg(Lpantanal/app/app_card/AppCardImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",loadInternal, build uiData: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "AppCardImpl"

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {p0, v13}, Lpantanal/app/app_card/AppCardImpl;->access$renderEngineView(Lpantanal/app/app_card/AppCardImpl;Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method

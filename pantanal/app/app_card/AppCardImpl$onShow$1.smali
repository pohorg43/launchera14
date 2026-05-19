.class final Lpantanal/app/app_card/AppCardImpl$onShow$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/app_card/AppCardImpl;->onShow()V
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
.field public final synthetic this$0:Lpantanal/app/app_card/AppCardImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/app_card/AppCardImpl;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/app_card/AppCardImpl$onShow$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/app_card/AppCardImpl$onShow$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl$onShow$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v1}, Lpantanal/app/app_card/AppCardImpl;->access$buildPreLogMsg(Lpantanal/app/app_card/AppCardImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl$onShow$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v2}, Lpantanal/app/app_card/AppCardImpl;->access$getCardTag$p(Lpantanal/app/app_card/AppCardImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ",onShow: "

    invoke-static {v1, v3, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "AppCardImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl$onShow$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v0}, Lpantanal/app/app_card/AppCardImpl;->access$getCardViewInfo$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v0

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lz8/c;->k(I)Lz8/a;

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl$onShow$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v0}, Lpantanal/app/app_card/AppCardImpl;->access$getCardManager(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_48

    sget-object v1, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {v1}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_RESUME()Lpantanal/app/manager/model/CardAction;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl$onShow$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v2}, Lpantanal/app/app_card/AppCardImpl;->access$getCardViewInfo$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpantanal/app/manager/CardManagerProxy;->requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V

    :cond_48
    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl$onShow$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v0}, Lpantanal/app/app_card/AppCardImpl;->access$getEngine$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/app_card/engine/SmartEngine;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl$onShow$1;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {p0}, Lpantanal/app/app_card/AppCardImpl;->access$getLastEngineView$p(Lpantanal/app/app_card/AppCardImpl;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lpantanal/app/app_card/engine/SmartEngine;->onVisible(Landroid/view/View;)V

    :cond_59
    return-void
.end method

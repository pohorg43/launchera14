.class final Lpantanal/app/seedling/SeedlingCardImpl$onUnsubscribe$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/SeedlingCardImpl;->onUnsubscribe()V
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
.field public final synthetic this$0:Lpantanal/app/seedling/SeedlingCardImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/seedling/SeedlingCardImpl;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl$onUnsubscribe$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardImpl$onUnsubscribe$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 14

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$onUnsubscribe$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v0

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Lz8/c;->k(I)Lz8/a;

    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$onUnsubscribe$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl$onUnsubscribe$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardTag$p(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ", launch onUnsubscribe,cardTag:"

    invoke-static {v0, v3, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "SeedlingCard"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$onUnsubscribe$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardManager(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl$onUnsubscribe$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    sget-object v2, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {v2}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_UNSUBSCRIBED()Lpantanal/app/manager/model/CardAction;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lpantanal/app/seedling/SeedlingCardImpl;->packCardAction$default(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/manager/model/CardAction;Ljava/lang/String;ILjava/lang/Object;)Lpantanal/app/manager/model/CardAction;

    move-result-object v1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl$onUnsubscribe$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lpantanal/app/manager/CardManagerProxy;->requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V

    :cond_50
    return-void
.end method

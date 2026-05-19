.class final Lpantanal/app/manager/ServiceManagerProxy$clientProxyManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy;-><init>(Lw8/a;Lpantanal/app/bean/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lpantanal/app/manager/ClientProxyManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Lpantanal/app/manager/ServiceManagerProxy;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$clientProxyManager$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/manager/ServiceManagerProxy$clientProxyManager$2;->invoke()Lpantanal/app/manager/ClientProxyManager;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lpantanal/app/manager/ClientProxyManager;
    .registers 14

    iget-object v0, p0, Lpantanal/app/manager/ServiceManagerProxy$clientProxyManager$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v0}, Lpantanal/app/manager/ServiceManagerProxy;->getConfiguration()Lpantanal/app/bean/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lpantanal/app/bean/Configuration;->getMode()Lpantanal/app/bean/Mode;

    move-result-object v0

    sget-object v1, Lpantanal/app/bean/Mode;->RENDER:Lpantanal/app/bean/Mode;

    if-ne v0, v1, :cond_22

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "CardServiceProxyImpl"

    const-string v4, ",clientProxyManager return null because mode = Mode.RENDER "

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    goto :goto_32

    :cond_22
    sget-object v0, Lpantanal/app/manager/ClientProxyManager;->Companion:Lpantanal/app/manager/ClientProxyManager$Companion;

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy$clientProxyManager$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {p0}, Lpantanal/app/manager/ServiceManagerProxy;->getConfiguration()Lpantanal/app/bean/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/app/bean/Configuration;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object p0

    invoke-virtual {v0, p0}, Lpantanal/app/manager/ClientProxyManager$Companion;->getInstance(Lpantanal/app/bean/Entrance;)Lpantanal/app/manager/ClientProxyManager;

    move-result-object p0

    :goto_32
    return-object p0
.end method

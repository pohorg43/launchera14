.class final Lpantanal/app/seedling/SeedlingCardImpl$cardManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/SeedlingCardImpl;-><init>(Lpantanal/app/manager/ServiceManagerProxy;Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lpantanal/app/manager/CardManagerProxy;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/seedling/SeedlingCardImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/seedling/SeedlingCardImpl;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl$cardManager$2;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardImpl$cardManager$2;->invoke()Lpantanal/app/manager/CardManagerProxy;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lpantanal/app/manager/CardManagerProxy;
    .registers 14

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$cardManager$2;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getConfiguration$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/Configuration;

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

    const-string v3, "SeedlingCard"

    const-string v4, "CardManagerProxy  return null,because mode = Mode.RENDER"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    goto :goto_2e

    :cond_22
    new-instance v0, Lpantanal/app/manager/CardManagerProxy;

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl$cardManager$2;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getProxy$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/manager/ServiceManagerProxy;

    move-result-object p0

    invoke-direct {v0, p0}, Lpantanal/app/manager/CardManagerProxy;-><init>(Lpantanal/app/manager/ServiceManagerProxy;)V

    move-object p0, v0

    :goto_2e
    return-object p0
.end method

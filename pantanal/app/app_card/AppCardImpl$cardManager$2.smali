.class final Lpantanal/app/app_card/AppCardImpl$cardManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/app_card/AppCardImpl;-><init>(Lpantanal/app/manager/ServiceManagerProxy;Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Configuration;)V
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
.field public final synthetic this$0:Lpantanal/app/app_card/AppCardImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/app_card/AppCardImpl;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/app_card/AppCardImpl$cardManager$2;->this$0:Lpantanal/app/app_card/AppCardImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/app_card/AppCardImpl$cardManager$2;->invoke()Lpantanal/app/manager/CardManagerProxy;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lpantanal/app/manager/CardManagerProxy;
    .registers 3

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl$cardManager$2;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {v0}, Lpantanal/app/app_card/AppCardImpl;->access$getConfiguration$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/bean/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lpantanal/app/bean/Configuration;->getMode()Lpantanal/app/bean/Mode;

    move-result-object v0

    sget-object v1, Lpantanal/app/bean/Mode;->RENDER:Lpantanal/app/bean/Mode;

    if-ne v0, v1, :cond_10

    const/4 p0, 0x0

    goto :goto_1c

    :cond_10
    new-instance v0, Lpantanal/app/manager/CardManagerProxy;

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl$cardManager$2;->this$0:Lpantanal/app/app_card/AppCardImpl;

    invoke-static {p0}, Lpantanal/app/app_card/AppCardImpl;->access$getServiceManager$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/manager/ServiceManagerProxy;

    move-result-object p0

    invoke-direct {v0, p0}, Lpantanal/app/manager/CardManagerProxy;-><init>(Lpantanal/app/manager/ServiceManagerProxy;)V

    move-object p0, v0

    :goto_1c
    return-object p0
.end method

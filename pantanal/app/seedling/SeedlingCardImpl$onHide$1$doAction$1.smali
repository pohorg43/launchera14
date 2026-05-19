.class final Lpantanal/app/seedling/SeedlingCardImpl$onHide$1$doAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/SeedlingCardImpl$onHide$1;->invoke()V
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

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl$onHide$1$doAction$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lh4/z;
    .registers 6

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$onHide$1$doAction$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardManager(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl$onHide$1$doAction$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    sget-object v3, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {v3}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_HIDE()Lpantanal/app/manager/model/CardAction;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v1, v4, v1}, Lpantanal/app/seedling/SeedlingCardImpl;->packCardAction$default(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/manager/model/CardAction;Ljava/lang/String;ILjava/lang/Object;)Lpantanal/app/manager/model/CardAction;

    move-result-object v2

    iget-object v3, p0, Lpantanal/app/seedling/SeedlingCardImpl$onHide$1$doAction$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v3}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lpantanal/app/manager/CardManagerProxy;->requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V

    :cond_1f
    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl$onHide$1$doAction$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getEngine$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/seedling/SeedlingEngine;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingEngine;->onInVisible()V

    sget-object v1, Lh4/z;->a:Lh4/z;

    :cond_2c
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardImpl$onHide$1$doAction$1;->invoke()Lh4/z;

    move-result-object p0

    return-object p0
.end method

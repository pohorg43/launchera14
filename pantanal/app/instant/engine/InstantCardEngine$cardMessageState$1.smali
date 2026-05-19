.class public final Lpantanal/app/instant/engine/InstantCardEngine$cardMessageState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/instant/internal/InstantCardMessageState$IMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/instant/engine/InstantCardEngine;-><init>(Ljava/lang/String;Lpantanal/app/ILaunchInterceptor;Lpantanal/app/instant/InstantConfiguration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/instant/engine/InstantCardEngine;


# direct methods
.method public constructor <init>(Lpantanal/app/instant/engine/InstantCardEngine;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine$cardMessageState$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public replyMessage(ILjava/lang/String;)V
    .registers 14

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$cardMessageState$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getInstantAppCard$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lorg/hapjs/card/api/Card;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-interface {p0, p1, p2}, Lcom/nearme/instant/xcard/InstantCard;->replyMessage(ILjava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    if-nez p0, :cond_28

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardEngine"

    const-string v2, "cardSendMessageState replyMessage instantAppCard is null, error happened"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public sendMessage(ILjava/lang/String;)V
    .registers 14

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$cardMessageState$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getInstantAppCard$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lorg/hapjs/card/api/Card;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-interface {p0, p1, p2}, Lorg/hapjs/card/api/Card;->sendMessage(ILjava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    if-nez p0, :cond_28

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardEngine"

    const-string v2, "cardSendMessageState sendMessage: instantAppCard is null, error happened"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_28
    return-void
.end method

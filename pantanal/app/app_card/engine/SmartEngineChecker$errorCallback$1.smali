.class public final Lpantanal/app/app_card/engine/SmartEngineChecker$errorCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/app_card/engine/SmartEngineChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Ljava/lang/String;I)V
    .registers 14

    const-string p0, "cardName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ly8/c;->a:Ly8/c;

    const-string v0, "ErrorCallback onCall: cardName = "

    const-string v1, ", code = "

    invoke-static {v0, p1, v1, p2}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SmartEngineChecker"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {}, Lpantanal/app/app_card/engine/SmartEngineChecker;->access$getErrorCallbacks$p()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpantanal/app/app_card/engine/ISmartEngineError;

    if-eqz v0, :cond_30

    invoke-interface {v0, p1, p2}, Lpantanal/app/app_card/engine/ISmartEngineError;->onCall(Ljava/lang/String;I)V

    sget-object p1, Lh4/z;->a:Lh4/z;

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    if-nez p1, :cond_44

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SmartEngineChecker"

    const-string v2, "ErrorCallback onCall: card not exist"

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_44
    return-void
.end method

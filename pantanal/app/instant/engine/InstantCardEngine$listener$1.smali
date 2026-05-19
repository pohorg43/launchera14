.class public final Lpantanal/app/instant/engine/InstantCardEngine$listener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/hapjs/card/api/IRenderListener;


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

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine$listener$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderException(ILjava/lang/String;)V
    .registers 14

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p0, "onRenderException "

    const-string v1, "errorCode = "

    invoke-static {p0, p2, v1, p1}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "InstantCardEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public onRenderFailed(ILjava/lang/String;)Z
    .registers 14

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine$listener$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {v1}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getCardTag$p(Lpantanal/app/instant/engine/InstantCardEngine;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRenderFailed "

    const-string v3, ", errorCode:"

    const-string v4, " "

    invoke-static {v2, p2, v3, p1, v4}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "InstantCardEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-nez p2, :cond_2b

    const-string p2, "onRenderFailed"

    :cond_2b
    sget-object p1, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {p1}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v0, v0, Lz8/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_48

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine$listener$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-virtual {p1}, Lz8/f$a;->a()Lz8/f;

    move-result-object p1

    invoke-static {v1}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getCardTag$p(Lpantanal/app/instant/engine/InstantCardEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lz8/f;->b(Ljava/lang/String;)Lz8/c;

    move-result-object p1

    if-eqz p1, :cond_48

    invoke-virtual {p1, v0, p2}, Lz8/c;->y(Landroid/content/Context;Ljava/lang/String;)V

    :cond_48
    iget-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine$listener$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lpantanal/app/instant/engine/InstantCardEngine;->access$storeResult(Lpantanal/app/instant/engine/InstantCardEngine;Landroid/view/View;Ljava/lang/Integer;)V

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$listener$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getCallback$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lpantanal/app/OnLoadCallback;

    move-result-object p0

    if-eqz p0, :cond_5e

    invoke-interface {p0, v1, p2}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    :cond_5e
    return v1
.end method

.method public onRenderProgress()Z
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "InstantCardEngine"

    const-string v2, "onRenderProgress"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onRenderSuccess()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine$listener$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {v1}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getCardTag$p(Lpantanal/app/instant/engine/InstantCardEngine;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRenderSuccess: cardTag: "

    invoke-static {v2, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "InstantCardEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine$listener$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {v0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getInstantAppCard$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lorg/hapjs/card/api/Card;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$listener$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    sget-object v1, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v1}, Lz8/f$a;->a()Lz8/f;

    move-result-object v1

    invoke-static {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getCardTag$p(Lpantanal/app/instant/engine/InstantCardEngine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz8/f;->b(Ljava/lang/String;)Lz8/c;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lz8/c;->u()V

    :cond_39
    invoke-static {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getCallback$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lpantanal/app/OnLoadCallback;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Lorg/hapjs/card/api/Card;->getView()Landroid/view/View;

    move-result-object v2

    const-string v3, "it.view"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lpantanal/app/OnLoadCallback;->onSuccess(Landroid/view/View;)V

    :cond_4b
    invoke-interface {v0}, Lorg/hapjs/card/api/Card;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lpantanal/app/instant/engine/InstantCardEngine;->access$storeResult(Lpantanal/app/instant/engine/InstantCardEngine;Landroid/view/View;Ljava/lang/Integer;)V

    invoke-static {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getCardVisibilityState$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lpantanal/app/instant/internal/IInstantCardState;

    move-result-object p0

    invoke-interface {p0}, Lpantanal/app/instant/internal/IInstantCardState;->invoke()V

    :cond_5f
    return-void
.end method

.method public onRouter(Ljava/lang/String;)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p0, "onRouter param = "

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "InstantCardEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

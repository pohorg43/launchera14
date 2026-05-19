.class final Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/instant/engine/InstantCardEngine;->obtainView(Landroid/content/Context;Ljava/lang/String;Lpantanal/app/instant/ICardDesignSize;Lpantanal/app/OnLoadCallback;Lpantanal/app/OnEngineCallback;)V
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
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $sizeData:Lpantanal/app/instant/ICardDesignSize;

.field public final synthetic $uri:Ljava/lang/String;

.field public final synthetic this$0:Lpantanal/app/instant/engine/InstantCardEngine;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpantanal/app/instant/engine/InstantCardEngine;Landroid/content/Context;Lpantanal/app/instant/ICardDesignSize;)V
    .registers 5

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;->$uri:Ljava/lang/String;

    iput-object p2, p0, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    iput-object p3, p0, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;->$sizeData:Lpantanal/app/instant/ICardDesignSize;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 13

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;->$uri:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_2a

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getCardTag$p(Lpantanal/app/instant/engine/InstantCardEngine;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "uri is empty, card is: "

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "InstantCardEngine"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_2a
    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;->$uri:Ljava/lang/String;

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;->$sizeData:Lpantanal/app/instant/ICardDesignSize;

    invoke-static {v0, v1, v2, p0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$loadView(Lpantanal/app/instant/engine/InstantCardEngine;Landroid/content/Context;Ljava/lang/String;Lpantanal/app/instant/ICardDesignSize;)V

    return-void
.end method

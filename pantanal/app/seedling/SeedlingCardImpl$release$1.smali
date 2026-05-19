.class final Lpantanal/app/seedling/SeedlingCardImpl$release$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/SeedlingCardImpl;->release()V
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

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl$release$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardImpl$release$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 15

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$release$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v0

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x44c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lz8/c;->A(II)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$release$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl$release$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardTag$p(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", begin to release: "

    invoke-static {v0, v2, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingCard"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$release$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-virtual {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->releaseView()V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$release$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$destroyUIDataChannel(Lpantanal/app/seedling/SeedlingCardImpl;)V

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl$release$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v1

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl$release$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v2}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getCardId()I

    move-result v2

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl$release$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getHostId()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lz8/f;->e(III)V

    return-void
.end method

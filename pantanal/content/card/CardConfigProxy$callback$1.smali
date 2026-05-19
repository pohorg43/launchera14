.class final Lpantanal/content/card/CardConfigProxy$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/content/card/CardConfigProxy;-><init>(Lw8/a;Lpantanal/app/bean/Entrance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[B",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/content/card/CardConfigProxy;


# direct methods
.method public constructor <init>(Lpantanal/content/card/CardConfigProxy;)V
    .registers 2

    iput-object p1, p0, Lpantanal/content/card/CardConfigProxy$callback$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lpantanal/content/card/CardConfigProxy$callback$1;->invoke([B)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke([B)V
    .registers 14

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/content/card/CardConfigProxy$callback$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    invoke-virtual {v0}, Lpantanal/content/card/CardConfigProxy;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v0

    iget-object v2, p0, Lpantanal/content/card/CardConfigProxy$callback$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    invoke-static {v2}, Lpantanal/content/card/CardConfigProxy;->access$getCardConfigDataList$p(Lpantanal/content/card/CardConfigProxy;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received card config change from CardService,CardConfigChange Callback called for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",old size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "CardConfigProxy"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v1, p0, Lpantanal/content/card/CardConfigProxy$callback$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    invoke-virtual {v1}, Lpantanal/content/card/CardConfigProxy;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v1

    invoke-virtual {v1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lz8/f;->a(I)Lz8/b;

    move-result-object v0

    iget-object v1, p0, Lpantanal/content/card/CardConfigProxy$callback$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    invoke-static {v1}, Lpantanal/content/card/CardConfigProxy;->access$getCardConfigDataList$p(Lpantanal/content/card/CardConfigProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_69

    const-string v2, "ums_notify"

    invoke-virtual {v0, v2}, Lz8/b;->l(Ljava/lang/String;)V

    :cond_69
    iget-object v2, v0, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_76

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "old_config_size"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_76
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lz8/b;->k(I)Lz8/b;

    iget-object v0, p0, Lpantanal/content/card/CardConfigProxy$callback$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    invoke-static {v0}, Lpantanal/content/card/CardConfigProxy;->access$getCardConfigMap$p(Lpantanal/content/card/CardConfigProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy$callback$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    invoke-static {p0, p1}, Lpantanal/content/card/CardConfigProxy;->access$setData(Lpantanal/content/card/CardConfigProxy;[B)V

    return-void
.end method

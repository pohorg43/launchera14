.class public final Lz8/b;
.super Lz8/a;
.source ""


# instance fields
.field public final e:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Lz8/a;-><init>()V

    iput p1, p0, Lz8/b;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entranceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz8/a;->h(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lz8/a;->d(Landroid/content/Context;)V

    iget-object p1, p0, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_39

    iget v0, p0, Lz8/b;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "entrance_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lpantanal/annotaions/EntranceType;->Companion:Lpantanal/annotaions/EntranceType$Companion;

    invoke-virtual {v0}, Lpantanal/annotaions/EntranceType$Companion;->getDES_SUPPORT_ENTRANCE_MAP()Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lz8/b;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "entrance_name"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "start_time"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    return-void
.end method

.method public j()V
    .registers 5

    invoke-virtual {p0}, Lz8/a;->f()V

    iget-object v0, p0, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_32

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v0, v0, Lz8/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_32

    iget-object v1, p0, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_22

    const-string v2, "trigger_mode"

    const-string v3, "timeout"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    invoke-virtual {p0}, Lz8/a;->e()V

    const-string v1, "pantanl_card_config_update"

    invoke-virtual {p0, v0, v1}, Lz8/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0}, Lz8/a;->f()V

    :cond_32
    return-void
.end method

.method public final k(I)Lz8/b;
    .registers 4

    const/16 v0, 0x578

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lz8/a;->a(IIZ)Lz8/a;

    return-object p0
.end method

.method public final l(Ljava/lang/String;)V
    .registers 4

    const-string v0, "triggerMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v0, v0, Lz8/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lz8/b;->d(Landroid/content/Context;)V

    :cond_12
    iget-object v0, p0, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1b

    const-string v1, "trigger_mode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    const/16 p1, 0x578

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lh4/j;

    invoke-direct {v1, p1, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

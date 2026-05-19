.class public Lio/branch/search/k2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/h2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/k2$f;,
        Lio/branch/search/k2$e;,
        Lio/branch/search/k2$d;
    }
.end annotation


# instance fields
.field public final a:Lio/branch/search/q4;

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;

.field public final c:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/k2$e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lio/branch/search/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:Lio/branch/search/m2;

.field public f:Lio/branch/search/t2;


# direct methods
.method public constructor <init>(Lio/branch/search/m;)V
    .registers 4
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/branch/search/q4;

    const-string v1, "RawSQLiteManager"

    invoke-direct {v0, v1}, Lio/branch/search/q4;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/k2;->a:Lio/branch/search/q4;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/branch/search/k2;->b:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/k2;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    iput-object p1, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/k2;)Lorg/json/JSONObject;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/k2;->e()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/k2;)Lio/branch/search/m;
    .registers 1

    iget-object p0, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    return-object p0
.end method

.method public static synthetic c(Lio/branch/search/k2;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    iget-object p0, p0, Lio/branch/search/k2;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method


# virtual methods
.method public a(Lio/branch/search/p0;)Lio/branch/search/BranchQueryHintResult;
    .registers 7
    .param p1  # Lio/branch/search/p0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/BranchLocalError$InvalidDB;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lio/branch/search/w1;

    const-string v1, "ANH_"

    invoke-direct {v0, v1}, Lio/branch/search/w1;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    sget-object v2, Lio/branch/search/k2$d;->c:Lio/branch/search/k2$d;

    new-instance v3, Lio/branch/search/x1$e;

    invoke-direct {v3, p1}, Lio/branch/search/x1$e;-><init>(Lio/branch/search/p0;)V

    new-instance v4, Lio/branch/search/k2$b;

    invoke-direct {v4, p0, p1, v0}, Lio/branch/search/k2$b;-><init>(Lio/branch/search/k2;Lio/branch/search/p0;Lio/branch/search/w1;)V

    invoke-virtual {v1, v2, v3, v4}, Lio/branch/search/m2;->a(Lio/branch/search/k2$d;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Lio/branch/search/BranchQueryHintResult;

    iget-object p1, p1, Lio/branch/search/p0;->f:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lio/branch/search/BranchQueryHintResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/i2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    invoke-virtual {p0}, Lio/branch/search/m2;->b()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public a(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/p0;)Ljava/util/List;
    .registers 7
    .param p1  # Lio/branch/search/BranchLocalSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchLocalSearchRequest;",
            "Lio/branch/search/p0;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/BranchLocalError$InvalidDB;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    sget-object v1, Lio/branch/search/k2$d;->a:Lio/branch/search/k2$d;

    new-instance v2, Lio/branch/search/x1$c;

    invoke-direct {v2, p1, p2}, Lio/branch/search/x1$c;-><init>(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/p0;)V

    new-instance p1, Lio/branch/search/f2$d;

    iget-object p0, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    sget-object v3, Lio/branch/search/l;->c:Lio/branch/search/l;

    invoke-direct {p1, p0, p2, v3}, Lio/branch/search/f2$d;-><init>(Lio/branch/search/m;Lio/branch/search/p0;Lio/branch/search/l;)V

    invoke-virtual {v0, v1, v2, p1}, Lio/branch/search/m2;->a(Lio/branch/search/k2$d;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public a(Lio/branch/search/p0;Lio/branch/search/BranchAppStoreRequest;Lorg/json/JSONObject;)Ljava/util/List;
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/p0;",
            "Lio/branch/search/BranchAppStoreRequest;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppStoreLinkResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    sget-object v0, Lio/branch/search/k2$d;->f:Lio/branch/search/k2$d;

    new-instance v1, Lio/branch/search/x1$a;

    invoke-direct {v1, p2, p1}, Lio/branch/search/x1$a;-><init>(Lio/branch/search/BranchAppStoreRequest;Lio/branch/search/p0;)V

    invoke-static {p3}, Lio/branch/search/u1;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p2

    invoke-static {v1, p2}, Lio/branch/search/p2;->a(Lio/branch/search/x1;Ljava/util/List;)Lio/branch/search/x1;

    move-result-object p2

    new-instance p3, Lio/branch/search/w2;

    invoke-direct {p3, p1}, Lio/branch/search/w2;-><init>(Lio/branch/search/p0;)V

    invoke-virtual {p0, v0, p2, p3}, Lio/branch/search/m2;->a(Lio/branch/search/k2$d;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public a(Le4/a;)V
    .registers 3
    .param p1  # Le4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/branch/search/k2;->a(Lorg/json/JSONObject;Le4/a;)V

    return-void
.end method

.method public a(Lio/branch/search/a2$c;)V
    .registers 10
    .param p1  # Lio/branch/search/a2$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "BRANCH_RawSQLiteManager.processUpdates"

    const-string v1, "request_id"

    iget-object v2, p1, Lio/branch/search/a2$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/a2$b;

    :try_start_16
    instance-of v4, v3, Lio/branch/search/a2$e;

    if-eqz v4, :cond_20

    check-cast v3, Lio/branch/search/a2$e;

    invoke-virtual {p0, v3}, Lio/branch/search/k2;->a(Lio/branch/search/a2$e;)V

    goto :goto_a

    :cond_20
    instance-of v4, v3, Lio/branch/search/a2$l;

    if-eqz v4, :cond_2a

    check-cast v3, Lio/branch/search/a2$l;

    invoke-virtual {p0, v3}, Lio/branch/search/k2;->a(Lio/branch/search/a2$l;)V

    goto :goto_a

    :cond_2a
    instance-of v4, v3, Lio/branch/search/a2$g;

    if-eqz v4, :cond_34

    check-cast v3, Lio/branch/search/a2$g;

    invoke-virtual {p0, v3}, Lio/branch/search/k2;->a(Lio/branch/search/a2$g;)V

    goto :goto_a

    :cond_34
    instance-of v4, v3, Lio/branch/search/a2$f;

    if-eqz v4, :cond_40

    check-cast v3, Lio/branch/search/a2$f;

    iget-object v3, v3, Lio/branch/search/a2$f;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lio/branch/search/k2;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_40
    instance-of v4, v3, Lio/branch/search/a2$d;

    if-eqz v4, :cond_4c

    invoke-static {}, Lio/branch/search/y0;->b()Lio/branch/search/y0;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/y0;->a()V

    goto :goto_a

    :cond_4c
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p1, Lio/branch/search/a2$c;->d:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bundle ACTION processing failed (request_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lio/branch/search/a2$c;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "), Unkwown type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3, v4}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_76} :catch_77

    goto :goto_a

    :catch_77
    move-exception v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p1, Lio/branch/search/a2$c;->d:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    const-string v6, "Bundle processing failed (request_id: "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lio/branch/search/a2$c;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3, v4}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_a

    :cond_b4
    return-void
.end method

.method public final a(Lio/branch/search/a2$e;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lio/branch/search/y1;->a:Lio/branch/search/y1;

    iget-object v1, p1, Lio/branch/search/a2$l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/branch/search/y1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v6

    iget-object v0, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->w()I

    move-result v5

    invoke-virtual {v6, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_49

    new-instance v0, Lio/branch/search/i2;

    iget-object v4, p1, Lio/branch/search/a2$l;->a:Ljava/lang/String;

    iget-object v7, p1, Lio/branch/search/a2$e;->g:Ljava/util/Set;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/branch/search/i2;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/util/Set;)V

    new-instance v1, Lio/branch/search/o2;

    invoke-direct {v1, p1}, Lio/branch/search/o2;-><init>(Lio/branch/search/a2$l;)V

    invoke-virtual {v0, v1}, Lio/branch/search/i2;->a(Lio/branch/search/l2;)Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_48

    invoke-virtual {p0, v0}, Lio/branch/search/k2;->a(Lio/branch/search/i2;)V

    iget-object v0, p1, Lio/branch/search/a2$e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object p1, p1, Lio/branch/search/a2$e;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/branch/search/k2;->a(Ljava/lang/String;)V

    :cond_47
    return-void

    :cond_48
    throw v1

    :cond_49
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Database file already exists!!!!! Panic!!! "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lio/branch/search/a2$g;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p1, Lio/branch/search/a2$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/a2$h;

    iget-object v2, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    iget-object v3, p1, Lio/branch/search/a2$g;->a:Ljava/lang/String;

    iget-object v4, v1, Lio/branch/search/a2$h;->b:Ljava/lang/String;

    iget-object v5, v1, Lio/branch/search/a2$h;->c:Ljava/lang/String;

    new-instance v6, Lio/branch/search/x1$d;

    invoke-direct {v6}, Lio/branch/search/x1$d;-><init>()V

    sget-object v7, Lio/branch/search/f2;->a:Lio/branch/search/f2;

    invoke-virtual/range {v2 .. v7}, Lio/branch/search/m2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v1, v1, Lio/branch/search/a2$h;->a:Ljava/lang/String;

    invoke-static {v1}, Lio/branch/search/l;->valueOf(Ljava/lang/String;)Lio/branch/search/l;

    move-result-object v1

    iget-object v3, p1, Lio/branch/search/a2$g;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lio/branch/search/x0;->a(Lio/branch/search/l;Ljava/util/List;I)V

    goto :goto_6

    :cond_37
    return-void
.end method

.method public final a(Lio/branch/search/a2$l;)V
    .registers 3

    iget-object v0, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    invoke-virtual {v0, p1}, Lio/branch/search/m2;->a(Lio/branch/search/a2$l;)Lio/branch/search/i2;

    move-result-object p1

    iget-object p0, p0, Lio/branch/search/k2;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/k2$e;

    invoke-interface {v0, p1}, Lio/branch/search/k2$e;->a(Lio/branch/search/i2;)V

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public a(Lio/branch/search/i2;)V
    .registers 3
    .param p1  # Lio/branch/search/i2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    invoke-virtual {v0, p1}, Lio/branch/search/m2;->a(Lio/branch/search/i2;)V

    iget-object p0, p0, Lio/branch/search/k2;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/k2$e;

    invoke-interface {v0, p1}, Lio/branch/search/k2$e;->b(Lio/branch/search/i2;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public a(Lio/branch/search/k2$e;)V
    .registers 2

    iget-object p0, p0, Lio/branch/search/k2;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lio/branch/search/k2$f;)V
    .registers 5

    iget-object v0, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    invoke-virtual {v1}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->w()I

    move-result v1

    new-instance v2, Lio/branch/search/m2;

    invoke-direct {v2, p1, v0, v1}, Lio/branch/search/m2;-><init>(Lio/branch/search/k2$f;Landroid/content/Context;I)V

    iput-object v2, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    new-instance p1, Lio/branch/search/t2;

    iget-object v0, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    iget-object v1, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    invoke-direct {p1, v0, v1}, Lio/branch/search/t2;-><init>(Lio/branch/search/m;Lio/branch/search/m2;)V

    iput-object p1, p0, Lio/branch/search/k2;->f:Lio/branch/search/t2;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    invoke-virtual {v0, p1}, Lio/branch/search/m2;->a(Ljava/lang/String;)Z

    iget-object p0, p0, Lio/branch/search/k2;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/k2$e;

    invoke-interface {v0, p1}, Lio/branch/search/k2$e;->b(Ljava/lang/String;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    iget-object p0, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    invoke-virtual {p0, p1}, Lio/branch/search/m2;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Le4/a;)V
    .registers 5
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Le4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/k2;->a:Lio/branch/search/q4;

    new-instance v1, Lio/branch/search/k2$c;

    invoke-direct {v1, p0, p1, p2}, Lio/branch/search/k2$c;-><init>(Lio/branch/search/k2;Lorg/json/JSONObject;Le4/a;)V

    invoke-virtual {v0, v1}, Lio/branch/search/q4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lio/branch/search/p0;)Ljava/util/List;
    .registers 7
    .param p1  # Lio/branch/search/p0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/p0;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/BranchLocalError$InvalidDB;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    sget-object v1, Lio/branch/search/k2$d;->b:Lio/branch/search/k2$d;

    new-instance v2, Lio/branch/search/x1$e;

    invoke-direct {v2, p1}, Lio/branch/search/x1$e;-><init>(Lio/branch/search/p0;)V

    new-instance v3, Lio/branch/search/f2$d;

    iget-object p0, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    sget-object v4, Lio/branch/search/l;->a:Lio/branch/search/l;

    invoke-direct {v3, p0, p1, v4}, Lio/branch/search/f2$d;-><init>(Lio/branch/search/m;Lio/branch/search/p0;Lio/branch/search/l;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/branch/search/m2;->a(Lio/branch/search/k2$d;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    invoke-virtual {v0}, Lio/branch/search/m2;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    invoke-static {p0}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/m;)V

    :cond_d
    return-void
.end method

.method public c()V
    .registers 1

    iget-object p0, p0, Lio/branch/search/k2;->f:Lio/branch/search/t2;

    invoke-virtual {p0}, Lio/branch/search/t2;->a()V

    return-void
.end method

.method public d()V
    .registers 10

    iget-object v0, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    invoke-static {v1}, Lio/branch/search/g3;->a(Lio/branch/search/m;)Z

    invoke-static {v0}, Lio/branch/search/z1;->a(Landroid/content/Context;)Lio/branch/search/z1;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/z1;->c()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {v0}, Lio/branch/search/z1;->a(Landroid/content/Context;)Lio/branch/search/z1;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/z1;->d()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {v0}, Lio/branch/search/z1;->a(Landroid/content/Context;)Lio/branch/search/z1;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/z1;->f()V

    iget-object v1, p0, Lio/branch/search/k2;->a:Lio/branch/search/q4;

    new-instance v2, Lio/branch/search/k2$a;

    invoke-direct {v2, p0, v0}, Lio/branch/search/k2$a;-><init>(Lio/branch/search/k2;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lio/branch/search/q4;->a(Ljava/lang/Runnable;)V

    goto :goto_3b

    :cond_31
    iget-object v3, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b(Lio/branch/search/m;JJZ)V

    :goto_3b
    iget-object p0, p0, Lio/branch/search/k2;->f:Lio/branch/search/t2;

    invoke-virtual {p0}, Lio/branch/search/t2;->c()V

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    iget-object v1, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    invoke-virtual {v1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/branch/search/b2;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_29

    :catch_10
    move-exception v1

    iget-object p0, p0, Lio/branch/search/k2;->d:Lio/branch/search/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error retrieving cold start bundle, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BRANCH_RawSQLiteManager.loadColdStartBundle"

    invoke-virtual {p0, v2, v1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-object v0
.end method

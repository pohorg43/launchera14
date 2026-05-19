.class public Lio/branch/search/k2$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/k2;->a(Lorg/json/JSONObject;Le4/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;

.field public final synthetic b:Le4/a;

.field public final synthetic c:Lio/branch/search/k2;


# direct methods
.method public constructor <init>(Lio/branch/search/k2;Lorg/json/JSONObject;Le4/a;)V
    .registers 4

    iput-object p1, p0, Lio/branch/search/k2$c;->c:Lio/branch/search/k2;

    iput-object p2, p0, Lio/branch/search/k2$c;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lio/branch/search/k2$c;->b:Le4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lio/branch/search/k2$c;->c:Lio/branch/search/k2;

    invoke-static {v0}, Lio/branch/search/k2;->c(Lio/branch/search/k2;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_9
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v0, p0, Lio/branch/search/k2$c;->c:Lio/branch/search/k2;

    invoke-static {v0}, Lio/branch/search/k2;->b(Lio/branch/search/k2;)Lio/branch/search/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le4/a;

    invoke-interface {v1}, Le4/a;->onBundleUpdateInit()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_a8
    .catchall {:try_start_9 .. :try_end_32} :catchall_b8

    goto :goto_23

    :cond_33
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_35
    iget-object v2, p0, Lio/branch/search/k2$c;->a:Lorg/json/JSONObject;

    if-nez v2, :cond_51

    new-instance v2, Lio/branch/search/a2;

    invoke-direct {v2}, Lio/branch/search/a2;-><init>()V

    iget-object v3, p0, Lio/branch/search/k2$c;->c:Lio/branch/search/k2;

    invoke-static {v3}, Lio/branch/search/k2;->b(Lio/branch/search/k2;)Lio/branch/search/m;

    move-result-object v3

    iget-object v4, p0, Lio/branch/search/k2$c;->c:Lio/branch/search/k2;

    iget-object v4, v4, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    invoke-virtual {v4}, Lio/branch/search/m2;->c()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/branch/search/a2;->a(Lio/branch/search/m;Lorg/json/JSONObject;)Lio/branch/search/a2$c;

    move-result-object v0

    goto :goto_5c

    :cond_51
    new-instance v2, Lio/branch/search/a2;

    invoke-direct {v2}, Lio/branch/search/a2;-><init>()V

    iget-object v3, p0, Lio/branch/search/k2$c;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lio/branch/search/a2;->c(Lorg/json/JSONObject;)Lio/branch/search/a2$c;

    move-result-object v0

    :goto_5c
    iget-object v2, p0, Lio/branch/search/k2$c;->c:Lio/branch/search/k2;

    invoke-virtual {v2, v0}, Lio/branch/search/k2;->a(Lio/branch/search/a2$c;)V

    sget-object v2, Lio/branch/search/a2;->a:Lio/branch/search/a2$c;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_63} :catch_67
    .catchall {:try_start_35 .. :try_end_63} :catchall_b8

    if-eq v0, v2, :cond_6d

    const/4 v1, 0x1

    goto :goto_6d

    :catch_67
    move-exception v2

    :try_start_68
    const-string v3, "BRANCH_RawSQLiteManager.bundleInner"

    invoke-static {v3, v2}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6d
    :goto_6d
    iget-object v2, p0, Lio/branch/search/k2$c;->b:Le4/a;

    invoke-interface {v2, v1}, Le4/a;->onBundleUpdateComplete(Z)V

    if-eqz v0, :cond_86

    if-eqz v1, :cond_86

    iget-object v2, p0, Lio/branch/search/k2$c;->c:Lio/branch/search/k2;

    invoke-static {v2}, Lio/branch/search/k2;->b(Lio/branch/search/k2;)Lio/branch/search/m;

    move-result-object v3

    iget v2, v0, Lio/branch/search/a2$c;->b:I

    int-to-long v4, v2

    iget v0, v0, Lio/branch/search/a2$c;->c:I

    int-to-long v6, v0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b(Lio/branch/search/m;JJZ)V

    :cond_86
    iget-object v0, p0, Lio/branch/search/k2$c;->c:Lio/branch/search/k2;

    invoke-static {v0}, Lio/branch/search/k2;->b(Lio/branch/search/k2;)Lio/branch/search/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_98
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le4/a;

    invoke-interface {v2, v1}, Le4/a;->onBundleUpdateComplete(Z)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_a7} :catch_a8
    .catchall {:try_start_68 .. :try_end_a7} :catchall_b8

    goto :goto_98

    :catch_a8
    move-exception v0

    :try_start_a9
    const-string v1, "BRANCH_RawSQLiteManager.bundle"

    invoke-static {v1, v0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ae
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_b8

    :cond_ae
    iget-object p0, p0, Lio/branch/search/k2$c;->c:Lio/branch/search/k2;

    invoke-static {p0}, Lio/branch/search/k2;->c(Lio/branch/search/k2;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_b8
    move-exception v0

    iget-object p0, p0, Lio/branch/search/k2$c;->c:Lio/branch/search/k2;

    invoke-static {p0}, Lio/branch/search/k2;->c(Lio/branch/search/k2;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.class public Li6/k;
.super Li6/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/k$c;,
        Li6/k$b;
    }
.end annotation


# virtual methods
.method public a()Li6/p;
    .registers 2

    iget-object v0, p0, Li6/l;->b:Li6/p;

    if-eqz v0, :cond_5

    goto :goto_10

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Li6/l;->b:Li6/p;

    if-eqz v0, :cond_c

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    goto :goto_10

    :cond_c
    const/4 v0, 0x0

    :try_start_d
    iput-object v0, p0, Li6/l;->b:Li6/p;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_f} :catch_f
    .catchall {:try_start_d .. :try_end_f} :catchall_13

    :catch_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_13

    :goto_10
    iget-object p0, p0, Li6/l;->b:Li6/p;

    return-object p0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Li6/k;->a()Li6/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    invoke-virtual {p0}, Li6/k;->a()Li6/p;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Li6/k;->a()Li6/p;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

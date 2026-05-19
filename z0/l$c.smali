.class public Lz0/l$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz0/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lb1/a$a;

.field public volatile b:Lb1/a;


# direct methods
.method public constructor <init>(Lb1/a$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/l$c;->a:Lb1/a$a;

    return-void
.end method


# virtual methods
.method public a()Lb1/a;
    .registers 6

    iget-object v0, p0, Lz0/l$c;->b:Lb1/a;

    if-nez v0, :cond_57

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lz0/l$c;->b:Lb1/a;

    if-nez v0, :cond_47

    iget-object v0, p0, Lz0/l$c;->a:Lb1/a$a;

    check-cast v0, Lb1/d;

    iget-object v1, v0, Lb1/d;->b:Lb1/d$a;

    check-cast v1, Lb1/f;

    iget-object v2, v1, Lb1/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    move-object v2, v3

    goto :goto_28

    :cond_1c
    iget-object v4, v1, Lb1/f;->b:Ljava/lang/String;

    if-eqz v4, :cond_28

    new-instance v4, Ljava/io/File;

    iget-object v1, v1, Lb1/f;->b:Ljava/lang/String;

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v4

    :cond_28
    :goto_28
    if-nez v2, :cond_2b

    goto :goto_45

    :cond_2b
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_45

    :cond_3e
    iget-wide v0, v0, Lb1/d;->a:J

    new-instance v3, Lb1/e;

    invoke-direct {v3, v2, v0, v1}, Lb1/e;-><init>(Ljava/io/File;J)V

    :cond_45
    :goto_45
    iput-object v3, p0, Lz0/l$c;->b:Lb1/a;

    :cond_47
    iget-object v0, p0, Lz0/l$c;->b:Lb1/a;

    if-nez v0, :cond_52

    new-instance v0, Lb1/b;

    invoke-direct {v0}, Lb1/b;-><init>()V

    iput-object v0, p0, Lz0/l$c;->b:Lb1/a;

    :cond_52
    monitor-exit p0

    goto :goto_57

    :catchall_54
    move-exception v0

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_54

    throw v0

    :cond_57
    :goto_57
    iget-object p0, p0, Lz0/l$c;->b:Lb1/a;

    return-object p0
.end method

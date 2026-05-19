.class public Lc9/b;
.super Lb9/b;
.source ""


# static fields
.field public static a:Lc9/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb9/b;-><init>()V

    return-void
.end method

.method public static a()Lc9/b;
    .registers 2

    sget-object v0, Lc9/b;->a:Lc9/b;

    if-nez v0, :cond_17

    const-class v0, Lc9/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lc9/b;->a:Lc9/b;

    if-nez v1, :cond_12

    new-instance v1, Lc9/b;

    invoke-direct {v1}, Lc9/b;-><init>()V

    sput-object v1, Lc9/b;->a:Lc9/b;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lc9/b;->a:Lc9/b;

    return-object v0
.end method


# virtual methods
.method public s_a(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object p0, p0, Lb9/b;->s_b:Ljava/lang/String;

    const-string v0, "OP_APP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lc9/c$b;->a:Lc9/c;

    invoke-virtual {p0, p1, p2, p3}, Lb9/c;->s_a(Landroid/content/Context;Ljava/util/List;Z)V

    goto :goto_15

    :cond_10
    sget-object p0, Lc9/g$b;->a:Lc9/g;

    invoke-virtual {p0, p1, p2, p3}, Lb9/c;->s_a(Landroid/content/Context;Ljava/util/List;Z)V

    :goto_15
    return-void
.end method

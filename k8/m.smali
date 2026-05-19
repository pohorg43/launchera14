.class public Lk8/m;
.super Lf8/b;
.source ""


# instance fields
.field public final synthetic b:Lk8/q;

.field public final synthetic c:Lk8/g$g;


# direct methods
.method public varargs constructor <init>(Lk8/g$g;Ljava/lang/String;[Ljava/lang/Object;Lk8/q;)V
    .registers 5

    iput-object p1, p0, Lk8/m;->c:Lk8/g$g;

    iput-object p4, p0, Lk8/m;->b:Lk8/q;

    invoke-direct {p0, p2, p3}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lk8/m;->c:Lk8/g$g;

    iget-object v0, v0, Lk8/g$g;->c:Lk8/g;

    iget-object v0, v0, Lk8/g;->b:Lk8/g$e;

    iget-object v1, p0, Lk8/m;->b:Lk8/q;

    invoke-virtual {v0, v1}, Lk8/g$e;->b(Lk8/q;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_2d

    :catch_c
    move-exception v0

    sget-object v1, Ll8/g;->a:Ll8/g;

    const/4 v2, 0x4

    const-string v3, "Http2Connection.Listener failure for "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lk8/m;->c:Lk8/g$g;

    iget-object v4, v4, Lk8/g$g;->c:Lk8/g;

    iget-object v4, v4, Lk8/g;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ll8/g;->m(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_26
    iget-object p0, p0, Lk8/m;->b:Lk8/q;

    sget-object v0, Lk8/b;->c:Lk8/b;

    invoke-virtual {p0, v0}, Lk8/q;->c(Lk8/b;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_2d

    :catch_2d
    :goto_2d
    return-void
.end method

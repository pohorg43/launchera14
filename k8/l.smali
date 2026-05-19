.class public Lk8/l;
.super Lf8/b;
.source ""


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lk8/g;


# direct methods
.method public varargs constructor <init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;ILk8/b;)V
    .registers 6

    iput-object p1, p0, Lk8/l;->c:Lk8/g;

    iput p4, p0, Lk8/l;->b:I

    invoke-direct {p0, p2, p3}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lk8/l;->c:Lk8/g;

    iget-object v0, v0, Lk8/g;->j:Lk8/t;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lk8/l;->c:Lk8/g;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lk8/l;->c:Lk8/g;

    iget-object v1, v1, Lk8/g;->x:Ljava/util/Set;

    iget p0, p0, Lk8/l;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw p0
.end method
